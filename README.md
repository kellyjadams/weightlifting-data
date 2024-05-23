# Weightlifting Data V2

The second set of data is from June 1, 2022 to June 4, 2023. **This project is in progress.** 

To view phase 1 of this project, which is complete check out my [Version 1 Folder](Version-1) and [readme](Version-1/README.md) for documentation.

## 🏋️‍♀️ Overview
An ongoing project tracking and analyzing my weightlifting data using SQL. 

I'll be tracking/analyzing 5 main barbell lifts: 
1. Deadlift 
2. Squat 
3. Overhead Press
4. Bench Press
5. Row
   
## 🔗 Links
* **Work in Progress** [Tableau Dashboard](https://public.tableau.com/views/WeightliftingProject/Final?:language=en-US&:display_count=n&:origin=viz_share_link).
* **Work in Progress** [Article](https://www.kellyjadams.com/post/weightlifting-project). 
* **Work in Progress** [Explore my database using db-fiddle](https://www.db-fiddle.com/f/m4zfSvAN5kf6ADXS5ceLaX/1). 

## 📁 Files
* [query-v2.sql](query-v2.sql) is SQL code includes improvements of queries I used in the first version of my weightlifting project.
* query-metrics.sql is my new SQL code which goes into more in-depth analysis. 
* [schema-v2.sql](schema-v2.sql) is SQL code used to create my own schema for my project
* [FitNotes_Export 6-1-22 to 6-1-23 - 5 Lifts and Volume and 1RM (3).csv](FitNotes_Export_6-1-22_to_6-1-23_5_Lifts_and_Volume_and_1RM_(3).csv) is the raw data exported from my fitness tracker app. It includes the date, exercise_id, category_id, weights (lbs), and reps. I added volume, 1 RM, and Workout_type. 

### Schema

Below is the schema for my weightlifting data. This is an EDR diagram.

