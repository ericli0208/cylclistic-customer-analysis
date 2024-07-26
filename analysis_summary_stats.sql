/*
Summary Statistic: 
Total Count of Rides Per Month 
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

-- For Specific Months (Jan Example): 
SELECT COUNT(*) AS total_jan
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
WHERE started_at BETWEEN TIMESTAMP(DATE "2024-01-01") AND TIMESTAMP(DATE "2024-01-31");

-- For All Months (YTD):
SELECT 
  EXTRACT(YEAR FROM started_at) AS year,
  EXTRACT(MONTH FROM started_at) AS month,
  COUNT(DISTINCT(ride_id)) as total_rides -- duplicate ride id found with distinct
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
GROUP BY year, month 
ORDER BY year, month;

/*
Summary Statistic: 
Average Length of Rides Per Month (Min)
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

-- For Specific Months (Jan Example): 
SELECT AVG(ride_length_min) as avg_min_jan
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2` 
WHERE started_at BETWEEN TIMESTAMP(DATE "2024-01-01") AND TIMESTAMP(DATE "2024-01-31");

-- For All Months (YTD):
SELECT 
  EXTRACT(YEAR FROM started_at) AS year,
  EXTRACT(MONTH FROM started_at) AS month,
  AVG(ride_length_min) as avg_min
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
GROUP BY year, month 
ORDER BY year, month;

/*
Summary Statistic: 
Max Length of Rides Per Month (Min)
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

-- For Specific Months (Jan Example): 
SELECT ride_length_min AS max_ride_length
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
WHERE started_at BETWEEN TIMESTAMP(DATE "2024-01-01") AND TIMESTAMP(DATE "2024-01-31")
ORDER BY ride_length_min DESC
LIMIT 1;

-- For All Months (YTD):
SELECT 
  EXTRACT(MONTH FROM started_at) AS month,
  MAX(ride_length_min) AS max_ride_length
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
GROUP BY month 
ORDER BY month;


/*
Summary Statistic: 
Mode Length of Rides Per Month (Min)
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

WITH mode AS(
  SELECT
    EXTRACT(YEAR FROM started_at) AS year,
    EXTRACT(MONTH FROM started_at) AS month,
    ride_length_min,
    COUNT(ride_length_min) AS count_rides
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
  GROUP BY year, month, ride_length_min
  ORDER BY count_rides DESC)
SELECT year, month, MAX_BY(ride_length_min, count_rides) as mode_time, MAX(count_rides) as num_rides -- MAX_BY(x, y) is the same as ANY_VALUE(x HAVING MAX y)
FROM mode
WHERE ride_length_min > 0.2 -- removing all rides under one minute for instances of 0.03, 0.04, and 0.16 min
GROUP BY year, month
ORDER BY num_rides DESC;


/*
Average Ride Length per User Type 
(Casual vs Member)
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

SELECT 
  member_casual,
  AVG(ride_length_min) as avg_ride_length
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
GROUP BY member_casual;

/*
Average Ride Length per Day of Week 
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

SELECT 
  day_of_week,
  AVG(ride_length_min) as avg_ride_length
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
GROUP BY day_of_week;

/*
Number of Rides per Day of Week 
2023 Q3 And Q4 - 2024 Q1 And Q2
*/

SELECT
  day_of_week,
  COUNT(DISTINCT(ride_id)) as num_rides
FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2`
GROUP BY day_of_week;
