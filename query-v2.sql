/*

This is an updated version of my first query (v1).

*/

-- Workout Information
SELECT *
FROM weightlifting.workout
LIMIT 5 

| id | workout_date             |
| ---| ------------------------ |
| 1  | 2022-06-05T00:00:00.000Z |
| 2  | 2022-06-07T00:00:00.000Z |
| 3  | 2022-06-09T00:00:00.000Z |
| 4  | 2022-06-11T00:00:00.000Z |
| 5  | 2022-06-12T00:00:00.000Z |

-- Lifts 
SELECT *
FROM weightlifting.lifts
LIMIT 5

| id | exercise_id | weight_lbs | reps | volume_lbs |
| ---| ----------- | ---------- | ---- | ---------- |
| 1  | 4           | 45         | 5    | 225        |
| 1  | 4           | 45         | 5    | 225        |
| 1  | 4           | 50         | 4    | 200        |
| 1  | 5           | 50         | 5    | 250        |
| 1  | 5           | 55         | 5    | 275        |

-- Exercises

SELECT *
FROM weightlifting.exercises

| id | exercise_name  | category_id |
| -- | -------------- | ----------- |
| 1  | Deadlift       | 4           |
| 2  | Bench Press    | 1           |
| 3  | Squat          | 3           |
| 4  | Overhead Press | 1           |
| 5  | Row            | 2           |

-- Categories

SELECT *
FROM weightlifting.categories

| id | category_name |
| -- | ------------- |
| 1  | Push          |
| 2  | Pull          |
| 3  | Legs          |
| 4  | Hinge         |

-- Workout Type 

SELECT *
FROM weighlifting.workout_type

| id | workout_type_name |
| -- | ----------------- |
| 1  | Strength          |
| 2  | Hypertrophy       |

-- JOIN Workout Table and Lifts Table by workout_id and created a new column to calculate the estimated 1RM

SELECT 
  workout.id, 
  TO_CHAR(workout.workout_date, 'YYYY-MM-DD') as workout_date,
  lifts.exercise_id,
  lifts.weight_lbs,
  lifts.reps,
  lifts.weight_lbs/(1.0278 - (0.0278 * lifts.reps)) AS est_one_rep_max
FROM
	weightlifting.workout as workout
  INNER JOIN weightlifting.lifts as lifts
  ON workout.id = lifts.workout_id
ORDER BY workout.id
;

-- Note this only shows the workout (workout_id = 1 ) but the query returns all information 

| id  | workout_date | exercise_id | weight_lbs | reps | est_one_rep_max    |
| --- | ------------ | ----------- | ---------- | ---- | ------------------ |
| 1   | 2022-06-05   | 4           | 45         | 5    | 50.63006300630063  |
| 1   | 2022-06-05   | 4           | 45         | 5    | 50.63006300630063  |
| 1   | 2022-06-05   | 4           | 50         | 4    | 54.54942177612917  |
| 1   | 2022-06-05   | 5           | 50         | 5    | 56.255625562556254 |
| 1   | 2022-06-05   | 5           | 55         | 5    | 61.88118811881188  |
| 1   | 2022-06-05   | 5           | 60         | 5    | 67.50675067506751  |
| 1   | 2022-06-05   | 2           | 50         | 5    | 56.255625562556254 |
| 1   | 2022-06-05   | 2           | 50         | 5    | 56.255625562556254 |
| 1   | 2022-06-05   | 2           | 55         | 5    | 61.88118811881188  |

-- Show the Exercise and Category for each lift entry
SELECT 
    TO_CHAR(workout.workout_date, 'YYYY-MM-DD') as workout_date,
    exercises.exercise_name, 
    categories.category_name
FROM weightlifting.exercises as exercises
LEFT JOIN weightlifting.categories as categories
ON exercises.category_id = categories.id
LEFT JOIN weightlifting.lifts as lifts
ON exercises.id = lifts.exercise_id
LEFT JOIN weightlifting.workout as workout
ON lifts.workout_id  = workout.id
ORDER BY workout.id
;

-- Note this only shows the workout (work_date = 2022-06-05) but the query returns all information 
| workout_date | exercise_name  | category_name |
| ------------ | -------------- | ------------- |
| 2022-06-05   | Overhead Press | Push          |
| 2022-06-05   | Row            | Pull          |
| 2022-06-05   | Row            | Pull          |
| 2022-06-05   | Overhead Press | Push          |
| 2022-06-05   | Bench Press    | Push          |
| 2022-06-05   | Bench Press    | Push          |
| 2022-06-05   | Bench Press    | Push          |
| 2022-06-05   | Row            | Pull          |
| 2022-06-05   | Overhead Press | Push          |


-- Average Weight per Lift
SELECT 
	AVG(lifts.weight_lbs) AS avg_weight_lbs, 
	exercises.exercise_name 
FROM weightlifting.lifts
	INNER JOIN weightlifting.exercises
ON lifts.exercise_id = exercises.id
GROUP BY exercises.exercise_name
;

| avg_weight_lbs     | exercise_name  |
| ------------------ | -------------- |
| 59.295081967213115 | Row            |
| 101.15979381443299 | Deadlift       |
| 46.37096774193548  | Overhead Press |
| 63.545918367346935 | Squat          |
| 57.84090909090909  | Bench Press    |

