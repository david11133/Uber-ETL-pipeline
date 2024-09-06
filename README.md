# Uber Data Engineering Pipeline

## Project Overview

The Uber Data Engineering Pipeline is designed to analyze Uber data by utilizing Google Cloud Platform (GCP) services including Mage-AI, Snowflake, and Looker. This pipeline covers the entire process from data ingestion to visualization, showcasing a full data engineering workflow.
<!-- ![Pipeline Overview](path/to/your/pipeline_overview_image.png)  <!-- Replace with the actual path to your image -->

<img src="data architecture.png">

Uber generates vast amounts of data from various sources such as ride requests, driver activities, and user interactions. Analyzing this data helps in optimizing operations, improving user experience, and making data-driven decisions.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Data Sources](#data-sources)
- [Installation](#installation)
- [Usage](#usage)
- [Data Schema](#data-schema)
- [Visualizations](#visualizations)
- [Testing](#testing)
- [Contributing](#contributing)
<!-- [License](#license) -->

## Features

- **Ingest Raw Data:** Load raw Uber data from CSV files.
- **Clean and Handle Data:** Process and clean the data for analysis.
- **Create Data Model Schema:** Develop a data model schema tailored to business needs.
- **ETL Pipeline:** Extract, Transform, and Load (ETL) data into PostgreSQL using Mage-AI.
- **Store Transformed Data:** Load transformed data into Snowflake.
- **Data Analysis:** Apply SQL queries to analyze the data.
- **Visualization and Dashboards:** Create interactive visualizations and dashboards using Looker.
- **Stakeholder Insights:** Provide insights for stakeholders to explore and understand the data.

## Technologies Used

- **Programming Language:** Python
- **Libraries:** Pandas, Requests, OS
- **Database:** PostgreSQL
- **Data Warehouse:** Snowflake
- **Visualization:** Looker Studio
- **Modern Data Pipeline Tool:** Mage-AI

## Data Sources

- **Raw Data:** Here is the dataset used - https://github.com/david11133/Uber-ETL-pipeline/blob/main/data/raw/uber_data.csv

More info about dataset can be found here:
1. Website - https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
2. Data Dictionary - https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf

## Installation

To set up and run this project locally, follow these steps:

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/yourusername/uber-data-engineering-pipeline.git
    cd uber-data-engineering-pipeline
    ```

2. **Install Python Packages:**

    ```bash
    pip install pandas requests snowflake-connector-python mage-ai
    ```

3. **Configure Snowflake and Mage-AI:**

    - Update the connection details and configurations in the provided scripts.

4. **Run the ETL Pipeline:**

    - Use Mage-AI to run the ETL pipeline and load data into PostgreSQL.

5. **Load Data into Snowflake:**

    - Execute the Python script to transfer the transformed data to Snowflake.

6. **Run SQL Queries:**

    - Apply SQL queries to analyze the data stored in Snowflake.

7. **View Visualizations:**

    - Access and explore the Looker dashboard using the provided link.

## Data Schema

<br>
<img src="Schema/data_model.jpeg">

- **PostgreSQL Schema:** [Describe the schema or link to schema files.]
- **Snowflake Schema:** [Describe the schema or link to schema files.]

## Visualizations

<img src="Uber Dashboard.png">

- **Dashboard:** You can access the dashboard through the following link: [Uber Data Dashboard](https://lookerstudio.google.com/reporting/b7ed88eb-960f-4d63-a7b5-7aec3a9ebb5d)

## Testing

- **Unit Tests:** Run unit tests using:

    ```bash
    pytest
    ```

- **Data Quality Checks:** Automated data quality checks are implemented to ensure data integrity.

## Contributing

Contributions are welcome! Please follow the steps below to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature/your-feature`).
6. Create a new Pull Request.

<!--
## License

This project is licensed under the [MIT License](LICENSE).
-->
