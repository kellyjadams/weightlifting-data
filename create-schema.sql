CREATE SCHEMA weightlifting;
SET search_path = weightlifting;

CREATE TABLE workout (
   "workout_date" DATE,
   "exercise_id" INTEGER,
   "category_id" INTEGER,
   "weight_lbs" INTEGER,
   "reps" INTENGER
 );
 
CREATE TABLE exercises (
  "exercise_id" INTEGER,
  "exercise_name" VARCHAR(50),
  "category_id" INTEGER
); 

INSERT INTO exercises 
   ("exercise_id", "exercise_name", "category_id")
VALUES
   ('1', 'Deadlift', '4'),
   ('2', 'Bench Press', '1'),
   ('3', 'Squat', '3'),
   ('4', 'Overhead Press', '1'),
   ('5', 'Row', '2');

CREATE TABLE categories (
  "category_id" INTEGER,
  "category_name" VARCHAR(50)
); 
 
INSERT INTO categories
    ("category_id", "category_name")
VALUES
   ('1', 'Push'),
   ('2', 'Pull'),
   ('3', 'Legs'),
   ('4', 'Hinge');
  
