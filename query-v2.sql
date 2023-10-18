/*

This is V2 of my Weightlifting Project
It is analyzing data between June 1, 2022 to June 4, 2023

*/

-- Workout Information
SELECT *
FROM weightlifting.workout
LIMIT 5 

| workout_id | workout_date             |
| ---------- | ------------------------ |
| 1          | 2022-06-05T00:00:00.000Z |
| 2          | 2022-06-07T00:00:00.000Z |
| 3          | 2022-06-09T00:00:00.000Z |
| 4          | 2022-06-11T00:00:00.000Z |
| 5          | 2022-06-12T00:00:00.000Z |

-- Lifts 
SELECT *
FROM weightlifting.lifts
LIMIT 5

| workout_id | exercise_id | weight_lbs | reps | volume_lbs |
| ---------- | ----------- | ---------- | ---- | ---------- |
| 1          | 4           | 45         | 5    | 225        |
| 1          | 4           | 45         | 5    | 225        |
| 1          | 4           | 50         | 4    | 200        |
| 1          | 5           | 50         | 5    | 250        |
| 1          | 5           | 55         | 5    | 275        |

-- Exercises

SELECT *
FROM weightlifting.exercises

| exercise_id | exercise_name  | category_id |
| ----------- | -------------- | ----------- |
| 1           | Deadlift       | 4           |
| 2           | Bench Press    | 1           |
| 3           | Squat          | 3           |
| 4           | Overhead Press | 1           |
| 5           | Row            | 2           |

-- Categories

SELECT *
FROM weightlifting.categories

| category_id | category_name |
| ----------- | ------------- |
| 1           | Push          |
| 2           | Pull          |
| 3           | Legs          |
| 4           | Hinge         |

-- JOIN Workout Table and Lifts Table by workout_id and created a new column to calculate the estimated 1RM

SELECT workout.workout_id, 
workout.workout_date,
lifts.exercise_id,
lifts.weight_lbs,
lifts.reps,
lifts.weight_lbs/(1.0278 - (0.0278 * lifts.reps)) AS est_one_rep_max
FROM
	weightlifting.workout
  INNER JOIN weightlifting.lifts
ON workout.workout_id = lifts.workout_id
ORDER BY workout.workout_id;

