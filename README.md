# Uber Data Analytics

## Introduction

This repository contains code and documentation for building a robust data engineering pipeline to analyze Uber data. The pipeline leverages various tools and technologies for data storage, processing, and visualization, including Google Cloud Platform (GCP) services, Mage-AI, BigQuery, and Looker.

## Overview
Uber generates vast amounts of data from various sources including ride requests, driver activities, and user interactions. Analyzing this data provides valuable insights for optimizing operations, improving user experience, and making data-driven decisions.

## Pipeline Objectives
- Ingest Raw Data: Load raw Uber data from CSV files.
- Data Modeling: Create a data model schema tailored to business needs.
- ETL Process: Extract, transform, and load data into PostgreSQL using Mage-AI.
- Data Storage: Store transformed data in Google Cloud Storage or Snowflake.
- Data Analysis: Apply SQL queries for analysis (see analytics_query.sql).
- Visualization: Create meaningful visualizations and dashboards using Looker Studio or Power BI.
- Insights: Enable stakeholders to explore and gain insights from the data.


## Technologies Used
- Programming Language: Python
- Libraries: Pandas, Requests, OS
- Database: PostgreSQL
- Data Warehouse: Snowflake or BigQuery
- Visualization Tools: Looker Studio or Power BI
- Data Pipeline Tool: Mage Data Pipeline Tool

## Dashboard Access
You can access the dashboard through the following link: [Looker Studio Dashboard](https://lookerstudio.google.com/reporting/b7ed88eb-960f-4d63-a7b5-7aec3a9ebb5d)

### Contribute to this Open Source Project
You can contribute to this open-source project on GitHub: [mage-ai/mage-ai](https://github.com/mage-ai/mage-ai)

## Dataset Used

### TLC Trip Record Data
The dataset includes yellow and green taxi trip records containing fields such as pick-up and drop-off dates/times, locations, distances, fares, rate types, payment types, and driver-reported passenger counts.

- **Dataset Used in the Project Video**: [uber_data.csv](https://github.com/darshilparmar/uber-etl-pipeline-data-engineering-project/blob/main/data/uber_data.csv)

### More Information about the Dataset
- **Website**: [NYC TLC Trip Record Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
- **Data Dictionary**: [NYC TLC Trip Record Data Dictionary](https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf)

