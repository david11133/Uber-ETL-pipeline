-- Use the production schema
USE DATABASE uber_data;
USE SCHEMA production;

-- Total number of trips
SELECT COUNT(*) AS total_trips FROM uber_fact_trips;

-- Average trip distance
SELECT AVG(td.trip_distance) AS average_trip_distance
FROM uber_fact_trips f
JOIN dim_trip_distance td ON f.trip_distance_id = td.trip_distance_id;

-- Average fare amount
SELECT AVG(f.fare_amount) AS average_fare_amount FROM uber_fact_trips f;

-- Total revenue by payment type
SELECT pt.payment_type, SUM(f.total_amount) AS total_revenue
FROM uber_fact_trips f
JOIN dim_payment_type pt ON f.payment_type_id = pt.payment_type_id
GROUP BY pt.payment_type;

-- Trips by hour of day
SELECT dd.hour, COUNT(*) AS trip_count
FROM uber_fact_trips f
JOIN dim_datetime dd ON f.datetime_id = dd.datetime_id
GROUP BY dd.hour
ORDER BY dd.hour;

-- Top 10 pickup locations by frequency
SELECT l.borough, l.zone, COUNT(*) AS trip_count
FROM uber_fact_trips f
JOIN dim_location l ON f.pickup_location_id = l.location_id
GROUP BY l.borough, l.zone
ORDER BY trip_count DESC
LIMIT 10;
