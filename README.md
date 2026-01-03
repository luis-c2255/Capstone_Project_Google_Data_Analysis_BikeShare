<p align="center">
  <a href = "https://www.coursera.org/learn/google-data-analytics-capstone?specialization=google-data-analytics" rel="noopener">
<img src="https://github.com/luis-c2255/Capstone_Project_Google_Data_Analysis_BikeShare/blob/main/Visualizations/Bike_Sharing_Insights%20-Chicago.png" alt="Google Data Analytics Capstone Project"></a>
</p>

# Cyclistic Bike-Share Analysis: From Casual Riders to Annual Members

## Project Overview

This repository contains a comprehensive data analysis for **Cyclistic**, a fictional bike-share company in Chicago. As a junior data analyst, I followed the "Ask, Prepare, Process, Analyze, Share, and Act" framework to help the marketing team understand the behavioral differences between **casual riders** and **annual members**.

The objective is to leverage these insights to design marketing startegies that convert casual riders into profitable annual members. 

# The Data Analysis Process

## 1. ASK

The business task is to identify how annual members and casual riders use Cyclistic bikes differently.

- **Primary Stakeholders**: Lily Moreno, Director of Marketing

- **Secondary Stakeholders**: Cyclistic Executive Team

## 2. PREPARE

- **Data Source**: 12 months of Cyclistic historical trip data ([Divvy datasets](https://divvy-tripdata.s3.amazonaws.com/index.html)) provided by Motivate International Inc.

- **Integrity**: The data is public and reliable, through PII (Personally Identifiable Information) was excluded to maintain rider privacy.

## 3. PROCESS

I utilized **SQL** to process over 5.8 million rows of data.

- **Cleaning**: Removed duplicates, handled null values, and filtered out "test" entries.

- **Feature Engineering**: Calculated `ride_length` (Duration = Ended_At - Started_At).
    
    - Extracted `day_of_week`(1=Sunday, 7=Saturday).

## 4. ANALYZE & SHARE

My analysis revealed distinct usage patterns between the two groups:

- **Ride Duration**: Casual riders have an average ride duration nearly double that of annual members, suggesting leisure or tourist usage.
![Ride Frequency by Day](https://github.com/luis-c2255/Capstone_Project_Google_Data_Analysis_BikeShare/blob/main/images/Distribution%20of%20rides%20by%20time%20and%20member.png)

- **Weekly Trends**:

  - **Annual Members**: Exhibit higher activity during weekdays, peaking during morning and evening rush hours (commute-driven).

  - **Casual Riders**: Peak activity occurs on weekends (Saturday and Sunday), indicating recreational use.

- **Seasonality**: Both groups show increased usage in summer months, but casual rider volume drops more significantly during the winter.

## 5. ACT: RECOMMENDATIONS

Based on the data, I proposed the following three marketing strategies:

1. **Weekend Membership Specials**: Introduce a "Weekend-Only" or "Seasonal Pass" to bridge the gap for recreational users who find a full annual membership too expensive for their needs.

2. **Digital Engagement for Long-Duration Riders**: Use digital media to target users with high `ride_length`averages, showing them how much they would save by switching from single-ride/full-day passes to a membership.

3. **Summer Conversion Campaign**: Launch targeted email and social media campaigns during peak summer months when casual rider volume is highest, emphasizing membership benefits for Chicago's lakefront and leisure spots.


