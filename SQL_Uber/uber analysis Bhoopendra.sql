# 1. Yearly Trip Trends: Calculate total trips per year and percentage change year-over-year.
WITH yearly_trips AS (
    SELECT 2017 AS trip_year, COUNT(*) AS total_trips FROM stg_uber_2017
UNION ALL
SELECT 2018 AS trip_year, COUNT(*) AS total_trips FROM stg_uber_2018
UNION ALL
SELECT 2019 AS trip_year, COUNT(*) AS total_trips FROM stg_uber_2019 
    UNION ALL
SELECT 2020 AS trip_year, COUNT(*) AS total_trips FROM stg_uber_2020
),
yearly_comparison AS (
SELECT trip_year,total_trips,LAG(total_trips) OVER (ORDER BY trip_year) AS previous_year_trips FROM yearly_trips
)SELECT trip_year, total_trips, previous_year_trips,ROUND((total_trips - previous_year_trips)* 100.0 / NULLIF(previous_year_trips, 0),2
    ) AS yoy_percentage_change
FROM yearly_comparison
ORDER BY trip_year;
##2.   Monthly Revenue Insights: Find monthly total revenue and average revenue per trip.
WITH all_trips AS (SELECT lpep_pickup_datetime AS pickup_date,
total_amount AS revenue FROM stg_uber_2017
UNION ALL
SELECT lpep_pickup_datetime, total_amount
FROM stg_uber_2018
UNION ALL
SELECT lpep_pickup_datetime, total_amount FROM stg_uber_2019
UNION ALL
SELECT lpep_pickup_datetime, total_amount FROM stg_uber_2020
)SELECT YEAR(pickup_date) AS trip_year,MONTH(pickup_date) AS trip_month,MONTHNAME(pickup_date) AS month_name,
ROUND(SUM(revenue), 2) AS total_revenue, ROUND(AVG(revenue), 2) AS average_revenue_per_trip
FROM all_trips WHERE pickup_date IS NOT NULL AND YEAR(pickup_date) BETWEEN 2017 AND 2020 and MONTH(pickup_date) <> 0
GROUP BY
YEAR(pickup_date), MONTH(pickup_date), MONTHNAME(pickup_date)
ORDER BY trip_year, trip_month;
 # 3. Peak Day & Time Analysis: Identify the day of week and hour of day with the highest average trip volumes.
 WITH all_trips AS (SELECT lpep_pickup_datetime AS pickup_date FROM stg_uber_2017
UNION ALL
SELECT lpep_pickup_datetime FROM stg_uber_2018
UNION ALL
SELECT lpep_pickup_datetime FROM stg_uber_2019
UNION ALL
SELECT lpep_pickup_datetime FROM stg_uber_2020
),daily_hourly_trips AS (
SELECT DATE(pickup_date) AS trip_date, DAYOFWEEK(pickup_date) AS day_num,
HOUR(pickup_date) AS trip_hour,COUNT(*) AS total_trips FROM all_trips
WHERE pickup_date IS NOT NULL AND YEAR(pickup_date) BETWEEN 2017 AND 2020
GROUP BY DATE(pickup_date),DAYOFWEEK(pickup_date),HOUR(pickup_date)
),average_trips AS (SELECT day_num,trip_hour,ROUND(AVG(total_trips), 2) AS avg_trips
FROM daily_hourly_trips GROUP BY day_num, trip_hour
)SELECT CASE day_num WHEN 1 THEN 'Sunday' WHEN 2 THEN 'Monday'WHEN 3 THEN 'Tuesday'
WHEN 4 THEN 'Wednesday'WHEN 5 THEN 'Thursday'WHEN 6 THEN 'Friday'WHEN 7 THEN 'Saturday'END AS day_of_week,
trip_hour,CONCAT(LPAD(trip_hour, 2, '0'),':00 - ',LPAD((trip_hour + 1) % 24, 2, '0'),':00') AS time_slot,avg_trips FROM average_trips
ORDER BY avg_trips DESC LIMIT 10;
# 4. Borough Trip Distribution: Find the percentage of trips starting in each pickup_borough.
with all_trip as (
select PULocationID from stg_uber_2017
union all 
select PULocationID from stg_uber_2018
union all 
select PULocationID from stg_uber_2017
union all 
select PULocationID from stg_uber_2019
union all 
select PULocationID from stg_uber_2020
), Borough_trip as (select z.Borough as pickup_Borough , count(*) as Total_trips from all_trip t join taxi_zones z on t.PULocationID=z.LocationID
group by z.Borough
)SELECT pickup_borough,total_trips, ROUND(
        total_trips * 100.0 / SUM(total_trips) OVER (),
        2
    ) AS trip_percentage
