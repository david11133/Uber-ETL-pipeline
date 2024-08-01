import snowflake.connector
import pandas as pd

# Load cleaned data
df = pd.read_csv('../data/processed/cleaned_uber_data.csv')

# Snowflake connection details
SNOWFLAKE_USER = 'your_username'
SNOWFLAKE_PASSWORD = 'your_password'
SNOWFLAKE_ACCOUNT = 'your_account_identifier'
SNOWFLAKE_DATABASE = 'uber_data'
SNOWFLAKE_SCHEMA = 'production'
SNOWFLAKE_WAREHOUSE = 'your_warehouse'

# Establish connection to Snowflake
conn = snowflake.connector.connect(
    user=SNOWFLAKE_USER,
    password=SNOWFLAKE_PASSWORD,
    account=SNOWFLAKE_ACCOUNT,
    warehouse=SNOWFLAKE_WAREHOUSE,
    database=SNOWFLAKE_DATABASE,
    schema=SNOWFLAKE_SCHEMA
)

# Create cursor object
cur = conn.cursor()

# Load data into fact table
fact_data = [tuple(x) for x in df.to_records(index=False)]
fact_insert_query = f"""
INSERT INTO uber_fact_trips (
    trip_id, VendorID, datetime_id, passenger_count_id, trip_distance_id,
    rate_code_id, store_and_fwd_flag, pickup_location_id, dropoff_location_id,
    payment_type_id, fare_amount, extra, mta_tax, tip_amount, tolls_amount,
    improvement_surcharge, total_amount
) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

# Execute the insert query in batches
batch_size = 1000
for i in range(0, len(fact_data), batch_size):
    cur.executemany(fact_insert_query, fact_data[i:i+batch_size])

# Commit the transaction
conn.commit()

# Close the connection
cur.close()
conn.close()