-- Shortened
| workout_id | workout_date             | exercise_id | weight_lbs | reps | est_one_rep_max    |
| ---------- | ------------------------ | ----------- | ---------- | ---- | ------------------ |
| 1          | 2022-06-05T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 1          | 2022-06-05T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 1          | 2022-06-05T00:00:00.000Z | 4           | 50         | 4    | 54.54942177612917  |
| 1          | 2022-06-05T00:00:00.000Z | 5           | 50         | 5    | 56.255625562556254 |
| 1          | 2022-06-05T00:00:00.000Z | 5           | 55         | 5    | 61.88118811881188  |
| 1          | 2022-06-05T00:00:00.000Z | 5           | 60         | 5    | 67.50675067506751  |
| 1          | 2022-06-05T00:00:00.000Z | 2           | 50         | 5    | 56.255625562556254 |
| 1          | 2022-06-05T00:00:00.000Z | 2           | 50         | 5    | 56.255625562556254 |
| 1          | 2022-06-05T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 2          | 2022-06-07T00:00:00.000Z | 1           | 85         | 4    | 92.7340170194196   |
| 2          | 2022-06-07T00:00:00.000Z | 1           | 85         | 4    | 92.7340170194196   |
| 2          | 2022-06-07T00:00:00.000Z | 1           | 85         | 4    | 92.7340170194196   |
| 2          | 2022-06-07T00:00:00.000Z | 1           | 95         | 2    | 97.71651923472537  |
| 2          | 2022-06-07T00:00:00.000Z | 3           | 45         | 5    | 50.63006300630063  |
| 2          | 2022-06-07T00:00:00.000Z | 3           | 50         | 5    | 56.255625562556254 |
| 2          | 2022-06-07T00:00:00.000Z | 3           | 55         | 5    | 61.88118811881188  |
| 2          | 2022-06-07T00:00:00.000Z | 3           | 60         | 3    | 63.53240152477763  |
| 3          | 2022-06-09T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 3          | 2022-06-09T00:00:00.000Z | 4           | 50         | 4    | 54.54942177612917  |
| 3          | 2022-06-09T00:00:00.000Z | 4           | 50         | 4    | 54.54942177612917  |
| 3          | 2022-06-09T00:00:00.000Z | 5           | 55         | 5    | 61.88118811881188  |
| 3          | 2022-06-09T00:00:00.000Z | 5           | 55         | 5    | 61.88118811881188  |
| 3          | 2022-06-09T00:00:00.000Z | 5           | 60         | 5    | 67.50675067506751  |
| 3          | 2022-06-09T00:00:00.000Z | 2           | 50         | 5    | 56.255625562556254 |
| 3          | 2022-06-09T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 3          | 2022-06-09T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 3          | 2022-06-09T00:00:00.000Z | 4           | 45         | 6    | 52.26480836236934  |
| 3          | 2022-06-09T00:00:00.000Z | 5           | 60         | 5    | 67.50675067506751  |
| 3          | 2022-06-09T00:00:00.000Z | 2           | 50         | 6    | 58.07200929152149  |
| 4          | 2022-06-11T00:00:00.000Z | 1           | 75         | 5    | 84.38343834383438  |
| 4          | 2022-06-11T00:00:00.000Z | 1           | 80         | 5    | 90.00900090009     |
| 4          | 2022-06-11T00:00:00.000Z | 1           | 80         | 5    | 90.00900090009     |
| 4          | 2022-06-11T00:00:00.000Z | 1           | 80         | 5    | 90.00900090009     |
| 4          | 2022-06-11T00:00:00.000Z | 1           | 85         | 5    | 95.63456345634563  |
| 4          | 2022-06-11T00:00:00.000Z | 3           | 50         | 5    | 56.255625562556254 |
| 4          | 2022-06-11T00:00:00.000Z | 3           | 50         | 5    | 56.255625562556254 |
| 4          | 2022-06-11T00:00:00.000Z | 3           | 55         | 5    | 61.88118811881188  |
| 4          | 2022-06-11T00:00:00.000Z | 3           | 55         | 5    | 61.88118811881188  |
| 4          | 2022-06-11T00:00:00.000Z | 3           | 60         | 5    | 67.50675067506751  |
| 5          | 2022-06-12T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 5          | 2022-06-12T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 5          | 2022-06-12T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 5          | 2022-06-12T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 5          | 2022-06-12T00:00:00.000Z | 5           | 55         | 5    | 61.88118811881188  |
| 5          | 2022-06-12T00:00:00.000Z | 5           | 55         | 5    | 61.88118811881188  |
| 5          | 2022-06-12T00:00:00.000Z | 5           | 60         | 5    | 67.50675067506751  |
| 5          | 2022-06-12T00:00:00.000Z | 5           | 60         | 5    | 67.50675067506751  |
| 5          | 2022-06-12T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 5          | 2022-06-12T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 5          | 2022-06-12T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 5          | 2022-06-12T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |
| 5          | 2022-06-12T00:00:00.000Z | 4           | 45         | 5    | 50.63006300630063  |
| 5          | 2022-06-12T00:00:00.000Z | 5           | 65         | 3    | 68.82676831850911  |
| 5          | 2022-06-12T00:00:00.000Z | 2           | 55         | 5    | 61.88118811881188  |


-- Show the Exercise and Category for each lift entry
SELECT 
    lifts.workout_id,
    exercises.exercise_id, 
    exercises.exercise_name, 
    categories.category_id, 
    categories.category_name
FROM weightlifting.exercises
LEFT JOIN weightlifting.categories
ON exercises.category_id = categories.category_id
LEFT JOIN weightlifting.lifts
ON exercises.exercise_id = lifts.exercise_id
ORDER BY workout_id

