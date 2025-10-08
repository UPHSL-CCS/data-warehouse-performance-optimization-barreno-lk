CREATE OR REPLACE TABLE `mid-assignment4.class_dw_lab.trips_clustered`
PARTITION BY DATE(pickup_datetime)
CLUSTER BY payment_type, vendor_id AS
SELECT 
  pickup_datetime,
  passenger_count,
  trip_distance,
  fare_amount,
  payment_type,
  vendor_id
FROM `mid-assignment4.class_dw_lab.trips_partitioned`;