-- Create a query to check for nulls or missing values
SELECT
	COUNTIF(ride_id IS NULL) AS null_ride_id,
	COUNTIF(rideable_type IS NULL) AS null_rideable_type,
	COUNTIF(started_at IS NULL) AS null_started_at,
	COUNTIF(ended_at IS NULL) AS null_ended_at,
	COUNTIF(start_station_name IS NULL) AS null_start_station_name,
	COUNTIF(start_station_id IS NULL) AS null_start_station_id,
	COUNTIF(end_station_name IS NULL) AS null_end_station_name,
	COUNTIF(end_station_id IS NULL) AS null_end_station_id,
	COUNTIF(start_lat IS NULL) AS null_start_lat,
	COUNTIF(start_lng IS NULL) AS null_start_lng,
	COUNTIF(end_lat IS NULL) AS null_end_lat,
	COUNTIF(end_lng IS NULL) AS null_end_lng,
	COUNTIF(member_casual IS NULL) AS null_member_casual
FROM
	`data-analytics-477211.bike_trips`