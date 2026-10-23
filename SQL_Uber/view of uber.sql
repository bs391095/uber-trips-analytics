select * from 2017_taxi_trips
union 
select* from 2018_taxi_trips;
SELECT payment_type, COUNT(*) AS total_trips
FROM (
    SELECT payment_type FROM `2017_taxi_trips`
    UNION ALL
    SELECT payment_type FROM `2018_taxi_trips`
    UNION ALL
    SELECT payment_type FROM `2019_taxi_trips`
    UNION ALL
    SELECT payment_type FROM `2020_taxi_trips`
) AS all_trips
GROUP BY payment_type
ORDER BY payment_type;
USE taxi_trips_db;

SELECT '2017' AS year, COUNT(*) AS imported_rows
FROM `2017_taxi_trips`
UNION ALL
SELECT '2018', COUNT(*)
FROM `2018_taxi_trips`
UNION ALL
SELECT '2019', COUNT(*)
FROM `2019_taxi_trips`
UNION ALL
SELECT '2020', COUNT(*)
FROM `2020_taxi_trips`;
select  distinct payment_type from stg_uber_2017;
USE taxix;

CREATE OR REPLACE VIEW combined_uber_trips AS

SELECT *, 2017 AS trip_year
FROM stg_uber_2017

UNION ALL

SELECT *, 2018 AS trip_year
FROM stg_uber_2018

UNION ALL

SELECT *, 2019 AS trip_year
FROM stg_uber_2019

UNION ALL

SELECT *, 2020 AS trip_year
FROM stg_uber_2020;
DESCRIBE stg_uber_2017;
DESCRIBE stg_uber_2018;
DESCRIBE stg_uber_2019;
DESCRIBE stg_uber_2020;
SELECT
    TABLE_NAME,
    ORDINAL_POSITION,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'taxix'
  AND TABLE_NAME IN (
      'stg_uber_2017',
      'stg_uber_2018',
      'stg_uber_2019',
      'stg_uber_2020'
  )
ORDER BY TABLE_NAME, ORDINAL_POSITION;
USE taxix;

CREATE OR REPLACE VIEW combined_uber_trips AS

SELECT
    VendorID,
    lpep_pickup_datetime,
    lpep_dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID,
    PULocationID,
    DOLocationID,
    passenger_count,
    trip_distance,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    payment_type,
    trip_type,
    NULL AS congestion_surcharge,
    2017 AS trip_year
FROM stg_uber_2017

UNION ALL

SELECT
    VendorID,
    lpep_pickup_datetime,
    lpep_dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID,
    PULocationID,
    DOLocationID,
    passenger_count,
    trip_distance,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    payment_type,
    trip_type,
    NULL AS congestion_surcharge,
    2018 AS trip_year
FROM stg_uber_2018

UNION ALL

SELECT
    VendorID,
    lpep_pickup_datetime,
    lpep_dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID,
    PULocationID,
    DOLocationID,
    passenger_count,
    trip_distance,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    payment_type,
    trip_type,
    congestion_surcharge,
    2019 AS trip_year
FROM stg_uber_2019

UNION ALL

SELECT
    VendorID,
    lpep_pickup_datetime,
    lpep_dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID,
    PULocationID,
    DOLocationID,
    passenger_count,
    trip_distance,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    payment_type,
    trip_type,
    congestion_surcharge,
    2020 AS trip_year
FROM stg_uber_2020;
#1. uber 

CREATE OR REPLACE VIEW vw_yearly_trip_trends AS
WITH yearly_trips AS (
    SELECT 2017 AS trip_year, COUNT(*) AS total_trips
    FROM stg_uber_2017
    UNION ALL
    SELECT 2018, COUNT(*) FROM stg_uber_2018
    UNION ALL
    SELECT 2019, COUNT(*) FROM stg_uber_2019
    UNION ALL
    SELECT 2020, COUNT(*) FROM stg_uber_2020
),
comparison AS (
    SELECT
        trip_year,
        total_trips,
        LAG(total_trips) OVER (ORDER BY trip_year)
            AS previous_year_trips
    FROM yearly_trips
)
SELECT
    trip_year,
    total_trips,
    previous_year_trips,
    ROUND(
        (total_trips - previous_year_trips) * 100.0 /
        NULLIF(previous_year_trips, 0), 2
    ) AS yoy_percentage_change
FROM comparison;
select* from vw_yearly_trip_trends;
#2. uber

