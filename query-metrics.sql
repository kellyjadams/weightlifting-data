/*

This is more advanced analysis of my weightlifting data. 

For each query:
- Summary of what the query was analyzing
- The actual query
- The results (in markdown table format)

Note: For some tables it only shows the first 5 rows but the query returns the entire lifts table. This is to save space in the query. This will be noted by either:
- Full Table: The full table (results) are shown.
- Partial Table: Only the first 5 rows are shown. 

*/

/*Volume Progression Over Time*/
-- Track the total amount of volume lifted week over week 
    SELECT 
        TO_CHAR(DATE_TRUNC('week', workout.workout_date), 'YYYY-MM-DD') AS week_starting,
        SUM(lifts.volume_lbs) AS total_volume_lifted
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.workout
        ON lifts.workout_id = workout.id
    GROUP BY 
        DATE_TRUNC('week', workout.workout_date)
    ORDER BY 
        week_starting
    ;

    -- Partial Table 
    | week_starting | total_volume_lifted |
    | ------------- | ------------------- |
    | 2022-05-30    | 2250                |
    | 2022-06-06    | 12480               |
    | 2022-06-13    | 11059               |
    | 2022-06-20    | 12405               |
    | 2022-06-27    | 7965                |

-- Compare volume prorgession across different exercise categories
    SELECT 
        categories.category_name,
        TO_CHAR(DATE_TRUNC('month', workout.workout_date), 'YYYY-MM') AS month,
        SUM(lifts.volume_lbs) AS total_volume_lifted
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.workout 
        ON lifts.workout_id = workout.id
    INNER JOIN weightlifting.exercises 
        ON lifts.exercise_id = exercises.id
    INNER JOIN weightlifting.categories 
        ON exercises.category_id = categories.id
    GROUP BY 
        categories.category_name, 
        DATE_TRUNC('month', workout.workout_date)
    ORDER BY 
        month, 
        categories.category_name
    ;

    -- Partial Table 
    | category_name | month   | total_volume_lifted |
    | ------------- | ------- | ------------------- |
    | Hinge         | 2022-06 | 13484               |
    | Legs          | 2022-06 | 7945                |
    | Pull          | 2022-06 | 7355                |
    | Push          | 2022-06 | 11605               |

/* Category Analysis */
-- Determine the most and least performed exercise categories.

    SELECT 
        COUNT(exercises.id) AS category_count,
        categories.category_name
    FROM weightlifting.exercises
    LEFT JOIN weightlifting.categories
        ON exercises.category_id = categories.id
    LEFT JOIN weightlifting.lifts
        ON exercises.id = lifts.exercise_id
    GROUP BY 
        categories.category_name
    ORDER BY 
        category_count DESC
    ;

    -- Full Table
    | category_count | category_name |
    | -------------- | ------------- |
    | 447            | Push          |
    | 300            | Legs          |
    | 293            | Hinge         |
    | 213            | Pull          |


-- Calculate the average volume lifted per exercise category.

    SELECT 
        categories.category_name,
        AVG(lifts.volume_lbs) AS average_volume_lifted
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.exercises
        ON lifts.exercise_id = exercises.id
    INNER JOIN weightlifting.categories
        ON exercises.category_id = categories.id
    GROUP BY 
        categories.category_name
    ORDER BY 
        average_volume_lifted DESC
    ;

    -- Full Table
    | category_name | average_volume_lifted |
    | ------------- | --------------------- |
    | Hinge         | 558.7935153583618     |
    | Pull          | 335.7042253521127     |
    | Legs          | 335.18333333333334    |
    | Push          | 281.68568232662193    |

/* Exercise Frequency */

-- Find out how often each exercise is performed in the entire year. 

    SELECT 
        exercises.exercise_name AS exercise_name,
        COUNT(lifts.exercise_id) AS times_performed
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.workout
        ON lifts.workout_id = workout.id
    INNER JOIN weightlifting.exercises
        ON lifts.exercise_id = exercises.id
    WHERE 
        workout.workout_date BETWEEN '2022-06-05' AND '2023-06-03'
    GROUP BY 
        exercises.exercise_name
    ORDER BY 
        times_performed DESC
    ;

    -- Full Table
    | exercise_name  | times_performed |
    | -------------- | --------------- |
    | Squat          | 300             |
    | Deadlift       | 293             |
    | Bench Press    | 226             |
    | Overhead Press | 221             |
    | Row            | 213             |

