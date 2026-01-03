SELECT
  FORMAT_TIMESTAMP('%A', t.started_at) AS ride_weekday,
  t.member_casual,
  CASE
    WHEN EXTRACT(HOUR FROM t.started_at) BETWEEN 5 AND 9 THEN 'A. Morning Commute (05-09)'
    WHEN EXTRACT(HOUR
  FROM
    t.started_at) BETWEEN 10
  AND 16 THEN 'B. Midday Leisure (10-16)'
    WHEN EXTRACT(HOUR FROM t.started_at) BETWEEN 17 AND 19 THEN 'C. Evening Commute (17-19)'
    WHEN EXTRACT(HOUR
  FROM
    t.started_at) >= 20
  OR EXTRACT(HOUR
  FROM
    t.started_at) <= 4 THEN 'D. Late Night / Early AM (20-04)'
    ELSE 'Unknown'
END
  AS time_of_day_group,
  AVG(TIMESTAMP_DIFF(t.ended_at, t.started_at, MINUTE)) AS average_ride_length_minutes,
  SUM(TIMESTAMP_DIFF(t.ended_at, t.started_at, MINUTE)) AS total_ride_length_minutes
FROM
  `data-analytics-477211`.`bike_trips`.`ago-25` AS t
GROUP BY
  FORMAT_TIMESTAMP('%A', t.started_at),
  t.member_casual,
  time_of_day_group
ORDER BY
  FORMAT_TIMESTAMP('%A', t.started_at),
  time_of_day_group;