import psycopg2
from mage_ai.data_preparation.repo_manager import get_repo_path
from mage_ai.io.config import ConfigFileLoader
from pandas import DataFrame
from os import path


# Function to export data to PostgreSQL
def export_data_to_postgres(data, **kwargs) -> None:
    """
    Template for exporting data to a PostgreSQL database.
    """
    # Connect to the PostgreSQL database
    conn = psycopg2.connect("host=127.0.0.1 dbname=uberDB user=postgres password=**********")

    # Create a cursor object
    cur = conn.cursor()

    # Loop through the data and export each DataFrame to PostgreSQL
    for key, value in data.items():
        table_name = key.lower()  # Table name from the dictionary key
        df = DataFrame(value)

        # Export DataFrame to PostgreSQL
        df.to_sql(table_name, conn, if_exists='replace', index=False)

    # Commit and close the connection
    conn.commit()
    conn.close()


# If you have additional configurations, you can load them from a YAML file
# config_path = path.join(get_repo_path(), 'io_config.yaml')
# config_profile = 'default'
# You may need to customize the loading of config settings based on your needs

# Export data to PostgreSQL
# export_data_to_postgres(data)

# If you want to use this function as a data exporter in your pipeline
# you can uncomment the data_exporter decorator and other relevant code

# @data_exporter
# def export_data_to_postgres(data, **kwargs) -> None:
#     """
#     Template for exporting data to a PostgreSQL database.
#     """
#     ...