-- Shortened
| workout_id | exercise_id | exercise_name  | category_id | category_name |
| ---------- | ----------- | -------------- | ----------- | ------------- |
| 1          | 4           | Overhead Press | 1           | Push          |
| 1          | 5           | Row            | 2           | Pull          |
| 1          | 2           | Bench Press    | 1           | Push          |
| 1          | 4           | Overhead Press | 1           | Push          |
| 1          | 2           | Bench Press    | 1           | Push          |
| 1          | 4           | Overhead Press | 1           | Push          |
| 1          | 2           | Bench Press    | 1           | Push          |
| 1          | 5           | Row            | 2           | Pull          |
| 1          | 5           | Row            | 2           | Pull          |
| 2          | 1           | Deadlift       | 4           | Hinge         |
| 2          | 3           | Squat          | 3           | Legs          |
| 2          | 3           | Squat          | 3           | Legs          |
| 2          | 3           | Squat          | 3           | Legs          |
| 2          | 3           | Squat          | 3           | Legs          |
| 2          | 1           | Deadlift       | 4           | Hinge         |
| 2          | 1           | Deadlift       | 4           | Hinge         |
| 2          | 1           | Deadlift       | 4           | Hinge         |
| 3          | 2           | Bench Press    | 1           | Push          |
| 3          | 4           | Overhead Press | 1           | Push          |
| 3          | 5           | Row            | 2           | Pull          |
| 3          | 5           | Row            | 2           | Pull          |
| 3          | 2           | Bench Press    | 1           | Push          |
| 3          | 4           | Overhead Press | 1           | Push          |
| 3          | 4           | Overhead Press | 1           | Push          |
| 3          | 2           | Bench Press    | 1           | Push          |

-- Average Weight per Lift
SELECT 
	AVG(lifts.weight_lbs) AS avg_weight_lbs, 
	exercises.exercise_name 
FROM weightlifting.lifts
	INNER JOIN weightlifting.exercises
ON lifts.exercise_id = exercises.exercise_id
GROUP BY exercises.exercise_name

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
ON lifts.exercise_id = exercises.exercise_id
GROUP BY exercises.exercise_name

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
ON lifts.exercise_id = exercises.exercise_id
GROUP BY exercises.exercise_name

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
    	workout.workout_date
FROM weightlifting.workout
	INNER JOIN weightlifting.lifts
ON workout.workout_id = lifts.workout_id
GROUP BY workout_date
ORDER BY workout_date

  -- Shortened
| number_of_exercises | workout_date             |
| ------------------- | ------------------------ |
| 9                   | 2022-06-05T00:00:00.000Z |
| 8                   | 2022-06-07T00:00:00.000Z |
| 12                  | 2022-06-09T00:00:00.000Z |
| 10                  | 2022-06-11T00:00:00.000Z |
| 15                  | 2022-06-12T00:00:00.000Z |
| 10                  | 2022-06-15T00:00:00.000Z |
| 10                  | 2022-06-18T00:00:00.000Z |
| 12                  | 2022-06-19T00:00:00.000Z |
| 10                  | 2022-06-21T00:00:00.000Z |
| 15                  | 2022-06-23T00:00:00.000Z |
| 10                  | 2022-06-25T00:00:00.000Z |
| 15                  | 2022-06-26T00:00:00.000Z |
| 5                   | 2022-06-28T00:00:00.000Z |

-- Avg Weight per Workoutdate
SELECT 
	AVG(lifts.weight_lbs) AS avg_weight,
    	workout.workout_date
FROM weightlifting.workout
INNER JOIN weightlifting.lifts
ON workout.workout_id = lifts.workout_id
GROUP BY workout_date
ORDER BY workout_date

  -- Shortened
| avg_weight         | workout_date             |
| ------------------ | ------------------------ |
| 51.111111111111114 | 2022-06-05T00:00:00.000Z |
| 70                 | 2022-06-07T00:00:00.000Z |
| 52.5               | 2022-06-09T00:00:00.000Z |
| 67                 | 2022-06-11T00:00:00.000Z |
| 53                 | 2022-06-12T00:00:00.000Z |
| 72                 | 2022-06-15T00:00:00.000Z |
| 75                 | 2022-06-18T00:00:00.000Z |
| 53.333333333333336 | 2022-06-19T00:00:00.000Z |
| 77.5               | 2022-06-21T00:00:00.000Z |
| 57.666666666666664 | 2022-06-23T00:00:00.000Z |
| 79.5               | 2022-06-25T00:00:00.000Z |
| 56.333333333333336 | 2022-06-26T00:00:00.000Z |
| 100                | 2022-06-28T00:00:00.000Z |

-- Total Volume per Date
SELECT 
SUM(lifts.volume_lbs) AS total_volume,
  workout.workout_date
