# Uber Data Engineering Pipeline

## Project Overview

The Uber Data Engineering Pipeline is designed to analyze Uber data by utilizing Google Cloud Platform (GCP) services including Mage-AI, Snowflake, and Looker. This pipeline covers the entire process from data ingestion to visualization, showcasing a full data engineering workflow.
<!-- ![Pipeline Overview](path/to/your/pipeline_overview_image.png)  <!-- Replace with the actual path to your image -->

![Data Architecture]("data architecture.png")
<img src="data architecture.png">

Uber generates vast amounts of data from various sources, including ride requests, driver activities, and user interactions. Analyzing this data can provide valuable insights for optimizing operations, improving user experience, and making data-driven decisions.

The data engineering pipeline outlined in this repository aims to:

- **Ingest Raw Data**: Load raw Uber data from a CSV file.
- **Clean and Handle Data**: Process and clean the data to prepare it for analysis.
- **Create Data Model Schema**: Develop a data model schema tailored to business needs.
- **ETL Pipeline**: Extract, Transform, and Load (ETL) data into PostgreSQL using Mage-AI.
- **Store Transformed Data**: Load the transformed data into Snowflake.
- **Data Analysis**: Apply SQL queries to analyze the data.
- **Visualization and Dashboards**: Create meaningful visualizations and dashboards using Looker.
- **Stakeholder Insights**: Enable stakeholders to explore and gain insights from the data.

## Technology Used

- **Programming Language**: Python
- **Libraries**: Pandas, Requests, OS
- **Database**: PostgreSQL
- **Data Warehouse**: Snowflake
- **Visualization**: Looker Studio
- **Modern Data Pipeline Tool**: Mage Data Pipeline Tool

## Database Schema
<br>
<img src="Schema/data_model.jpeg">

## Access the Dashboard

<img src="Uber Dashboard.png">

You can access the dashboard through the following link: [Uber Data Dashboard](https://lookerstudio.google.com/reporting/b7ed88eb-960f-4d63-a7b5-7aec3a9ebb5d)

## Getting Started

### Prerequisites

- Ensure you have the necessary permissions and accounts for GCP, Snowflake, and Looker.
- Install the required Python libraries.

### Installation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/yourusername/uber-data-engineering-pipeline.git
    ```

2. **Install Python Packages:**

    ```bash
    pip install pandas requests snowflake-connector-python mage-ai
    ```

3. **Configure Snowflake and Mage-AI:**

    - Update connection details and configurations in the provided scripts.

4. **Run the ETL Pipeline:**

    - Use the Mage-AI tool to run the ETL pipeline and load data into PostgreSQL.

5. **Load Data into Snowflake:**

    - Execute the Python script to transfer transformed data to Snowflake.

6. **Run SQL Queries:**

    - Apply SQL queries to analyze data stored in Snowflake.

7. **View Visualizations:**

    - Access and explore the Looker dashboard using the provided link.

## Contributing

Feel free to fork the repository, make changes, and submit pull requests. If you have any issues or suggestions, please open an issue in the GitHub repository.
