/* 
Cyclistic Case Study: 12-Month Data Exploration, 2023_Q3 - 2024_Q2
Union Function
*/

-- Create 2023 Q3&Q4 Table

CREATE TABLE `top-sentinel-427221-q7.cyclistic_2024ytd.2023_Q3Q4` AS (
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_12_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_11_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_10_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_09_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_08_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_07_data`)
;


-- Create 2023 Q3&Q4 - 2024 Q1&Q2 Table Function (Using Union) 

CREATE TABLE `top-sentinel-427221-q7.cyclistic_2024ytd.2023q3q4_2024q1q2` AS (
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2024_06_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2024_05_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2024_04_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2024_03_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2024_02_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2024_01_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_12_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_11_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_10_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_09_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_08_data`
  UNION ALL
  SELECT ride_id, rideable_type, started_at, ended_at, day_of_week, ride_length_min, member_casual
  FROM `top-sentinel-427221-q7.cyclistic_2024ytd.2023_07_data`)
;
