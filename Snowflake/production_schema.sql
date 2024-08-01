-- Create a database
CREATE DATABASE IF NOT EXISTS uber_data;

-- Use the database
USE DATABASE uber_data;

-- Create a schema
CREATE SCHEMA IF NOT EXISTS production;

-- Use the schema
USE SCHEMA production;

-- Create the fact table for Uber trip data
CREATE TABLE IF NOT EXISTS uber_fact_trips (
    trip_id STRING PRIMARY KEY,
    VendorID INT,
    datetime_id STRING,
    passenger_count_id INT,
    trip_distance_id STRING,
    rate_code_id STRING,
    store_and_fwd_flag STRING,
    pickup_location_id STRING,
    dropoff_location_id STRING,
    payment_type_id STRING,
    fare_amount FLOAT,
    extra FLOAT,
    mta_tax FLOAT,
    tip_amount FLOAT,
    tolls_amount FLOAT,
    improvement_surcharge FLOAT,
    total_amount FLOAT
);

-- Create dimension tables (examples)

-- Datetime dimension
CREATE TABLE IF NOT EXISTS dim_datetime (
    datetime_id STRING PRIMARY KEY,
    tpep_pickup_datetime DATE,
    pick_hour INT,
    pick_day INT,
    pick_month INT,
    pick_year INT,
    pick_weekday INT,
    tpep_dropoff_datetime DATE,
    drop_hour INT,
    drop_day INT,
    drop_month INT,
    drop_year INT,
    drop_weekday INT,
);

-- Location dimension
CREATE TABLE IF NOT EXISTS dim_pickup_location (
    pickup_location_id STRING PRIMARY KEY,
    pickup_latitude FLOAT,
    pickup_longitude FLOAT
);

CREATE TABLE IF NOT EXISTS dim_dropoff_location (
    dropoff_location_id STRING PRIMARY KEY,
    dropoff_latitude FLOAT,
    dropoff_longitude FLOAT
);

-- Passenger count dimension
CREATE TABLE IF NOT EXISTS dim_passenger_count (
    passenger_count_id INT PRIMARY KEY,
    passenger_count INT
);

-- Trip distance dimension
CREATE TABLE IF NOT EXISTS dim_trip_distance (
    trip_distance_id STRING PRIMARY KEY,
    trip_distance FLOAT
);

-- Rate code dimension
CREATE TABLE IF NOT EXISTS dim_rate_code (
    rate_code_id STRING PRIMARY KEY,
    RatecodeID INT,
    rate_code_name STRING
);

-- Payment type dimension
CREATE TABLE IF NOT EXISTS dim_payment_type (
    payment_type_id STRING PRIMARY KEY,
    payment_type STRING,
    payment_type_name STRING
);