FROM
	weightlifting.workout
 	INNER JOIN weightlifting.lifts
	ON workout.workout_id = lifts.workout_id
GROUP BY workout.workout_date
ORDER BY workout.workout_date;

-- Shortened
| total_volume | workout_date             |
| ------------ | ------------------------ |
| 2250         | 2022-06-05T00:00:00.000Z |
| 2140         | 2022-06-07T00:00:00.000Z |
| 3145         | 2022-06-09T00:00:00.000Z |
| 3350         | 2022-06-11T00:00:00.000Z |
| 3845         | 2022-06-12T00:00:00.000Z |
| 3849         | 2022-06-15T00:00:00.000Z |
| 3370         | 2022-06-18T00:00:00.000Z |
| 3840         | 2022-06-19T00:00:00.000Z |
| 3210         | 2022-06-21T00:00:00.000Z |
| 2535         | 2022-06-23T00:00:00.000Z |
| 3315         | 2022-06-25T00:00:00.000Z |
| 3345         | 2022-06-26T00:00:00.000Z |
| 2195         | 2022-06-28T00:00:00.000Z |

--Total volume per exercise 
SELECT
SUM(
      CASE
        WHEN lifts.exercise_id = '1' THEN lifts.volume_lbs
        WHEN lifts.exercise_id = '2' THEN lifts.volume_lbs
        WHEN lifts.exercise_id = '3' THEN lifts.volume_lbs
        WHEN lifts.exercise_id = '4' THEN lifts.volume_lbs
        WHEN lifts.exercise_id = '5' THEN lifts.volume_lbs
        END 
  ) AS total_volume,
  exercises.exercise_name
FROM 
	weightlifting.lifts
    INNER JOIN weightlifting.exercises
    ON lifts.exercise_id = exercises.exercise_id
GROUP BY exercises.exercise_name;

| total_volume | exercise_name  |
| ------------ | -------------- |
| 18394        | Row            |
| 48064        | Deadlift       |
| 13495        | Overhead Press |
| 30490        | Squat          |
| 18957.5      | Bench Press    |

-- Average Repetitions per Workout Date
SELECT 
	AVG(lifts.reps) AS repetitions,
    workout.workout_date
FROM weightlifting.workout
INNER JOIN weightlifting.lifts
ON workout.workout_id = lifts.workout_id
GROUP BY workout_date
ORDER BY workout_date

  -- Shortened
| repetitions        | workout_date             |
| ------------------ | ------------------------ |
| 4.8888888888888889 | 2022-06-05T00:00:00.000Z |
| 4.0000000000000000 | 2022-06-07T00:00:00.000Z |
| 5.0000000000000000 | 2022-06-09T00:00:00.000Z |
| 5.0000000000000000 | 2022-06-11T00:00:00.000Z |
| 4.8666666666666667 | 2022-06-12T00:00:00.000Z |
| 5.3000000000000000 | 2022-06-15T00:00:00.000Z |
| 4.6000000000000000 | 2022-06-18T00:00:00.000Z |
| 6.0000000000000000 | 2022-06-19T00:00:00.000Z |
| 4.3000000000000000 | 2022-06-21T00:00:00.000Z |
| 3.0000000000000000 | 2022-06-23T00:00:00.000Z |
| 4.2000000000000000 | 2022-06-25T00:00:00.000Z |
| 3.9333333333333333 | 2022-06-26T00:00:00.000Z |
| 4.4000000000000000 | 2022-06-28T00:00:00.000Z |

-- Total count for each category type 
SELECT 
    COUNT( CASE 
        WHEN categories.category_id = '1' THEN 1
        WHEN categories.category_id = '2' THEN 1
        WHEN categories.category_id = '3' THEN 1
        WHEN categories.category_id = '4' THEN 1
        END
        ) AS category_count,
     categories.category_name
FROM weightlifting.exercises
LEFT JOIN weightlifting.categories
ON exercises.category_id = categories.category_id
LEFT JOIN weightlifting.lifts
ON exercises.exercise_id = lifts.exercise_id
GROUP BY categories.category_name
ORDER BY categories.category_name

| category_count | category_name |
| -------------- | ------------- |
| 97             | Hinge         |
| 98             | Legs          |
| 61             | Pull          |
| 128            | Push          |