CREATE OR REPLACE VIEW vw_monthly_revenue AS
SELECT
    YEAR(lpep_pickup_datetime) AS trip_year,
    MONTH(lpep_pickup_datetime) AS trip_month,
    MONTHNAME(lpep_pickup_datetime) AS month_name,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2)
        AS average_revenue_per_trip
FROM (
    SELECT lpep_pickup_datetime, total_amount
    FROM stg_uber_2017
    UNION ALL
    SELECT lpep_pickup_datetime, total_amount
    FROM stg_uber_2018
    UNION ALL
    SELECT lpep_pickup_datetime, total_amount
    FROM stg_uber_2019
    UNION ALL
    SELECT lpep_pickup_datetime, total_amount
    FROM stg_uber_2020
) AS all_trips
WHERE lpep_pickup_datetime IS NOT NULL
  AND YEAR(lpep_pickup_datetime) BETWEEN 2017 AND 2020
  AND MONTH(lpep_pickup_datetime) BETWEEN 1 AND 12
GROUP BY
    YEAR(lpep_pickup_datetime),
    MONTH(lpep_pickup_datetime),
    MONTHNAME(lpep_pickup_datetime);
    #3. uber 
    
CREATE OR REPLACE VIEW vw_peak_day_time AS
WITH all_trips AS (
    SELECT lpep_pickup_datetime AS pickup_date
    FROM stg_uber_2017
    UNION ALL
    SELECT lpep_pickup_datetime FROM stg_uber_2018
    UNION ALL
    SELECT lpep_pickup_datetime FROM stg_uber_2019
    UNION ALL
    SELECT lpep_pickup_datetime FROM stg_uber_2020
),
daily_hourly AS (
    SELECT
        DATE(pickup_date) AS trip_date,
        DAYOFWEEK(pickup_date) AS day_num,
        HOUR(pickup_date) AS trip_hour,
        COUNT(*) AS total_trips
    FROM all_trips
    WHERE pickup_date IS NOT NULL
      AND YEAR(pickup_date) BETWEEN 2017 AND 2020
    GROUP BY
        DATE(pickup_date),
        DAYOFWEEK(pickup_date),
        HOUR(pickup_date)
)
SELECT
    day_num,
    CASE day_num
        WHEN 1 THEN 'Sunday'
        WHEN 2 THEN 'Monday'
        WHEN 3 THEN 'Tuesday'
        WHEN 4 THEN 'Wednesday'
        WHEN 5 THEN 'Thursday'
        WHEN 6 THEN 'Friday'
        WHEN 7 THEN 'Saturday'
    END AS day_of_week,
    trip_hour,
    CONCAT(
        LPAD(trip_hour, 2, '0'), ':00 - ',
        LPAD((trip_hour + 1) % 24, 2, '0'), ':00'
    ) AS time_slot,
    ROUND(AVG(total_trips), 2) AS avg_trips
FROM daily_hourly
GROUP BY day_num, trip_hour;
#4. uber 

CREATE OR REPLACE VIEW vw_borough_trip_distribution AS
SELECT
    z.Borough AS pickup_borough,
    COUNT(*) AS total_trips,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS trip_percentage
FROM (
    SELECT PULocationID FROM stg_uber_2017
    UNION ALL
    SELECT PULocationID FROM stg_uber_2018
    UNION ALL
    SELECT PULocationID FROM stg_uber_2019
    UNION ALL
    SELECT PULocationID FROM stg_uber_2020
) AS t
INNER JOIN taxi_zones AS z
    ON t.PULocationID = z.LocationID
GROUP BY z.Borough;
# 5 uber 

CREATE OR REPLACE VIEW vw_top_routes AS
SELECT
    pu.Zone AS pickup_zone,
    doff.Zone AS dropoff_zone,
    COUNT(*) AS total_trips
FROM (
    SELECT PULocationID, DOLocationID FROM stg_uber_2017
    UNION ALL
    SELECT PULocationID, DOLocationID FROM stg_uber_2018
    UNION ALL
    SELECT PULocationID, DOLocationID FROM stg_uber_2019
    UNION ALL
    SELECT PULocationID, DOLocationID FROM stg_uber_2020
) AS t
INNER JOIN taxi_zones AS pu
    ON t.PULocationID = pu.LocationID
INNER JOIN taxi_zones AS doff
    ON t.DOLocationID = doff.LocationID
GROUP BY pu.Zone, doff.Zone
ORDER BY total_trips DESC
LIMIT 10;
#6.  uber 
CREATE OR REPLACE VIEW vw_passenger_load AS
SELECT
    z.Borough AS pickup_borough,
    ROUND(AVG(t.passenger_count), 2) AS avg_passengers,
    COUNT(*) AS total_trips
