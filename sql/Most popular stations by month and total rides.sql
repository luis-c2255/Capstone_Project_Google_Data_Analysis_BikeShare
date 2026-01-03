-- query to get the most popular start and end stations by member type and month
SELECT
	analysis_month,
	member_casual,
	most_popular_start_station,
	most_popular_end_station,
	total_rides
FROM
	`data-analytics-477211.bike_trips`
ORDER BY
	analysis_month,
	total_rides DESC;