-- Maximum Weight per Lift
SELECT 
	MAX(lifts.weight_lbs) AS max_weight_lbs, 
	exercises.exercise_name 
FROM weightlifting.lifts
	INNER JOIN weightlifting.exercises
ON lifts.exercise_id = exercises.id
GROUP BY exercises.exercise_name
;

| max_weight_lbs | exercise_name  |
| -------------- | -------------- |
| 65             | Row            |
| 117.5          | Deadlift       |
| 50             | Overhead Press |
| 70             | Squat          |
| 62.5           | Bench Press    |

-- Minimum Weight per Lift
SELECT 
	MIN(lifts.weight_lbs) AS min_weight_lbs, 
	exercises.exercise_name 
FROM weightlifting.lifts
	INNER JOIN weightlifting.exercises
ON lifts.exercise_id = exercises.id
GROUP BY exercises.exercise_name
;

| min_weight_lbs | exercise_name  |
| -------------- | -------------- |
| 50             | Row            |
| 75             | Deadlift       |
| 40             | Overhead Press |
| 45             | Squat          |
| 50             | Bench Press    |

-- How many exercises I did per workout
SELECT 
	COUNT(lifts.exercise_id) AS number_of_exercises,
	TO_CHAR(workout.workout_date, 'YYYY-MM-DD') as workout_date
FROM weightlifting.workout
	INNER JOIN weightlifting.lifts
ON workout.id = lifts.workout_id
GROUP BY workout_date
ORDER BY workout_date
;

-- Note this only shows the first 5 dates but the query returns the entire lifts table.
| number_of_exercises | workout_date |
| ------------------- | ------------ |
| 9                   | 2022-06-05   |
| 8                   | 2022-06-07   |
| 12                  | 2022-06-09   |
| 10                  | 2022-06-11   |
| 15                  | 2022-06-12   |


-- Avg Weight per Workoutdate
SELECT 
	AVG(lifts.weight_lbs) AS avg_weight,
	TO_CHAR(workout.workout_date, 'YYYY-MM-DD') as workout_date
FROM weightlifting.workout
INNER JOIN weightlifting.lifts
ON workout.id = lifts.workout_id
GROUP BY workout_date
ORDER BY workout_date
;

-- Note this only shows the first 5 dates but the query returns the entire lifts table.
| avg_weight         | workout_date |
| ------------------ | ------------ |
| 51.111111111111114 | 2022-06-05   |
| 70                 | 2022-06-07   |
| 52.5               | 2022-06-09   |
| 67                 | 2022-06-11   |
| 53                 | 2022-06-12   |

-- Total Volume per Date
SELECT 
	SUM(lifts.volume_lbs) AS total_volume,
	TO_CHAR(workout.workout_date, 'YYYY-MM-DD') as workout_date
FROM
	weightlifting.workout
 	INNER JOIN weightlifting.lifts
	ON workout.id = lifts.workout_id
GROUP BY workout.workout_date
ORDER BY workout.workout_date
;

-- Note this only shows the first 5 dates but the query returns the entire lifts table.
| total_volume | workout_date |
| ------------ | ------------ |
| 2250         | 2022-06-05   |
| 2140         | 2022-06-07   |
| 3145         | 2022-06-09   |
| 3350         | 2022-06-11   |
| 3845         | 2022-06-12   |

--Total volume per exercise 
SELECT
SUM(lifts.volume_lbs)AS total_volume,
  exercises.exercise_name
FROM 
	weightlifting.lifts
    INNER JOIN weightlifting.exercises
    ON lifts.exercise_id = exercises.id
GROUP BY exercises.exercise_name
;

| total_volume | exercise_name  |
| ------------ | -------------- |
| 71505        | Row            |
| 163726.5     | Deadlift       |
| 54428.5      | Overhead Press |
| 100555       | Squat          |
| 71485        | Bench Press    |


-- Average Repetitions per Workout Date
SELECT 
	AVG(lifts.reps) AS repetitions,
	TO_CHAR(workout.workout_date, 'YYYY-MM-DD') as workout_date
FROM weightlifting.workout
	INNER JOIN weightlifting.lifts
	ON workout.id = lifts.workout_id
GROUP BY workout_date
ORDER BY workout_date
;

-- Note this only shows the first 5 dates but the query returns the entire lifts table.
| repetitions         | workout_date |
| ------------------- | ------------ |
| 4.8888888888888889  | 2022-06-05   |
| 4.0000000000000000  | 2022-06-07   |
| 5.0000000000000000  | 2022-06-09   |
| 5.0000000000000000  | 2022-06-11   |
| 4.8666666666666667  | 2022-06-12   |

-- Total count for each category type 
SELECT 
  COUNT(exercises.id) AS category_count,
  categories.category_name
FROM weightlifting.exercises
LEFT JOIN weightlifting.categories
	ON exercises.category_id = categories.id
LEFT JOIN weightlifting.lifts
	ON exercises.id = lifts.exercise_id
GROUP BY categories.category_name
ORDER BY categories.category_name
;

| category_count | category_name |
| -------------- | ------------- |
| 293            | Hinge         |
| 300            | Legs          |
| 213            | Pull          |
| 447            | Push          |