FROM borough_trip
ORDER BY trip_percentage DESC;
# 5. Top Pickup-Dropoff Routes: Identify the top 10 most frequent pickup_zone to dropoff_zone combinations.
WITH all_trips AS (
    SELECT PULocationID, DOLocationID
    FROM stg_uber_2017
    UNION ALL
    SELECT PULocationID, DOLocationID
    FROM stg_uber_2018
    UNION ALL
    SELECT PULocationID, DOLocationID
    FROM stg_uber_2019
    UNION ALL
    SELECT PULocationID, DOLocationID
    FROM stg_uber_2020
)SELECT pu.Zone AS pickup_zone, doff.Zone AS dropoff_zone,
COUNT(*) AS total_trips FROM all_trips t
JOIN `taxi_zones` pu ON t.PULocationID = pu.LocationID
JOIN `taxi_zones` doff
    ON t.DOLocationID = doff.LocationID
GROUP BY
    pu.Zone,
    doff.Zone
ORDER BY
    total_trips DESC
LIMIT 10;
#6. Passenger Load Patterns: Find the average passenger_count for trips in each borough.
with all_trips as ( select passenger_count,PULocationID from stg_uber_2017 
union all 
select passenger_count, PULocationID from stg_uber_2018
union all 
select passenger_count, PULocationID from stg_uber_2019
union all 
select passenger_count, PULocationID from stg_uber_2020
)
select  z.Borough, avg(t.passenger_count) as avg_passengers from all_trips t
join taxi_zones z
on t.PULocationID = z.LocationID
group by Borough;
#7.  Trip Distance Distribution: Determine the average trip_distance for each pickup_borough and dropoff_borough.
WITH all_trips AS (
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
)
SELECT zp.Borough AS pickup_borough, zd.Borough AS dropoff_borough,
AVG(t.trip_distance) AS avg_distance FROM all_trips t
JOIN taxi_zones zp
    ON t.PULocationID = zp.LocationID
JOIN taxi_zones zd
    ON t.DOLocationID = zd.LocationID
GROUP BY
    zp.Borough,
    zd.Borough
ORDER BY avg_distance DESC;
#8. Payment Method Analysis: Calculate the percentage share of each payment_type and their average fare_amount.
WITH all_trips AS (
SELECT payment_type, fare_amount
FROM stg_uber_2017
UNION ALL
SELECT payment_type, fare_amount
FROM stg_uber_2018
UNION ALL
SELECT payment_type, fare_amount FROM stg_uber_2019
UNION ALL
SELECT payment_type, fare_amount
FROM stg_uber_2020
)SELECT payment_type,
COUNT(*) AS total_trips,ROUND( COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage_share,
    ROUND(AVG(fare_amount), 2) AS avg_fare_amount
FROM all_trips
GROUP BY payment_type;
# 9. High-Tip Routes: Find the top 5 pickup-dropoff combinations with the highest average tip_amount.
WITH all_trips AS (
    SELECT PULocationID, DOLocationID, tip_amount
    FROM stg_uber_2017
    UNION ALL
SELECT PULocationID, DOLocationID, tip_amount FROM stg_uber_2018
UNION ALL
SELECT PULocationID, DOLocationID, tip_amount FROM stg_uber_2019
UNION ALL
SELECT PULocationID, DOLocationID, tip_amount FROM stg_uber_2020
)
SELECT zp.Zone AS pickup_zone, zd.Zone AS dropoff_zone, COUNT(*) AS total_trips,
ROUND(AVG(t.tip_amount), 2) AS avg_tip
FROM all_trips t JOIN taxi_zones zp
ON t.PULocationID = zp.LocationID
JOIN taxi_zones zd ON t.DOLocationID = zd.LocationID
WHERE t.tip_amount IS NOT NULL GROUP BY zp.Zone, zd.Zone
HAVING COUNT(*) >= 10 ORDER BY avg_tip DESC
LIMIT 5;
#10.  Revenue by Borough Pairs: Calculate total_amount earned for each pickup_borough to dropoff_borough pair.
WITH all_trips AS (
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
)SELECT
zp.Borough AS pickup_borough,
zd.Borough AS dropoff_borough,
COUNT(*) AS total_trips,ROUND(SUM(t.total_amount), 2) AS total_revenue
FROM all_trips t JOIN taxi_zones zp ON t.PULocationID = zp.LocationID
JOIN taxi_zones zd
ON t.DOLocationID = zd.LocationID
WHERE t.total_amount IS NOT NULL
GROUP BY
    zp.Borough,
    zd.Borough
ORDER BY total_revenue DESC; 