FROM (
    SELECT passenger_count, PULocationID
    FROM stg_uber_2017
    UNION ALL
    SELECT passenger_count, PULocationID FROM stg_uber_2018
    UNION ALL
    SELECT passenger_count, PULocationID FROM stg_uber_2019
    UNION ALL
    SELECT passenger_count, PULocationID FROM stg_uber_2020
) AS t
INNER JOIN taxi_zones AS z
    ON t.PULocationID = z.LocationID
WHERE t.passenger_count IS NOT NULL
GROUP BY z.Borough;
#7. uber 

CREATE OR REPLACE VIEW vw_trip_distance_borough AS
SELECT
    zp.Borough AS pickup_borough,
    zd.Borough AS dropoff_borough,
    COUNT(*) AS total_trips,
    ROUND(AVG(t.trip_distance), 2) AS avg_distance
FROM (
    SELECT PULocationID, DOLocationID, trip_distance
    FROM stg_uber_2017
    UNION ALL
    SELECT PULocationID, DOLocationID, trip_distance
    FROM stg_uber_2018
    UNION ALL
    SELECT PULocationID, DOLocationID, trip_distance
    FROM stg_uber_2019
    UNION ALL
    SELECT PULocationID, DOLocationID, trip_distance
    FROM stg_uber_2020
) AS t
INNER JOIN taxi_zones AS zp
    ON t.PULocationID = zp.LocationID
INNER JOIN taxi_zones AS zd
    ON t.DOLocationID = zd.LocationID
WHERE t.trip_distance IS NOT NULL
GROUP BY zp.Borough, zd.Borough;
#8. 
CREATE OR REPLACE VIEW vw_payment_method AS
SELECT
    payment_type,
    COUNT(*) AS total_trips,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage_share,
    ROUND(AVG(fare_amount), 2) AS avg_fare_amount
FROM (
    SELECT payment_type, fare_amount FROM stg_uber_2017
    UNION ALL
    SELECT payment_type, fare_amount FROM stg_uber_2018
    UNION ALL
    SELECT payment_type, fare_amount FROM stg_uber_2019
    UNION ALL
    SELECT payment_type, fare_amount FROM stg_uber_2020
) AS t
GROUP BY payment_type;
#9. uber 

CREATE OR REPLACE VIEW vw_high_tip_routes AS
SELECT
    zp.Zone AS pickup_zone,
    zd.Zone AS dropoff_zone,
    COUNT(*) AS total_trips,
    ROUND(AVG(t.tip_amount), 2) AS avg_tip
FROM (
    SELECT PULocationID, DOLocationID, tip_amount
    FROM stg_uber_2017
    UNION ALL
    SELECT PULocationID, DOLocationID, tip_amount
    FROM stg_uber_2018
    UNION ALL
    SELECT PULocationID, DOLocationID, tip_amount
    FROM stg_uber_2019
    UNION ALL
    SELECT PULocationID, DOLocationID, tip_amount
    FROM stg_uber_2020
) AS t
INNER JOIN taxi_zones AS zp
    ON t.PULocationID = zp.LocationID
INNER JOIN taxi_zones AS zd
    ON t.DOLocationID = zd.LocationID
WHERE t.tip_amount IS NOT NULL
GROUP BY zp.Zone, zd.Zone
HAVING COUNT(*) >= 10
ORDER BY avg_tip DESC
LIMIT 5;
#10. uber 

CREATE OR REPLACE VIEW vw_revenue_borough_pairs AS
SELECT
    zp.Borough AS pickup_borough,
    zd.Borough AS dropoff_borough,
    COUNT(*) AS total_trips,
    ROUND(SUM(t.total_amount), 2) AS total_revenue
FROM (
    SELECT PULocationID, DOLocationID, total_amount
    FROM stg_uber_2017
    UNION ALL
    SELECT PULocationID, DOLocationID, total_amount
    FROM stg_uber_2018
    UNION ALL
    SELECT PULocationID, DOLocationID, total_amount
    FROM stg_uber_2019
    UNION ALL
    SELECT PULocationID, DOLocationID, total_amount
    FROM stg_uber_2020
) AS t
INNER JOIN taxi_zones AS zp
    ON t.PULocationID = zp.LocationID
INNER JOIN taxi_zones AS zd
    ON t.DOLocationID = zd.LocationID
WHERE t.total_amount IS NOT NULL
GROUP BY zp.Borough, zd.Borough;