--Identify exercises that might be neglected.
    SELECT 
        exercises.exercise_name AS exercise_name,
        COUNT(lifts.exercise_id) AS times_performed
    FROM 
        weightlifting.exercises
    LEFT JOIN weightlifting.lifts
        ON exercises.id = lifts.exercise_id
    GROUP BY 
        exercises.exercise_name
    --Filter out exercises that have been performed more than the average number of times exercises are done 
    HAVING COUNT(lifts.exercise_id) <= (
        SELECT AVG(count_per_exercise) 
        FROM (SELECT 
                COUNT(exercise_id) as count_per_exercise 
                FROM weightlifting.lifts 
                GROUP BY exercise_id)
        as subquery)
    ORDER BY 
        times_performed ASC
    ;

    -- Full Table
    | exercise_name  | times_performed |
    | -------------- | --------------- |
    | Row            | 213             |
    | Overhead Press | 221             |
    | Bench Press    | 226             |


/* Workout Type Analysis */

--Analyze how many workouts are performed for each workout type.

    SELECT 
        COUNT(exercises.id) AS category_count,
        exercises.exercise_name 
    FROM weightlifting.exercises
    LEFT JOIN weightlifting.lifts
        ON exercises.id = lifts.exercise_id
    GROUP BY 
        exercises.exercise_name
    ORDER BY 
        category_count DESC
    ;

    -- Full Table
    | workout_type_name | number_of_workouts |
    | ----------------- | ------------------ |
    | Hypertrophy       | 86                 |
    | Strength          | 79                 |

--Track volume progression based on workout type (e.g., strength training vs. hypertrophy).

    SELECT 
        workout_type.workout_type_name,
        TO_CHAR(DATE_TRUNC('month', workout.workout_date), 'YYYY-MM') AS month,
        SUM(lifts.volume_lbs) AS total_volume_lifted
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.workout
        ON lifts.workout_id = workout.id
    INNER JOIN weightlifting.workout_type
        ON workout.workout_type_id = workout_type.id
    GROUP BY 
        workout_type.workout_type_name, 
        DATE_TRUNC('month', workout.workout_date)
    ORDER BY 
        month, 
        workout_type.workout_type_name
    ;

    -- Full Table
    | workout_type_name | month   | total_volume_lifted |
    | ----------------- | ------- | ------------------- |
    | Strength          | 2022-06 | 40389               |
    | Hypertrophy       | 2022-07 | 13395               |
    | Strength          | 2022-07 | 32437.5             |
    | Hypertrophy       | 2022-08 | 39204               |
    | Strength          | 2022-08 | 4475                |
    | Strength          | 2022-09 | 43307               |
    | Strength          | 2022-10 | 25843               |
    | Hypertrophy       | 2022-11 | 7845                |
    | Strength          | 2022-11 | 24598.5             |
    | Hypertrophy       | 2022-12 | 55591.5             |
    | Hypertrophy       | 2023-01 | 34777               |
    | Strength          | 2023-01 | 4687.5              |
    | Hypertrophy       | 2023-02 | 22230               |
    | Strength          | 2023-02 | 4411                |
    | Hypertrophy       | 2023-03 | 31182.5             |
    | Strength          | 2023-04 | 26095.5             |
    | Hypertrophy       | 2023-05 | 45656               |
    | Hypertrophy       | 2023-06 | 5575                |

/* Most Challenging Exercises */

