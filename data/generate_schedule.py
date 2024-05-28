import time
from datetime import datetime, timedelta, timezone
import pandas as pd

# Load the CSV file
schedule_data = pd.read_csv('data/exactly_schedule5.csv')


def extract_dates():
    return schedule_data.iloc[5:, 1].tolist()


def extract_recipient_addresses():
    return schedule_data.iloc[0, 2:len(schedule_data.columns)].tolist()


def extract_cliff_dates():
    return schedule_data.iloc[1, 2:len(schedule_data.columns)].tolist()


def convert_cliff_dates_to_timestamps():
    cliff_dates = extract_cliff_dates()
    cliff_timestamps = [int(datetime.strptime(
        date, "%m/%d/%Y").replace(tzinfo=timezone.utc).timestamp()) for date in cliff_dates]
    cliff_dates_converted = convert_date_format(cliff_dates)

    dates_and_timestamps = []
    for i in range(len(cliff_timestamps)):
        dates_and_timestamps.append({
            'date': cliff_dates_converted[i],
            'timestamp': cliff_timestamps[i]
        })

    return dates_and_timestamps


def convert_date_format(dates):
    converted_dates = []
    for date in dates:
        dt = datetime.strptime(date, "%m/%d/%Y").replace(tzinfo=timezone.utc)
        converted_date = dt.strftime("%B %d, %Y")
        converted_dates.append(converted_date)

    return converted_dates


def extract_total_amounts():
    amounts = schedule_data.iloc[3, 2:].map(lambda x: int(x.replace(',', ''))
                                              if isinstance(x, str) and x.replace(',', '').strip() != ''
                                              else None)
    return amounts.tolist()


def extract_unlock_amounts():
    amounts = schedule_data.iloc[5:, 2:].map(lambda x: int(x.replace(',', ''))
                                                 if isinstance(x, str) and x.replace(',', '').strip() != ''
                                                 else None)
    return amounts.values.tolist()


def convert_dates_to_milestones():
    milestone_dates = extract_dates()
    one_day = 86400
    return [int(datetime.strptime(date, "%B %d, %Y").replace(tzinfo=timezone.utc).timestamp()) + one_day for date in milestone_dates]


def convert_dates_to_milestones_dates():
    milestone_dates = extract_dates()
    one_day = timedelta(days=1)

    new_dates = [(datetime.strptime(date, "%B %d, %Y") +
                  one_day).strftime("%B %d, %Y") for date in milestone_dates]
    return new_dates


def calculate_aggregate_amount():
    total_amounts = extract_total_amounts()
    return sum(total_amounts)


def get_user_segments(index):
    dates = convert_dates_to_milestones_dates()
    milestones = convert_dates_to_milestones()
    unlock_amounts = extract_unlock_amounts()
    user_unlock_amounts = [row[index] for row in unlock_amounts if row]

    user_segments = []
    for i in range(len(milestones)):
        if user_unlock_amounts[i] > 0:
            user_segments.append({
                'milestone': milestones[i],
                'amount': user_unlock_amounts[i],
                'date': dates[i]
            })

    updated_segments = convert_to_segment_amounts(user_segments)
    return updated_segments


def convert_to_segment_amounts(segments):
    if len(segments) < 2:
        return segments

    updated_segments = [segments[0]]

    for i in range(1, len(segments)):
        diff_amount = segments[i]['amount'] - segments[i - 1]['amount']
        updated_segment = {
            'milestone': segments[i]['milestone'],
            'amount': diff_amount,
            'date': segments[i]['date']
        }
        updated_segments.append(updated_segment)

    return updated_segments


def get_segments_length(index):
    segments = get_user_segments(index)
    return len(segments)


def print_segment_functions():
    for i in range(len(schedule_data.columns) - 2):
        user_id = i + 1
        segments_length = get_segments_length(i)
        print(
            f"function getSegmentsForUser{user_id}() public returns (LockupDynamic.Segment[] memory) {{")
        print(
            f"    LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[]({segments_length});")
        print_segments(i)
        print("    return segments; \n}")


def print_segments(index):
    segments = get_user_segments(index)
    for i, segment in enumerate(segments):
        formatted_amount = format_number(segment['amount'])
        milestone = segment['milestone']
        date = segment['date']
        print(
            f"    segments[{i}] = getSegment({{ amount: {formatted_amount}e18, milestone: {milestone} }}); // {date} at 00:00:00 UTC")


def print_user_functions():
    addresses = extract_recipient_addresses()
    cliff_dates_and_timestamps = convert_cliff_dates_to_timestamps()
    total_amounts = extract_total_amounts()

    for i in range(len(schedule_data.columns) - 2):
        user_id = i + 1
        address = addresses[i]
        start_time = cliff_dates_and_timestamps[i]['timestamp']
        start_time_date = cliff_dates_and_timestamps[i]['date']
        total_amount = format_number(total_amounts[i])
        print(f"""function getParamsForUser{user_id}() public csv("{user_id}-{address}") returns (LockupDynamic.CreateWithMilestones memory) {{
            return LockupDynamic.CreateWithMilestones({{
                asset: EXA,
                broker: broker,
                cancelable: true,
                recipient: {address},
                segments: getSegmentsForUser{user_id}(),
                sender: EXACTLY_PROTOCOL_OWNER,
                startTime: {start_time}, // {start_time_date} at 00:00:00 UTC
                totalAmount: {total_amount}e18
            }});
        }}""")


def format_number(number):
    return int(number) if number % 1 == 0 else float(number)


# Print the functions
print_user_functions()
print_segment_functions()
