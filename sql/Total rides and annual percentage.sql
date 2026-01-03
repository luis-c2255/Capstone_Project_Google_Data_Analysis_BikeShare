-- query to get the total rides, and annual percentage of rides, by member type and bike
SELECT
	t.member_casual,
	t.rideable_type,
	t.total_rides,
	t.percentage_of_rides
FROM
	`data-analytics-477211.bike_trips` AS t
ORDER BY
	t.member_casual,
	t.rideable_type;