--Identify exercises where the weight lifted has increased the most over the entire year.

    --Get weight for each lift in the beginning
    WITH first_exercise_weight AS (
    SELECT 
        lifts.exercise_id,
        exercises.exercise_name AS exercise_name,
        FIRST_VALUE(lifts.weight_lbs) OVER (PARTITION BY lifts.exercise_id ORDER BY workout.workout_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS initial_weight
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.workout
        ON lifts.workout_id = workout.id
    INNER JOIN weightlifting.exercises
        ON lifts.exercise_id = exercises.id
    WHERE 
        workout.workout_date BETWEEN '2022-06-05' AND '2023-06-03'
    ),

    -- Get weight for each lift at the end 
    final_exercise_weight AS (
    SELECT 
        lifts.exercise_id,
        LAST_VALUE(lifts.weight_lbs) OVER (PARTITION BY lifts.exercise_id ORDER BY workout.workout_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS final_weight
    FROM 
        weightlifting.lifts
    INNER JOIN weightlifting.workout
        ON lifts.workout_id = workout.id
    WHERE 
        workout.workout_date BETWEEN '2022-06-05' AND '2023-06-03'
    )

    -- Only get one exercise 
    SELECT DISTINCT
        first_exercise_weight.exercise_name,
        final_exercise_weight.final_weight - first_exercise_weight.initial_weight AS weight_increase
    FROM 
        first_exercise_weight
    JOIN final_exercise_weight
        ON first_exercise_weight.exercise_id = final_exercise_weight.exercise_id
    ORDER BY 
        weight_increase DESC
    ;  

    -- Full table
    | exercise_name  | weight_increase |
    | -------------- | --------------- |
    | Row            | 10              |
    | Squat          | 10              |
    | Deadlift       | 0               |
    | Bench Press    | -5              |
    | Overhead Press | -7              |

--Identify exercises with the highest average volume.
    SELECT
        exercises.exercise_name,
        AVG(lifts.weight_lbs) as avg_weight
    FROM
        weightlifting.lifts 
        LEFT JOIN weightlifting.exercises ON exercises.id = lifts.exercise_id
    GROUP BY
        exercises.exercise_name

        --Full table
        | exercise_name  | avg_weight         |
        | -------------- | ------------------ |
        | Row            | 61.833333333333336 |
        | Deadlift       | 103.63481228668942 |
        | Overhead Press | 45.16742081447964  |
        | Squat          | 65.475             |
        | Bench Press    | 58.39601769911504  |

/* Workout Consistency */

    --Count how many workouts are done each month.
    SELECT  
        TO_CHAR(DATE_TRUNC('month', workout.workout_date), 'YYYY-MM') AS month,
        COUNT(workout.id) as num_workouts
    FROM
        weightlifting.workout
    GROUP BY
        month
    ORDER BY
        month ASC

        --Full Table
        | month   | num_workouts |
        | ------- | ------------ |
        | 2022-06 | 13           |
        | 2022-07 | 13           |
        | 2022-08 | 12           |
        | 2022-09 | 16           |
        | 2022-10 | 8            |
        | 2022-11 | 12           |
        | 2022-12 | 16           |
        | 2023-01 | 17           |
        | 2023-02 | 12           |
        | 2023-03 | 13           |
        | 2023-04 | 16           |
        | 2023-05 | 15           |
        | 2023-06 | 2            |

--Identify months or periods with the highest and lowest workout frequencies.

    --Counts how many workouts are in a month 
    WITH monthly_workouts AS (
        SELECT  
            TO_CHAR(DATE_TRUNC('month', workout.workout_date), 'YYYY-MM') AS month,
            COUNT(workout.id) as num_workouts
        FROM
            weightlifting.workout
        GROUP BY
            month
    ), 
    -- Ranks results of monthly_workouts
    ranked_months AS (
        SELECT
            month,
            num_workouts,
            -- Creates ranks from highest to lowest
            RANK() OVER (ORDER BY num_workouts DESC) as rank_desc,
            -- Creates ranks from lowest to highest
            RANK() OVER (ORDER BY num_workouts ASC) as rank_asc
        FROM
            monthly_workouts
    )
    -- Main Query 
    SELECT 
        month,
        num_workouts,
        CASE 
            -- Only includes the top rank for highest and lowest exercises
            WHEN rank_desc = 1 THEN 'Highest'
            WHEN rank_asc = 1 THEN 'Lowest'
            ELSE NULL 
        END as frequency_rank
    FROM 
        ranked_months
    WHERE 
        rank_desc = 1 OR rank_asc = 1
    ORDER BY 
        num_workouts DESC;

    -- Full table
    | month   | num_workouts | frequency_rank |
    | ------- | ------------ | -------------- |
    | 2023-01 | 17           | Highest        |
    | 2023-06 | 2            | Lowest         |

/* Personal Records */

--Track the highest weight lifted for each exercise.
--Identify when personal records are broken.

/* Average Reps and Weights */

--Calculate the average reps and weight for each exercise over a certain period.
--Identify trends in lifting heavier weights or doing more reps over time.

/* Exercise Variation */

--Calculate the number of different exercises performed in a given timeframe.
--Analyze the diversity of exercises in a workout routine.

/* Intensity Analysis */
--Find out average weight lifted as a percentage of the highest weight for each exercise.
--Identify workouts or periods with the highest intensity.