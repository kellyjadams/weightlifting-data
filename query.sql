-- View the workout table

SELECT *
FROM weightlifting.workout
LIMIT 5 


| workout_id | workout_date             | exercise_id | category_id | weight_lbs | reps |
| ---------- | ------------------------ | ----------- | ----------- | ---------- | ---- |
| 1          | 2022-06-05T00:00:00.000Z | 4           | 1           | 45         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | 4           | 1           | 45         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | 4           | 1           | 50         | 4    |
| 1          | 2022-06-05T00:00:00.000Z | 5           | 2           | 50         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | 5           | 2           | 55         | 5    |

-- JOIN Workout Table and Exercises Table by exercise_id

SELECT workout.workout_id, 
workout.workout_date,
exercises.exercise_name,
workout.weight_lbs,
workout.reps
FROM
	weightlifting.workout
  INNER JOIN weightlifting.exercises
ON workout.exercise_id = exercises.exercise_id
ORDER BY workout.workout_id;

| workout_id | workout_date             | exercise_name  | weight_lbs | reps |
| ---------- | ------------------------ | -------------- | ---------- | ---- |
| 1          | 2022-06-05T00:00:00.000Z | Overhead Press | 45         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Row            | 50         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Bench Press    | 55         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Overhead Press | 45         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Bench Press    | 50         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Overhead Press | 50         | 4    |
| 1          | 2022-06-05T00:00:00.000Z | Bench Press    | 50         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Row            | 55         | 5    |
| 1          | 2022-06-05T00:00:00.000Z | Row            | 60         | 5    |
| 2          | 2022-06-07T00:00:00.000Z | Deadlift       | 85         | 4    |
| 2          | 2022-06-07T00:00:00.000Z | Squat          | 45         | 5    |
| 2          | 2022-06-07T00:00:00.000Z | Squat          | 50         | 5    |
| 2          | 2022-06-07T00:00:00.000Z | Squat          | 55         | 5    |
| 2          | 2022-06-07T00:00:00.000Z | Squat          | 60         | 3    |
| 2          | 2022-06-07T00:00:00.000Z | Deadlift       | 85         | 4    |
| 2          | 2022-06-07T00:00:00.000Z | Deadlift       | 95         | 2    |
| 2          | 2022-06-07T00:00:00.000Z | Deadlift       | 85         | 4    |
| 3          | 2022-06-09T00:00:00.000Z | Bench Press    | 50         | 6    |
| 3          | 2022-06-09T00:00:00.000Z | Overhead Press | 45         | 6    |
| 3          | 2022-06-09T00:00:00.000Z | Row            | 60         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Row            | 55         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Bench Press    | 55         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Overhead Press | 50         | 4    |
| 3          | 2022-06-09T00:00:00.000Z | Overhead Press | 50         | 4    |
| 3          | 2022-06-09T00:00:00.000Z | Bench Press    | 50         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Overhead Press | 45         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Bench Press    | 55         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Row            | 60         | 5    |
| 3          | 2022-06-09T00:00:00.000Z | Row            | 55         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Squat          | 55         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Deadlift       | 75         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Deadlift       | 80         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Deadlift       | 80         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Deadlift       | 80         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Deadlift       | 85         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Squat          | 60         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Squat          | 55         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Squat          | 50         | 5    |
| 4          | 2022-06-11T00:00:00.000Z | Squat          | 50         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Row            | 60         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Row            | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Overhead Press | 45         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Bench Press    | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Overhead Press | 45         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Bench Press    | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Bench Press    | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Bench Press    | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Bench Press    | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Overhead Press | 45         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Row            | 55         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Row            | 60         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Overhead Press | 45         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Overhead Press | 45         | 5    |
| 5          | 2022-06-12T00:00:00.000Z | Row            | 65         | 3    |
| 6          | 2022-06-15T00:00:00.000Z | Squat          | 55         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Deadlift       | 83         | 8    |
| 6          | 2022-06-15T00:00:00.000Z | Deadlift       | 88         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Deadlift       | 88         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Deadlift       | 88         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Deadlift       | 88         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Squat          | 60         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Squat          | 60         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Squat          | 55         | 5    |
| 6          | 2022-06-15T00:00:00.000Z | Squat          | 55         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Deadlift       | 95         | 3    |
| 7          | 2022-06-18T00:00:00.000Z | Squat          | 55         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Squat          | 60         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Squat          | 60         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Squat          | 60         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Squat          | 55         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Deadlift       | 90         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Deadlift       | 90         | 5    |
| 7          | 2022-06-18T00:00:00.000Z | Deadlift       | 95         | 3    |
| 7          | 2022-06-18T00:00:00.000Z | Deadlift       | 90         | 5    |
| 8          | 2022-06-19T00:00:00.000Z | Bench Press    | 55         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Bench Press    | 55         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Row            | 60         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Row            | 60         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Row            | 60         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Overhead Press | 45         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Row            | 60         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Overhead Press | 45         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Overhead Press | 45         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Overhead Press | 45         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Bench Press    | 55         | 6    |
| 8          | 2022-06-19T00:00:00.000Z | Bench Press    | 55         | 6    |
| 9          | 2022-06-21T00:00:00.000Z | Deadlift       | 95         | 4    |
| 9          | 2022-06-21T00:00:00.000Z | Deadlift       | 95         | 3    |
| 9          | 2022-06-21T00:00:00.000Z | Deadlift       | 95         | 3    |
| 9          | 2022-06-21T00:00:00.000Z | Deadlift       | 95         | 3    |
| 9          | 2022-06-21T00:00:00.000Z | Squat          | 60         | 5    |
| 9          | 2022-06-21T00:00:00.000Z | Squat          | 60         | 5    |
| 9          | 2022-06-21T00:00:00.000Z | Squat          | 60         | 5    |
| 9          | 2022-06-21T00:00:00.000Z | Squat          | 60         | 5    |
| 9          | 2022-06-21T00:00:00.000Z | Squat          | 60         | 5    |
| 9          | 2022-06-21T00:00:00.000Z | Deadlift       | 95         | 5    |
| 10         | 2022-06-23T00:00:00.000Z | Overhead Press | 45         | 5    |
| 10         | 2022-06-23T00:00:00.000Z | Bench Press    | 60         | 2    |
| 10         | 2022-06-23T00:00:00.000Z | Row            | 65         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Row            | 65         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Bench Press    | 60         | 2    |
| 10         | 2022-06-23T00:00:00.000Z | Bench Press    | 60         | 2    |
| 10         | 2022-06-23T00:00:00.000Z | Row            | 65         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Overhead Press | 45         | 5    |
| 10         | 2022-06-23T00:00:00.000Z | Overhead Press | 50         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Overhead Press | 50         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Overhead Press | 50         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Row            | 65         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Bench Press    | 60         | 2    |
| 10         | 2022-06-23T00:00:00.000Z | Row            | 65         | 3    |
| 10         | 2022-06-23T00:00:00.000Z | Bench Press    | 60         | 3    |
| 11         | 2022-06-25T00:00:00.000Z | Squat          | 65         | 3    |
| 11         | 2022-06-25T00:00:00.000Z | Deadlift       | 95         | 5    |
| 11         | 2022-06-25T00:00:00.000Z | Deadlift       | 95         | 5    |
| 11         | 2022-06-25T00:00:00.000Z | Deadlift       | 95         | 5    |
| 11         | 2022-06-25T00:00:00.000Z | Deadlift       | 100        | 3    |
| 11         | 2022-06-25T00:00:00.000Z | Deadlift       | 100        | 3    |
| 11         | 2022-06-25T00:00:00.000Z | Squat          | 60         | 5    |
| 11         | 2022-06-25T00:00:00.000Z | Squat          | 60         | 5    |
| 11         | 2022-06-25T00:00:00.000Z | Squat          | 60         | 5    |
| 11         | 2022-06-25T00:00:00.000Z | Squat          | 65         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Overhead Press | 45         | 5    |
| 12         | 2022-06-26T00:00:00.000Z | Row            | 60         | 5    |
| 12         | 2022-06-26T00:00:00.000Z | Overhead Press | 50         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Overhead Press | 50         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Row            | 60         | 5    |
| 12         | 2022-06-26T00:00:00.000Z | Bench Press    | 60         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Bench Press    | 60         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Bench Press    | 60         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Row            | 60         | 6    |
| 12         | 2022-06-26T00:00:00.000Z | Row            | 60         | 6    |
| 12         | 2022-06-26T00:00:00.000Z | Bench Press    | 60         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Bench Press    | 60         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Row            | 60         | 5    |
| 12         | 2022-06-26T00:00:00.000Z | Overhead Press | 50         | 3    |
| 12         | 2022-06-26T00:00:00.000Z | Overhead Press | 50         | 3    |
| 13         | 2022-06-28T00:00:00.000Z | Deadlift       | 100        | 5    |
| 13         | 2022-06-28T00:00:00.000Z | Deadlift       | 105        | 4    |
| 13         | 2022-06-28T00:00:00.000Z | Deadlift       | 100        | 4    |
| 13         | 2022-06-28T00:00:00.000Z | Deadlift       | 100        | 4    |
| 13         | 2022-06-28T00:00:00.000Z | Deadlift       | 95         | 5    |
| 14         | 2022-07-02T00:00:00.000Z | Squat          | 65         | 3    |
| 14         | 2022-07-02T00:00:00.000Z | Squat          | 65         | 3    |
| 14         | 2022-07-02T00:00:00.000Z | Deadlift       | 105        | 5    |
| 14         | 2022-07-02T00:00:00.000Z | Squat          | 65         | 3    |
| 14         | 2022-07-02T00:00:00.000Z | Squat          | 60         | 5    |
| 14         | 2022-07-02T00:00:00.000Z | Deadlift       | 105        | 5    |
| 14         | 2022-07-02T00:00:00.000Z | Squat          | 65         | 5    |
| 14         | 2022-07-02T00:00:00.000Z | Deadlift       | 115        | 2    |
| 14         | 2022-07-02T00:00:00.000Z | Deadlift       | 110        | 3    |
| 14         | 2022-07-02T00:00:00.000Z | Deadlift       | 100        | 5    |
| 15         | 2022-07-03T00:00:00.000Z | Overhead Press | 50         | 3    |
| 15         | 2022-07-03T00:00:00.000Z | Overhead Press | 50         | 3    |
| 15         | 2022-07-03T00:00:00.000Z | Overhead Press | 50         | 3    |
| 15         | 2022-07-03T00:00:00.000Z | Bench Press    | 60         | 4    |
| 15         | 2022-07-03T00:00:00.000Z | Bench Press    | 60         | 4    |
| 15         | 2022-07-03T00:00:00.000Z | Overhead Press | 50         | 3    |
| 15         | 2022-07-03T00:00:00.000Z | Bench Press    | 60         | 4    |
| 15         | 2022-07-03T00:00:00.000Z | Bench Press    | 60         | 4    |
| 15         | 2022-07-03T00:00:00.000Z | Bench Press    | 60         | 4    |
| 15         | 2022-07-03T00:00:00.000Z | Overhead Press | 50         | 3    |
| 16         | 2022-07-05T00:00:00.000Z | Deadlift       | 110        | 4    |
| 16         | 2022-07-05T00:00:00.000Z | Deadlift       | 110        | 3    |
| 16         | 2022-07-05T00:00:00.000Z | Deadlift       | 110        | 3    |
| 16         | 2022-07-05T00:00:00.000Z | Deadlift       | 110        | 3    |
| 16         | 2022-07-05T00:00:00.000Z | Deadlift       | 105        | 4    |
| 16         | 2022-07-05T00:00:00.000Z | Squat          | 65         | 4    |
| 16         | 2022-07-05T00:00:00.000Z | Squat          | 65         | 4    |
| 16         | 2022-07-05T00:00:00.000Z | Squat          | 65         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Bench Press    | 60         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Row            | 55         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Row            | 60         | 3    |
| 17         | 2022-07-08T00:00:00.000Z | Row            | 60         | 3    |
| 17         | 2022-07-08T00:00:00.000Z | Bench Press    | 60         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Bench Press    | 60         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Bench Press    | 60         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Bench Press    | 60         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Row            | 55         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Row            | 55         | 5    |
| 17         | 2022-07-08T00:00:00.000Z | Overhead Press | 50         | 3    |
| 17         | 2022-07-08T00:00:00.000Z | Overhead Press | 50         | 3    |
| 17         | 2022-07-08T00:00:00.000Z | Overhead Press | 50         | 3    |
| 17         | 2022-07-08T00:00:00.000Z | Overhead Press | 50         | 3    |
| 17         | 2022-07-08T00:00:00.000Z | Overhead Press | 50         | 4    |
| 18         | 2022-07-09T00:00:00.000Z | Deadlift       | 110        | 4    |
| 18         | 2022-07-09T00:00:00.000Z | Deadlift       | 110        | 5    |
| 18         | 2022-07-09T00:00:00.000Z | Deadlift       | 110        | 5    |
| 18         | 2022-07-09T00:00:00.000Z | Deadlift       | 110        | 4    |
| 18         | 2022-07-09T00:00:00.000Z | Deadlift       | 110        | 4    |
| 18         | 2022-07-09T00:00:00.000Z | Squat          | 65         | 5    |
| 18         | 2022-07-09T00:00:00.000Z | Squat          | 65         | 5    |
| 18         | 2022-07-09T00:00:00.000Z | Squat          | 65         | 5    |
| 18         | 2022-07-09T00:00:00.000Z | Squat          | 70         | 2    |
| 18         | 2022-07-09T00:00:00.000Z | Squat          | 70         | 2    |
| 19         | 2022-07-10T00:00:00.000Z | Row            | 60         | 3    |
| 19         | 2022-07-10T00:00:00.000Z | Row            | 60         | 3    |
| 19         | 2022-07-10T00:00:00.000Z | Bench Press    | 60         | 5    |
| 19         | 2022-07-10T00:00:00.000Z | Overhead Press | 50         | 4    |
| 19         | 2022-07-10T00:00:00.000Z | Overhead Press | 50         | 4    |
| 19         | 2022-07-10T00:00:00.000Z | Overhead Press | 50         | 4    |
| 19         | 2022-07-10T00:00:00.000Z | Overhead Press | 50         | 3    |
| 19         | 2022-07-10T00:00:00.000Z | Overhead Press | 45         | 5    |
| 19         | 2022-07-10T00:00:00.000Z | Bench Press    | 60         | 5    |
| 19         | 2022-07-10T00:00:00.000Z | Bench Press    | 60         | 5    |
| 19         | 2022-07-10T00:00:00.000Z | Row            | 60         | 5    |
| 19         | 2022-07-10T00:00:00.000Z | Row            | 60         | 4    |
| 19         | 2022-07-10T00:00:00.000Z | Row            | 60         | 3    |
| 19         | 2022-07-10T00:00:00.000Z | Bench Press    | 60         | 5    |
| 19         | 2022-07-10T00:00:00.000Z | Bench Press    | 60         | 5    |
| 20         | 2022-07-12T00:00:00.000Z | Squat          | 70         | 2    |
| 20         | 2022-07-12T00:00:00.000Z | Squat          | 70         | 2    |
| 20         | 2022-07-12T00:00:00.000Z | Deadlift       | 110        | 5    |
| 20         | 2022-07-12T00:00:00.000Z | Deadlift       | 110        | 5    |
| 20         | 2022-07-12T00:00:00.000Z | Deadlift       | 115        | 3    |
| 20         | 2022-07-12T00:00:00.000Z | Deadlift       | 115        | 3    |
| 20         | 2022-07-12T00:00:00.000Z | Deadlift       | 110        | 5    |
| 20         | 2022-07-12T00:00:00.000Z | Squat          | 65         | 5    |
| 20         | 2022-07-12T00:00:00.000Z | Squat          | 70         | 2    |
| 20         | 2022-07-12T00:00:00.000Z | Squat          | 70         | 2    |
| 21         | 2022-07-16T00:00:00.000Z | Deadlift       | 117.5      | 2    |
| 21         | 2022-07-16T00:00:00.000Z | Deadlift       | 115        | 4    |
| 21         | 2022-07-16T00:00:00.000Z | Deadlift       | 115        | 4    |
| 21         | 2022-07-16T00:00:00.000Z | Squat          | 70         | 3    |
| 21         | 2022-07-16T00:00:00.000Z | Squat          | 70         | 3    |
| 21         | 2022-07-16T00:00:00.000Z | Squat          | 70         | 3    |
| 21         | 2022-07-16T00:00:00.000Z | Squat          | 70         | 3    |
| 21         | 2022-07-16T00:00:00.000Z | Squat          | 70         | 3    |
| 21         | 2022-07-16T00:00:00.000Z | Deadlift       | 115        | 4    |
| 21         | 2022-07-16T00:00:00.000Z | Deadlift       | 115        | 4    |
| 22         | 2022-07-17T00:00:00.000Z | Overhead Press | 47.5       | 3    |
| 22         | 2022-07-17T00:00:00.000Z | Overhead Press | 47.5       | 3    |
| 22         | 2022-07-17T00:00:00.000Z | Overhead Press | 47.5       | 3    |
| 22         | 2022-07-17T00:00:00.000Z | Overhead Press | 47.5       | 3    |
| 22         | 2022-07-17T00:00:00.000Z | Row            | 60         | 5    |
| 22         | 2022-07-17T00:00:00.000Z | Row            | 60         | 5    |
| 22         | 2022-07-17T00:00:00.000Z | Bench Press    | 62.5       | 2    |
| 22         | 2022-07-17T00:00:00.000Z | Bench Press    | 62.5       | 2    |
| 22         | 2022-07-17T00:00:00.000Z | Bench Press    | 62.5       | 2    |
| 22         | 2022-07-17T00:00:00.000Z | Bench Press    | 62.5       | 2    |
| 22         | 2022-07-17T00:00:00.000Z | Row            | 62.5       | 4    |
| 22         | 2022-07-17T00:00:00.000Z | Row            | 62.5       | 4    |
| 22         | 2022-07-17T00:00:00.000Z | Row            | 60         | 5    |
| 22         | 2022-07-17T00:00:00.000Z | Overhead Press | 47.5       | 3    |
| 22         | 2022-07-17T00:00:00.000Z | Bench Press    | 60         | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Squat          | 65         | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Deadlift       | 115        | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Deadlift       | 115        | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Squat          | 70         | 4    |
| 23         | 2022-07-22T00:00:00.000Z | Squat          | 65         | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Squat          | 65         | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Squat          | 65         | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Deadlift       | 115        | 5    |
| 23         | 2022-07-22T00:00:00.000Z | Deadlift       | 115        | 3    |
| 23         | 2022-07-22T00:00:00.000Z | Deadlift       | 115        | 3    |
| 24         | 2022-07-24T00:00:00.000Z | Row            | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Row            | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Overhead Press | 40         | 8    |
| 24         | 2022-07-24T00:00:00.000Z | Bench Press    | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Bench Press    | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Row            | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Bench Press    | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Row            | 55         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Overhead Press | 40         | 7    |
| 24         | 2022-07-24T00:00:00.000Z | Overhead Press | 40         | 8    |
| 24         | 2022-07-24T00:00:00.000Z | Overhead Press | 40         | 8    |
| 24         | 2022-07-24T00:00:00.000Z | Bench Press    | 55         | 7    |
| 25         | 2022-07-26T00:00:00.000Z | Squat          | 60         | 8    |
| 25         | 2022-07-26T00:00:00.000Z | Squat          | 60         | 8    |
| 25         | 2022-07-26T00:00:00.000Z | Squat          | 60         | 8    |
| 25         | 2022-07-26T00:00:00.000Z | Deadlift       | 110        | 6    |
| 25         | 2022-07-26T00:00:00.000Z | Squat          | 60         | 8    |
| 25         | 2022-07-26T00:00:00.000Z | Deadlift       | 105        | 8    |
| 25         | 2022-07-26T00:00:00.000Z | Deadlift       | 110        | 6    |
| 25         | 2022-07-26T00:00:00.000Z | Deadlift       | 105        | 8    |
| 26         | 2022-07-30T00:00:00.000Z | Squat          | 65         | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Squat          | 62.5       | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Squat          | 62.5       | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Squat          | 62.5       | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Deadlift       | 110        | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Deadlift       | 110        | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Deadlift       | 110        | 6    |
| 26         | 2022-07-30T00:00:00.000Z | Deadlift       | 110        | 6    |
| 27         | 2022-08-02T00:00:00.000Z | Deadlift       | 100        | 6    |
| 27         | 2022-08-02T00:00:00.000Z | Squat          | 65         | 6    |
| 27         | 2022-08-02T00:00:00.000Z | Deadlift       | 95         | 8    |
| 27         | 2022-08-02T00:00:00.000Z | Deadlift       | 95         | 8    |
| 27         | 2022-08-02T00:00:00.000Z | Deadlift       | 100        | 6    |
| 27         | 2022-08-02T00:00:00.000Z | Squat          | 70         | 3    |
| 27         | 2022-08-02T00:00:00.000Z | Squat          | 65         | 6    |
| 27         | 2022-08-02T00:00:00.000Z | Squat          | 65         | 6    |
| 28         | 2022-08-05T00:00:00.000Z | Squat          | 65         | 6    |
| 28         | 2022-08-05T00:00:00.000Z | Squat          | 60         | 8    |
| 28         | 2022-08-05T00:00:00.000Z | Squat          | 65         | 6    |
| 28         | 2022-08-05T00:00:00.000Z | Squat          | 65         | 6    |
| 29         | 2022-08-07T00:00:00.000Z | Row            | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Bench Press    | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Bench Press    | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Bench Press    | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Bench Press    | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Overhead Press | 45         | 6    |
| 29         | 2022-08-07T00:00:00.000Z | Overhead Press | 42.5       | 6    |
| 29         | 2022-08-07T00:00:00.000Z | Overhead Press | 42.5       | 6    |
| 29         | 2022-08-07T00:00:00.000Z | Overhead Press | 42.5       | 6    |
| 29         | 2022-08-07T00:00:00.000Z | Row            | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Row            | 55         | 8    |
| 29         | 2022-08-07T00:00:00.000Z | Row            | 55         | 8    |
| 30         | 2022-08-09T00:00:00.000Z | Squat          | 65         | 7    |
| 30         | 2022-08-09T00:00:00.000Z | Squat          | 65         | 7    |
| 30         | 2022-08-09T00:00:00.000Z | Squat          | 65         | 7    |
| 30         | 2022-08-09T00:00:00.000Z | Squat          | 65         | 7    |
| 30         | 2022-08-09T00:00:00.000Z | Deadlift       | 100        | 6    |
| 30         | 2022-08-09T00:00:00.000Z | Deadlift       | 100        | 6    |
| 30         | 2022-08-09T00:00:00.000Z | Deadlift       | 100        | 6    |
| 30         | 2022-08-09T00:00:00.000Z | Deadlift       | 100        | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Bench Press    | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Bench Press    | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Bench Press    | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Overhead Press | 42.5       | 7    |
| 31         | 2022-08-11T00:00:00.000Z | Overhead Press | 42.5       | 7    |
| 31         | 2022-08-11T00:00:00.000Z | Overhead Press | 42.5       | 7    |
| 31         | 2022-08-11T00:00:00.000Z | Overhead Press | 42.5       | 7    |
| 31         | 2022-08-11T00:00:00.000Z | Bench Press    | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Row            | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Row            | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Row            | 60         | 6    |
| 31         | 2022-08-11T00:00:00.000Z | Row            | 60         | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Deadlift       | 105        | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Deadlift       | 105        | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Deadlift       | 105        | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Squat          | 65         | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Squat          | 70         | 4    |
| 32         | 2022-08-18T00:00:00.000Z | Squat          | 65         | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Squat          | 65         | 6    |
| 32         | 2022-08-18T00:00:00.000Z | Deadlift       | 105        | 6    |
| 33         | 2022-08-20T00:00:00.000Z | Squat          | 65         | 8    |
| 33         | 2022-08-20T00:00:00.000Z | Squat          | 70         | 4    |
| 33         | 2022-08-20T00:00:00.000Z | Squat          | 65         | 8    |
| 33         | 2022-08-20T00:00:00.000Z | Squat          | 65         | 8    |
| 34         | 2022-08-21T00:00:00.000Z | Row            | 63         | 4    |
| 34         | 2022-08-21T00:00:00.000Z | Overhead Press | 42.5       | 7    |
| 34         | 2022-08-21T00:00:00.000Z | Overhead Press | 42.5       | 8    |
| 34         | 2022-08-21T00:00:00.000Z | Overhead Press | 42.5       | 8    |
| 34         | 2022-08-21T00:00:00.000Z | Bench Press    | 57.5       | 7    |
| 34         | 2022-08-21T00:00:00.000Z | Bench Press    | 57.5       | 7    |
| 34         | 2022-08-21T00:00:00.000Z | Bench Press    | 60         | 5    |
| 34         | 2022-08-21T00:00:00.000Z | Row            | 63         | 5    |
| 34         | 2022-08-21T00:00:00.000Z | Row            | 63         | 5    |
| 34         | 2022-08-21T00:00:00.000Z | Bench Press    | 57.5       | 7    |
| 34         | 2022-08-21T00:00:00.000Z | Overhead Press | 42.5       | 8    |
| 34         | 2022-08-21T00:00:00.000Z | Row            | 63         | 4    |
| 35         | 2022-08-23T00:00:00.000Z | Deadlift       | 105        | 6    |
| 35         | 2022-08-23T00:00:00.000Z | Deadlift       | 105        | 6    |
| 35         | 2022-08-23T00:00:00.000Z | Deadlift       | 105        | 6    |
| 35         | 2022-08-23T00:00:00.000Z | Deadlift       | 105        | 6    |
| 35         | 2022-08-23T00:00:00.000Z | Squat          | 70         | 4    |
| 35         | 2022-08-23T00:00:00.000Z | Squat          | 70         | 4    |
| 35         | 2022-08-23T00:00:00.000Z | Squat          | 70         | 4    |
| 35         | 2022-08-23T00:00:00.000Z | Squat          | 70         | 4    |
| 36         | 2022-08-25T00:00:00.000Z | Row            | 60         | 7    |
| 36         | 2022-08-25T00:00:00.000Z | Row            | 60         | 6    |
| 36         | 2022-08-25T00:00:00.000Z | Row            | 60         | 6    |
| 36         | 2022-08-25T00:00:00.000Z | Bench Press    | 60         | 6    |
| 36         | 2022-08-25T00:00:00.000Z | Bench Press    | 55         | 8    |
| 36         | 2022-08-25T00:00:00.000Z | Row            | 60         | 6    |
| 36         | 2022-08-25T00:00:00.000Z | Bench Press    | 60         | 6    |
| 36         | 2022-08-25T00:00:00.000Z | Bench Press    | 60         | 7    |
| 37         | 2022-08-26T00:00:00.000Z | Deadlift       | 100        | 6    |
| 37         | 2022-08-26T00:00:00.000Z | Squat          | 70         | 5    |
| 37         | 2022-08-26T00:00:00.000Z | Deadlift       | 100        | 6    |
| 37         | 2022-08-26T00:00:00.000Z | Deadlift       | 95         | 8    |
| 37         | 2022-08-26T00:00:00.000Z | Deadlift       | 95         | 8    |
| 37         | 2022-08-26T00:00:00.000Z | Squat          | 70         | 5    |
| 37         | 2022-08-26T00:00:00.000Z | Squat          | 70         | 5    |
| 37         | 2022-08-26T00:00:00.000Z | Squat          | 70         | 5    |
| 38         | 2022-08-30T00:00:00.000Z | Deadlift       | 95         | 6    |
| 38         | 2022-08-30T00:00:00.000Z | Squat          | 65         | 5    |
| 38         | 2022-08-30T00:00:00.000Z | Squat          | 65         | 5    |
| 38         | 2022-08-30T00:00:00.000Z | Deadlift       | 95         | 6    |
| 38         | 2022-08-30T00:00:00.000Z | Squat          | 65         | 5    |
| 38         | 2022-08-30T00:00:00.000Z | Squat          | 65         | 5    |
| 38         | 2022-08-30T00:00:00.000Z | Squat          | 65         | 5    |
| 38         | 2022-08-30T00:00:00.000Z | Deadlift       | 95         | 6    |
| 38         | 2022-08-30T00:00:00.000Z | Deadlift       | 95         | 6    |
| 38         | 2022-08-30T00:00:00.000Z | Deadlift       | 95         | 6    |

-- View Exercises Table

SELECT *
FROM weightlifting.exercises

| exercise_id | exercise_name  | category_id |
| ----------- | -------------- | ----------- |
| 1           | Deadlift       | 4           |
| 2           | Bench Press    | 1           |
| 3           | Squat          | 3           |
| 4           | Overhead Press | 1           |
| 5           | Row            | 2           |

-- View Categories Table

SELECT *
FROM weightlifting.categories

| category_id | category_name |
| ----------- | ------------- |
| 1           | Push          |
| 2           | Pull          |
| 3           | Legs          |
| 4           | Hinge         |


