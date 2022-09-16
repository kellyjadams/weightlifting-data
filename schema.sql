CREATE SCHEMA weightlifting;
SET search_path = weightlifting;

CREATE TABLE workout (
   "workout_date" DATE,
   "exercise_id" INTEGER,
   "category_id" INTEGER,
   "weight_lbs" FLOAT,
   "reps" INTEGER
 );
 
INSERT INTO workout
    ("workout_date", "exercise_id", "category_id", "weight_lbs", "reps")
VALUES
   ( '2022-06-05', '4' , '1' , '45' , '5' ),
   ( '2022-06-05', '4' , '1' , '45' , '5' ),
   ( '2022-06-05', '4' , '1' , '50' , '4' ),
   ( '2022-06-05', '5' , '2' , '50' , '5' ),
   ( '2022-06-05', '5' , '2' , '55' , '5' ),
   ( '2022-06-05', '5' , '2' , '60' , '5' ),
   ( '2022-06-05', '2' , '1' , '50' , '5' ),
   ( '2022-06-05', '2' , '1' , '50' , '5' ),
   ( '2022-06-05', '2' , '1' , '55' , '5' ),
   ( '2022-06-07', '1' , '4' , '85' , '4' ),
   ( '2022-06-07', '1' , '4' , '85' , '4' ),
   ( '2022-06-07', '1' , '4' , '85' , '4' ),
   ( '2022-06-07', '1' , '4' , '95' , '2' ),
   ( '2022-06-07', '3' , '3' , '45' , '5' ),
   ( '2022-06-07', '3' , '3' , '50' , '5' ),
   ( '2022-06-07', '3' , '3' , '55' , '5' ),
   ( '2022-06-07', '3' , '3' , '60' , '3' ),
   ( '2022-06-09', '4' , '1' , '45' , '5' ),
   ( '2022-06-09', '4' , '1' , '50' , '4' ),
   ( '2022-06-09', '4' , '1' , '50' , '4' ),
   ( '2022-06-09', '5' , '2' , '55' , '5' ),
   ( '2022-06-09', '5' , '2' , '55' , '5' ),
   ( '2022-06-09', '5' , '2' , '60' , '5' ),
   ( '2022-06-09', '2' , '1' , '50' , '5' ),
   ( '2022-06-09', '2' , '1' , '55' , '5' ),
   ( '2022-06-09', '2' , '1' , '55' , '5' ),
   ( '2022-06-09', '4' , '1' , '45' , '6' ),
   ( '2022-06-09', '5' , '2' , '60' , '5' ),
   ( '2022-06-09', '2' , '1' , '50' , '6' ),
   ( '2022-06-11', '1' , '4' , '75' , '5' ),
   ( '2022-06-11', '1' , '4' , '80' , '5' ),
   ( '2022-06-11', '1' , '4' , '80' , '5' ),
   ( '2022-06-11', '1' , '4' , '80' , '5' ),
   ( '2022-06-11', '1' , '4' , '85' , '5' ),
   ( '2022-06-11', '3' , '3' , '50' , '5' ),
   ( '2022-06-11', '3' , '3' , '50' , '5' ),
   ( '2022-06-11', '3' , '3' , '55' , '5' ),
   ( '2022-06-11', '3' , '3' , '55' , '5' ),
   ( '2022-06-11', '3' , '3' , '60' , '5' ),
   ( '2022-06-12', '4' , '1' , '45' , '5' ),
   ( '2022-06-12', '4' , '1' , '45' , '5' ),
   ( '2022-06-12', '4' , '1' , '45' , '5' ),
   ( '2022-06-12', '4' , '1' , '45' , '5' ),
   ( '2022-06-12', '5' , '2' , '55' , '5' ),
   ( '2022-06-12', '5' , '2' , '55' , '5' ),
   ( '2022-06-12', '5' , '2' , '60' , '5' ),
   ( '2022-06-12', '5' , '2' , '60' , '5' ),
   ( '2022-06-12', '2' , '1' , '55' , '5' ),
   ( '2022-06-12', '2' , '1' , '55' , '5' ),
   ( '2022-06-12', '2' , '1' , '55' , '5' ),
   ( '2022-06-12', '2' , '1' , '55' , '5' ),
   ( '2022-06-12', '4' , '1' , '45' , '5' ),
   ( '2022-06-12', '5' , '2' , '65' , '3' ),
   ( '2022-06-12', '2' , '1' , '55' , '5' ),
   ( '2022-06-15', '1' , '4' , '88' , '5' ),
   ( '2022-06-15', '1' , '4' , '88' , '5' ),
   ( '2022-06-15', '1' , '4' , '88' , '5' ),
   ( '2022-06-15', '1' , '4' , '88' , '5' ),
   ( '2022-06-15', '3' , '3' , '55' , '5' ),
   ( '2022-06-15', '3' , '3' , '55' , '5' ),
   ( '2022-06-15', '3' , '3' , '55' , '5' ),
   ( '2022-06-15', '3' , '3' , '60' , '5' ),
   ( '2022-06-15', '1' , '4' , '83' , '8' ),
   ( '2022-06-15', '3' , '3' , '60' , '5' ),
   ( '2022-06-18', '1' , '4' , '90' , '5' ),
   ( '2022-06-18', '1' , '4' , '90' , '5' ),
   ( '2022-06-18', '1' , '4' , '90' , '5' ),
   ( '2022-06-18', '1' , '4' , '95' , '3' ),
   ( '2022-06-18', '1' , '4' , '95' , '3' ),
   ( '2022-06-18', '3' , '3' , '55' , '5' ),
   ( '2022-06-18', '3' , '3' , '60' , '5' ),
   ( '2022-06-18', '3' , '3' , '60' , '5' ),
   ( '2022-06-18', '3' , '3' , '60' , '5' ),
   ( '2022-06-18', '3' , '3' , '55' , '5' ),
   ( '2022-06-19', '2' , '1' , '55' , '6' ),
   ( '2022-06-19', '2' , '1' , '55' , '6' ),
   ( '2022-06-19', '2' , '1' , '55' , '6' ),
   ( '2022-06-19', '2' , '1' , '55' , '6' ),
   ( '2022-06-19', '5' , '2' , '60' , '6' ),
   ( '2022-06-19', '5' , '2' , '60' , '6' ),
   ( '2022-06-19', '5' , '2' , '60' , '6' ),
   ( '2022-06-19', '5' , '2' , '60' , '6' ),
   ( '2022-06-19', '4' , '1' , '45' , '6' ),
   ( '2022-06-19', '4' , '1' , '45' , '6' ),
   ( '2022-06-19', '4' , '1' , '45' , '6' ),
   ( '2022-06-19', '4' , '1' , '45' , '6' ),
   ( '2022-06-21', '1' , '4' , '95' , '3' ),
   ( '2022-06-21', '1' , '4' , '95' , '3' ),
   ( '2022-06-21', '1' , '4' , '95' , '3' ),
   ( '2022-06-21', '1' , '4' , '95' , '4' ),
   ( '2022-06-21', '1' , '4' , '95' , '5' ),
   ( '2022-06-21', '3' , '3' , '60' , '5' ),
   ( '2022-06-21', '3' , '3' , '60' , '5' ),
   ( '2022-06-21', '3' , '3' , '60' , '5' ),
   ( '2022-06-21', '3' , '3' , '60' , '5' ),
   ( '2022-06-21', '3' , '3' , '60' , '5' ),
   ( '2022-06-23', '2' , '1' , '60' , '2' ),
   ( '2022-06-23', '2' , '1' , '60' , '2' ),
   ( '2022-06-23', '2' , '1' , '60' , '2' ),
   ( '2022-06-23', '2' , '1' , '60' , '2' ),
   ( '2022-06-23', '5' , '2' , '65' , '3' ),
   ( '2022-06-23', '4' , '1' , '50' , '3' ),
   ( '2022-06-23', '4' , '1' , '50' , '3' ),
   ( '2022-06-23', '4' , '1' , '50' , '3' ),
   ( '2022-06-23', '4' , '1' , '45' , '5' ),
   ( '2022-06-23', '2' , '1' , '60' , '3' ),
   ( '2022-06-23', '5' , '2' , '65' , '3' ),
   ( '2022-06-23', '5' , '2' , '65' , '3' ),
   ( '2022-06-23', '5' , '2' , '65' , '3' ),
   ( '2022-06-23', '5' , '2' , '65' , '3' ),
   ( '2022-06-23', '4' , '1' , '45' , '5' ),
   ( '2022-06-25', '1' , '4' , '95' , '5' ),
   ( '2022-06-25', '1' , '4' , '95' , '5' ),
   ( '2022-06-25', '1' , '4' , '95' , '5' ),
   ( '2022-06-25', '1' , '4' , '100' , '3' ),
   ( '2022-06-25', '1' , '4' , '100' , '3' ),
   ( '2022-06-25', '3' , '3' , '60' , '5' ),
   ( '2022-06-25', '3' , '3' , '60' , '5' ),
   ( '2022-06-25', '3' , '3' , '60' , '5' ),
   ( '2022-06-25', '3' , '3' , '65' , '3' ),
   ( '2022-06-25', '3' , '3' , '65' , '3' ),
   ( '2022-06-26', '4' , '1' , '45' , '5' ),
   ( '2022-06-26', '4' , '1' , '50' , '3' ),
   ( '2022-06-26', '4' , '1' , '50' , '3' ),
   ( '2022-06-26', '4' , '1' , '50' , '3' ),
   ( '2022-06-26', '4' , '1' , '50' , '3' ),
   ( '2022-06-26', '2' , '1' , '60' , '3' ),
   ( '2022-06-26', '2' , '1' , '60' , '3' ),
   ( '2022-06-26', '2' , '1' , '60' , '3' ),
   ( '2022-06-26', '2' , '1' , '60' , '3' ),
   ( '2022-06-26', '2' , '1' , '60' , '3' ),
   ( '2022-06-26', '5' , '2' , '60' , '6' ),
   ( '2022-06-26', '5' , '2' , '60' , '6' ),
   ( '2022-06-26', '5' , '2' , '60' , '5' ),
   ( '2022-06-26', '5' , '2' , '60' , '5' ),
   ( '2022-06-26', '5' , '2' , '60' , '5' ),
   ( '2022-06-28', '1' , '4' , '95' , '5' ),
   ( '2022-06-28', '1' , '4' , '100' , '4' ),
   ( '2022-06-28', '1' , '4' , '100' , '4' ),
   ( '2022-06-28', '1' , '4' , '100' , '5' ),
   ( '2022-06-28', '1' , '4' , '105' , '4' ),
   ( '2022-07-02', '1' , '4' , '100' , '5' ),
   ( '2022-07-02', '1' , '4' , '105' , '5' ),
   ( '2022-07-02', '1' , '4' , '105' , '5' ),
   ( '2022-07-02', '1' , '4' , '110' , '3' ),
   ( '2022-07-02', '1' , '4' , '115' , '2' ),
   ( '2022-07-02', '3' , '3' , '60' , '5' ),
   ( '2022-07-02', '3' , '3' , '65' , '3' ),
   ( '2022-07-02', '3' , '3' , '65' , '3' ),
   ( '2022-07-02', '3' , '3' , '65' , '3' ),
   ( '2022-07-02', '3' , '3' , '65' , '5' ),
   ( '2022-07-03', '4' , '1' , '50' , '3' ),
   ( '2022-07-03', '4' , '1' , '50' , '3' ),
   ( '2022-07-03', '4' , '1' , '50' , '3' ),
   ( '2022-07-03', '4' , '1' , '50' , '3' ),
   ( '2022-07-03', '4' , '1' , '50' , '3' ),
   ( '2022-07-03', '2' , '1' , '60' , '4' ),
   ( '2022-07-03', '2' , '1' , '60' , '4' ),
   ( '2022-07-03', '2' , '1' , '60' , '4' ),
   ( '2022-07-03', '2' , '1' , '60' , '4' ),
   ( '2022-07-03', '2' , '1' , '60' , '4' ),
   ( '2022-07-05', '1' , '4' , '105' , '4' ),
   ( '2022-07-05', '1' , '4' , '110' , '3' ),
   ( '2022-07-05', '1' , '4' , '110' , '3' ),
   ( '2022-07-05', '1' , '4' , '110' , '3' ),
   ( '2022-07-05', '1' , '4' , '110' , '4' ),
   ( '2022-07-05', '3' , '3' , '65' , '4' ),
   ( '2022-07-05', '3' , '3' , '65' , '4' ),
   ( '2022-07-05', '3' , '3' , '65' , '5' ),
   ( '2022-07-08', '2' , '1' , '60' , '5' ),
   ( '2022-07-08', '2' , '1' , '60' , '5' ),
   ( '2022-07-08', '2' , '1' , '60' , '5' ),
   ( '2022-07-08', '2' , '1' , '60' , '5' ),
   ( '2022-07-08', '2' , '1' , '60' , '5' ),
   ( '2022-07-08', '4' , '1' , '50' , '3' ),
   ( '2022-07-08', '4' , '1' , '50' , '3' ),
   ( '2022-07-08', '4' , '1' , '50' , '3' ),
   ( '2022-07-08', '4' , '1' , '50' , '3' ),
   ( '2022-07-08', '4' , '1' , '50' , '4' ),
   ( '2022-07-08', '5' , '2' , '55' , '5' ),
   ( '2022-07-08', '5' , '2' , '55' , '5' ),
   ( '2022-07-08', '5' , '2' , '55' , '5' ),
   ( '2022-07-08', '5' , '2' , '60' , '3' ),
   ( '2022-07-08', '5' , '2' , '60' , '3' ),
   ( '2022-07-09', '1' , '4' , '110' , '4' ),
   ( '2022-07-09', '1' , '4' , '110' , '4' ),
   ( '2022-07-09', '1' , '4' , '110' , '4' ),
   ( '2022-07-09', '1' , '4' , '110' , '5' ),
   ( '2022-07-09', '1' , '4' , '110' , '5' ),
   ( '2022-07-09', '3' , '3' , '65' , '5' ),
   ( '2022-07-09', '3' , '3' , '65' , '5' ),
   ( '2022-07-09', '3' , '3' , '65' , '5' ),
   ( '2022-07-09', '3' , '3' , '70' , '2' ),
   ( '2022-07-09', '3' , '3' , '70' , '2' ),
   ( '2022-07-10', '2' , '1' , '60' , '5' ),
   ( '2022-07-10', '2' , '1' , '60' , '5' ),
   ( '2022-07-10', '2' , '1' , '60' , '5' ),
   ( '2022-07-10', '2' , '1' , '60' , '5' ),
   ( '2022-07-10', '2' , '1' , '60' , '5' ),
   ( '2022-07-10', '5' , '2' , '60' , '3' ),
   ( '2022-07-10', '5' , '2' , '60' , '3' ),
   ( '2022-07-10', '5' , '2' , '60' , '3' ),
   ( '2022-07-10', '5' , '2' , '60' , '4' ),
   ( '2022-07-10', '5' , '2' , '60' , '5' ),
   ( '2022-07-10', '4' , '1' , '45' , '5' ),
   ( '2022-07-10', '4' , '1' , '50' , '3' ),
   ( '2022-07-10', '4' , '1' , '50' , '4' ),
   ( '2022-07-10', '4' , '1' , '50' , '4' ),
   ( '2022-07-10', '4' , '1' , '50' , '4' ),
   ( '2022-07-12', '1' , '4' , '110' , '5' ),
   ( '2022-07-12', '1' , '4' , '110' , '5' ),
   ( '2022-07-12', '1' , '4' , '110' , '5' ),
   ( '2022-07-12', '1' , '4' , '115' , '3' ),
   ( '2022-07-12', '1' , '4' , '115' , '3' ),
   ( '2022-07-12', '3' , '3' , '65' , '5' ),
   ( '2022-07-12', '3' , '3' , '70' , '2' ),
   ( '2022-07-12', '3' , '3' , '70' , '2' ),
   ( '2022-07-12', '3' , '3' , '70' , '2' ),
   ( '2022-07-12', '3' , '3' , '70' , '2' ),
   ( '2022-07-16', '1' , '4' , '115' , '4' ),
   ( '2022-07-16', '1' , '4' , '115' , '4' ),
   ( '2022-07-16', '1' , '4' , '115' , '4' ),
   ( '2022-07-16', '1' , '4' , '115' , '4' ),
   ( '2022-07-16', '1' , '4' , '117.5' , '2' ),
   ( '2022-07-16', '3' , '3' , '70' , '3' ),
   ( '2022-07-16', '3' , '3' , '70' , '3' ),
   ( '2022-07-16', '3' , '3' , '70' , '3' ),
   ( '2022-07-16', '3' , '3' , '70' , '3' ),
   ( '2022-07-16', '3' , '3' , '70' , '3' ),
   ( '2022-07-17', '2' , '1' , '60' , '5' ),
   ( '2022-07-17', '2' , '1' , '62.5' , '2' ),
   ( '2022-07-17', '2' , '1' , '62.5' , '2' ),
   ( '2022-07-17', '2' , '1' , '62.5' , '2' ),
   ( '2022-07-17', '2' , '1' , '62.5' , '2' ),
   ( '2022-07-17', '4' , '1' , '47.5' , '3' ),
   ( '2022-07-17', '4' , '1' , '47.5' , '3' ),
   ( '2022-07-17', '4' , '1' , '47.5' , '3' ),
   ( '2022-07-17', '4' , '1' , '47.5' , '3' ),
   ( '2022-07-17', '4' , '1' , '47.5' , '3' ),
   ( '2022-07-17', '5' , '2' , '60' , '5' ),
   ( '2022-07-17', '5' , '2' , '60' , '5' ),
   ( '2022-07-17', '5' , '2' , '60' , '5' ),
   ( '2022-07-17', '5' , '2' , '62.5' , '4' ),
   ( '2022-07-17', '5' , '2' , '62.5' , '4' ),
   ( '2022-07-22', '1' , '4' , '115' , '5' ),
   ( '2022-07-22', '1' , '4' , '115' , '5' ),
   ( '2022-07-22', '1' , '4' , '115' , '5' ),
   ( '2022-07-22', '1' , '4' , '115' , '3' ),
   ( '2022-07-22', '1' , '4' , '115' , '3' ),
   ( '2022-07-22', '3' , '3' , '70' , '4' ),
   ( '2022-07-22', '3' , '3' , '65' , '5' ),
   ( '2022-07-22', '3' , '3' , '65' , '5' ),
   ( '2022-07-22', '3' , '3' , '65' , '5' ),
   ( '2022-07-22', '3' , '3' , '65' , '5' ),
   ( '2022-07-24', '2' , '1' , '55' , '7' ),
   ( '2022-07-24', '2' , '1' , '55' , '7' ),
   ( '2022-07-24', '2' , '1' , '55' , '7' ),
   ( '2022-07-24', '2' , '1' , '55' , '7' ),
   ( '2022-07-24', '4' , '1' , '40' , '7' ),
   ( '2022-07-24', '4' , '1' , '40' , '8' ),
   ( '2022-07-24', '4' , '1' , '40' , '8' ),
   ( '2022-07-24', '4' , '1' , '40' , '8' ),
   ( '2022-07-24', '5' , '2' , '55' , '7' ),
   ( '2022-07-24', '5' , '2' , '55' , '7' ),
   ( '2022-07-24', '5' , '2' , '55' , '7' ),
   ( '2022-07-24', '5' , '2' , '55' , '7' ),
   ( '2022-07-26', '1' , '4' , '105' , '8' ),
   ( '2022-07-26', '1' , '4' , '105' , '8' ),
   ( '2022-07-26', '1' , '4' , '110' , '6' ),
   ( '2022-07-26', '1' , '4' , '110' , '6' ),
   ( '2022-07-26', '3' , '3' , '60' , '8' ),
   ( '2022-07-26', '3' , '3' , '60' , '8' ),
   ( '2022-07-26', '3' , '3' , '60' , '8' ),
   ( '2022-07-26', '3' , '3' , '60' , '8' ),
   ( '2022-07-30', '1' , '4' , '110' , '6' ),
   ( '2022-07-30', '1' , '4' , '110' , '6' ),
   ( '2022-07-30', '1' , '4' , '110' , '6' ),
   ( '2022-07-30', '1' , '4' , '110' , '6' ),
   ( '2022-07-30', '3' , '3' , '62.5' , '6' ),
   ( '2022-07-30', '3' , '3' , '62.5' , '6' ),
   ( '2022-07-30', '3' , '3' , '62.5' , '6' ),
   ( '2022-07-30', '3' , '3' , '65' , '6' ),
   ( '2022-08-02', '1' , '4' , '95' , '8' ),
   ( '2022-08-02', '1' , '4' , '95' , '8' ),
   ( '2022-08-02', '1' , '4' , '100' , '6' ),
   ( '2022-08-02', '1' , '4' , '100' , '6' ),
   ( '2022-08-02', '3' , '3' , '70' , '3' ),
   ( '2022-08-02', '3' , '3' , '65' , '6' ),
   ( '2022-08-02', '3' , '3' , '65' , '6' ),
   ( '2022-08-02', '3' , '3' , '65' , '6' ),
   ( '2022-08-05', '3' , '3' , '60' , '8' ),
   ( '2022-08-05', '3' , '3' , '65' , '6' ),
   ( '2022-08-05', '3' , '3' , '65' , '6' ),
   ( '2022-08-05', '3' , '3' , '65' , '6' ),
   ( '2022-08-07', '2' , '1' , '55' , '8' ),
   ( '2022-08-07', '2' , '1' , '55' , '8' ),
   ( '2022-08-07', '2' , '1' , '55' , '8' ),
   ( '2022-08-07', '2' , '1' , '55' , '8' ),
   ( '2022-08-07', '5' , '2' , '55' , '8' ),
   ( '2022-08-07', '5' , '2' , '55' , '8' ),
   ( '2022-08-07', '5' , '2' , '55' , '8' ),
   ( '2022-08-07', '5' , '2' , '55' , '8' ),
   ( '2022-08-07', '4' , '1' , '45' , '6' ),
   ( '2022-08-07', '4' , '1' , '42.5' , '6' ),
   ( '2022-08-07', '4' , '1' , '42.5' , '6' ),
   ( '2022-08-07', '4' , '1' , '42.5' , '6' ),
   ( '2022-08-09', '1' , '4' , '100' , '6' ),
   ( '2022-08-09', '1' , '4' , '100' , '6' ),
   ( '2022-08-09', '1' , '4' , '100' , '6' ),
   ( '2022-08-09', '1' , '4' , '100' , '6' ),
   ( '2022-08-09', '3' , '3' , '65' , '7' ),
   ( '2022-08-09', '3' , '3' , '65' , '7' ),
   ( '2022-08-09', '3' , '3' , '65' , '7' ),
   ( '2022-08-09', '3' , '3' , '65' , '7' ),
   ( '2022-08-11', '2' , '1' , '60' , '6' ),
   ( '2022-08-11', '2' , '1' , '60' , '6' ),
   ( '2022-08-11', '2' , '1' , '60' , '6' ),
   ( '2022-08-11', '2' , '1' , '60' , '6' ),
   ( '2022-08-11', '5' , '2' , '60' , '6' ),
   ( '2022-08-11', '5' , '2' , '60' , '6' ),
   ( '2022-08-11', '5' , '2' , '60' , '6' ),
   ( '2022-08-11', '5' , '2' , '60' , '6' ),
   ( '2022-08-11', '4' , '1' , '42.5' , '7' ),
   ( '2022-08-11', '4' , '1' , '42.5' , '7' ),
   ( '2022-08-11', '4' , '1' , '42.5' , '7' ),
   ( '2022-08-11', '4' , '1' , '42.5' , '7' ),
   ( '2022-08-18', '1' , '4' , '105' , '6' ),
   ( '2022-08-18', '1' , '4' , '105' , '6' ),
   ( '2022-08-18', '1' , '4' , '105' , '6' ),
   ( '2022-08-18', '1' , '4' , '105' , '6' ),
   ( '2022-08-18', '3' , '3' , '65' , '6' ),
   ( '2022-08-18', '3' , '3' , '70' , '4' ),
   ( '2022-08-18', '3' , '3' , '65' , '6' ),
   ( '2022-08-18', '3' , '3' , '65' , '6' ),
   ( '2022-08-20', '3' , '3' , '65' , '8' ),
   ( '2022-08-20', '3' , '3' , '65' , '8' ),
   ( '2022-08-20', '3' , '3' , '65' , '8' ),
   ( '2022-08-20', '3' , '3' , '70' , '4' ),
   ( '2022-08-21', '2' , '1' , '60' , '5' ),
   ( '2022-08-21', '2' , '1' , '57.5' , '7' ),
   ( '2022-08-21', '2' , '1' , '57.5' , '7' ),
   ( '2022-08-21', '2' , '1' , '57.5' , '7' ),
   ( '2022-08-21', '4' , '1' , '42.5' , '8' ),
   ( '2022-08-21', '4' , '1' , '42.5' , '8' ),
   ( '2022-08-21', '4' , '1' , '42.5' , '8' ),
   ( '2022-08-21', '4' , '1' , '42.5' , '7' ),
   ( '2022-08-21', '5' , '2' , '63' , '5' ),
   ( '2022-08-21', '5' , '2' , '63' , '5' ),
   ( '2022-08-21', '5' , '2' , '63' , '4' ),
   ( '2022-08-21', '5' , '2' , '63' , '4' ),
   ( '2022-08-23', '1' , '4' , '105' , '6' ),
   ( '2022-08-23', '1' , '4' , '105' , '6' ),
   ( '2022-08-23', '1' , '4' , '105' , '6' ),
   ( '2022-08-23', '1' , '4' , '105' , '6' ),
   ( '2022-08-23', '3' , '3' , '70' , '4' ),
   ( '2022-08-23', '3' , '3' , '70' , '4' ),
   ( '2022-08-23', '3' , '3' , '70' , '4' ),
   ( '2022-08-23', '3' , '3' , '70' , '4' ),
   ( '2022-08-25', '2' , '1' , '55' , '8' ),
   ( '2022-08-25', '2' , '1' , '60' , '6' ),
   ( '2022-08-25', '2' , '1' , '60' , '6' ),
   ( '2022-08-25', '2' , '1' , '60' , '7' ),
   ( '2022-08-25', '5' , '2' , '60' , '6' ),
   ( '2022-08-25', '5' , '2' , '60' , '6' ),
   ( '2022-08-25', '5' , '2' , '60' , '6' ),
   ( '2022-08-25', '5' , '2' , '60' , '7' ),
   ( '2022-08-26', '1' , '4' , '95' , '8' ),
   ( '2022-08-26', '1' , '4' , '95' , '8' ),
   ( '2022-08-26', '1' , '4' , '100' , '6' ),
   ( '2022-08-26', '1' , '4' , '100' , '6' ),
   ( '2022-08-26', '3' , '3' , '70' , '5' ),
   ( '2022-08-26', '3' , '3' , '70' , '5' ),
   ( '2022-08-26', '3' , '3' , '70' , '5' ),
   ( '2022-08-26', '3' , '3' , '70' , '5' ),
   ( '2022-08-30', '1' , '4' , '95' , '6' ),
   ( '2022-08-30', '1' , '4' , '95' , '6' ),
   ( '2022-08-30', '1' , '4' , '95' , '6' ),
   ( '2022-08-30', '1' , '4' , '95' , '6' ),
   ( '2022-08-30', '3' , '3' , '65' , '5' ),
   ( '2022-08-30', '3' , '3' , '65' , '5' ),
   ( '2022-08-30', '3' , '3' , '65' , '5' ),
   ( '2022-08-30', '3' , '3' , '65' , '5' ),
   ( '2022-08-30', '3' , '3' , '65' , '5' ),
   ( '2022-08-30', '1' , '4' , '95' , '6' );

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