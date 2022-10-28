CREATE SCHEMA weightlifting;
SET search_path = weightlifting;

CREATE TABLE workout (
   "workout_id" INTEGER, 
   "workout_date" DATE
 );
 
INSERT INTO workout
    ("workout_id", "workout_date")
VALUES
   ( '1', '2022-06-05' ), 
   ( '2', '2022-06-07' ), 
   ( '3', '2022-06-09' ), 
   ( '4', '2022-06-11' ), 
   ( '5', '2022-06-12' ), 
   ( '6', '2022-06-15' ), 
   ( '7', '2022-06-18' ), 
   ( '8', '2022-06-19' ), 
   ( '9', '2022-06-21' ), 
   ( '10', '2022-06-23' ), 
   ( '11', '2022-06-25' ), 
   ( '12', '2022-06-26' ), 
   ( '13', '2022-06-28' ), 
   ( '14', '2022-07-02' ), 
   ( '15', '2022-07-03' ), 
   ( '16', '2022-07-05' ), 
   ( '17', '2022-07-08' ), 
   ( '18', '2022-07-09' ), 
   ( '19', '2022-07-10' ), 
   ( '20', '2022-07-12' ), 
   ( '21', '2022-07-16' ), 
   ( '22', '2022-07-17' ), 
   ( '23', '2022-07-22' ), 
   ( '24', '2022-07-24' ), 
   ( '25', '2022-07-26' ), 
   ( '26', '2022-07-30' ), 
   ( '27', '2022-08-02' ), 
   ( '28', '2022-08-05' ), 
   ( '29', '2022-08-07' ), 
   ( '30', '2022-08-09' ), 
   ( '31', '2022-08-11' ), 
   ( '32', '2022-08-18' ), 
   ( '33', '2022-08-20' ), 
   ( '34', '2022-08-21' ), 
   ( '35', '2022-08-23' ), 
   ( '36', '2022-08-25' ), 
   ( '37', '2022-08-26' ), 
   ( '38', '2022-08-30' );

CREATE TABLE lifts (
   "workout_id" INTEGER,
   "exercise_id" INTEGER,
   "weight_lbs" FLOAT,
   "reps" INTEGER,
   "volume_lbs" FLOAT
);

INSERT INTO lifts
   ("workout_id", "exercise_id", "weight_lbs", "reps", "volume")
VALUES
   ( '1',  '4' , '45' , '5' , '225' ),
( '1',  '4' , '45' , '5' , '225' ),
( '1',  '4' , '50' , '4' , '200' ),
( '1',  '5' , '50' , '5' , '250' ),
( '1',  '5' , '55' , '5' , '275' ),
( '1',  '5' , '60' , '5' , '300' ),
( '1',  '2' , '50' , '5' , '250' ),
( '1',  '2' , '50' , '5' , '250' ),
( '1',  '2' , '55' , '5' , '275' ),
( '2',  '1' , '85' , '4' , '340' ),
( '2',  '1' , '85' , '4' , '340' ),
( '2',  '1' , '85' , '4' , '340' ),
( '2',  '1' , '95' , '2' , '190' ),
( '2',  '3' , '45' , '5' , '225' ),
( '2',  '3' , '50' , '5' , '250' ),
( '2',  '3' , '55' , '5' , '275' ),
( '2',  '3' , '60' , '3' , '180' ),
( '3',  '4' , '45' , '5' , '225' ),
( '3',  '4' , '50' , '4' , '200' ),
( '3',  '4' , '50' , '4' , '200' ),
( '3',  '5' , '55' , '5' , '275' ),
( '3',  '5' , '55' , '5' , '275' ),
( '3',  '5' , '60' , '5' , '300' ),
( '3',  '2' , '50' , '5' , '250' ),
( '3',  '2' , '55' , '5' , '275' ),
( '3',  '2' , '55' , '5' , '275' ),
( '3',  '4' , '45' , '6' , '270' ),
( '3',  '5' , '60' , '5' , '300' ),
( '3',  '2' , '50' , '6' , '300' ),
( '4',  '1' , '75' , '5' , '375' ),
( '4',  '1' , '80' , '5' , '400' ),
( '4',  '1' , '80' , '5' , '400' ),
( '4',  '1' , '80' , '5' , '400' ),
( '4',  '1' , '85' , '5' , '425' ),
( '4',  '3' , '50' , '5' , '250' ),
( '4',  '3' , '50' , '5' , '250' ),
( '4',  '3' , '55' , '5' , '275' ),
( '4',  '3' , '55' , '5' , '275' ),
( '4',  '3' , '60' , '5' , '300' ),
( '5',  '4' , '45' , '5' , '225' ),
( '5',  '4' , '45' , '5' , '225' ),
( '5',  '4' , '45' , '5' , '225' ),
( '5',  '4' , '45' , '5' , '225' ),
( '5',  '5' , '55' , '5' , '275' ),
( '5',  '5' , '55' , '5' , '275' ),
( '5',  '5' , '60' , '5' , '300' ),
( '5',  '5' , '60' , '5' , '300' ),
( '5',  '2' , '55' , '5' , '275' ),
( '5',  '2' , '55' , '5' , '275' ),
( '5',  '2' , '55' , '5' , '275' ),
( '5',  '2' , '55' , '5' , '275' ),
( '5',  '4' , '45' , '5' , '225' ),
( '5',  '5' , '65' , '3' , '195' ),
( '5',  '2' , '55' , '5' , '275' ),
( '6',  '1' , '88' , '5' , '440' ),
( '6',  '1' , '88' , '5' , '440' ),
( '6',  '1' , '88' , '5' , '440' ),
( '6',  '1' , '88' , '5' , '440' ),
( '6',  '3' , '55' , '5' , '275' ),
( '6',  '3' , '55' , '5' , '275' ),
( '6',  '3' , '55' , '5' , '275' ),
( '6',  '3' , '60' , '5' , '300' ),
( '6',  '1' , '83' , '8' , '664' ),
( '6',  '3' , '60' , '5' , '300' ),
( '7',  '1' , '90' , '5' , '450' ),
( '7',  '1' , '90' , '5' , '450' ),
( '7',  '1' , '90' , '5' , '450' ),
( '7',  '1' , '95' , '3' , '285' ),
( '7',  '1' , '95' , '3' , '285' ),
( '7',  '3' , '55' , '5' , '275' ),
( '7',  '3' , '60' , '5' , '300' ),
( '7',  '3' , '60' , '5' , '300' ),
( '7',  '3' , '60' , '5' , '300' ),
( '7',  '3' , '55' , '5' , '275' ),
( '8',  '2' , '55' , '6' , '330' ),
( '8',  '2' , '55' , '6' , '330' ),
( '8',  '2' , '55' , '6' , '330' ),
( '8',  '2' , '55' , '6' , '330' ),
( '8',  '5' , '60' , '6' , '360' ),
( '8',  '5' , '60' , '6' , '360' ),
( '8',  '5' , '60' , '6' , '360' ),
( '8',  '5' , '60' , '6' , '360' ),
( '8',  '4' , '45' , '6' , '270' ),
( '8',  '4' , '45' , '6' , '270' ),
( '8',  '4' , '45' , '6' , '270' ),
( '8',  '4' , '45' , '6' , '270' ),
( '9',  '1' , '95' , '3' , '285' ),
( '9',  '1' , '95' , '3' , '285' ),
( '9',  '1' , '95' , '3' , '285' ),
( '9',  '1' , '95' , '4' , '380' ),
( '9',  '1' , '95' , '5' , '475' ),
( '9',  '3' , '60' , '5' , '300' ),
( '9',  '3' , '60' , '5' , '300' ),
( '9',  '3' , '60' , '5' , '300' ),
( '9',  '3' , '60' , '5' , '300' ),
( '9',  '3' , '60' , '5' , '300' ),
( '10',  '2' , '60' , '2' , '120' ),
( '10',  '2' , '60' , '2' , '120' ),
( '10',  '2' , '60' , '2' , '120' ),
( '10',  '2' , '60' , '2' , '120' ),
( '10',  '5' , '65' , '3' , '195' ),
( '10',  '4' , '50' , '3' , '150' ),
( '10',  '4' , '50' , '3' , '150' ),
( '10',  '4' , '50' , '3' , '150' ),
( '10',  '4' , '45' , '5' , '225' ),
( '10',  '2' , '60' , '3' , '180' ),
( '10',  '5' , '65' , '3' , '195' ),
( '10',  '5' , '65' , '3' , '195' ),
( '10',  '5' , '65' , '3' , '195' ),
( '10',  '5' , '65' , '3' , '195' ),
( '10',  '4' , '45' , '5' , '225' ),
( '11',  '1' , '95' , '5' , '475' ),
( '11',  '1' , '95' , '5' , '475' ),
( '11',  '1' , '95' , '5' , '475' ),
( '11',  '1' , '100' , '3' , '300' ),
( '11',  '1' , '100' , '3' , '300' ),
( '11',  '3' , '60' , '5' , '300' ),
( '11',  '3' , '60' , '5' , '300' ),
( '11',  '3' , '60' , '5' , '300' ),
( '11',  '3' , '65' , '3' , '195' ),
( '11',  '3' , '65' , '3' , '195' ),
( '12',  '4' , '45' , '5' , '225' ),
( '12',  '4' , '50' , '3' , '150' ),
( '12',  '4' , '50' , '3' , '150' ),
( '12',  '4' , '50' , '3' , '150' ),
( '12',  '4' , '50' , '3' , '150' ),
( '12',  '2' , '60' , '3' , '180' ),
( '12',  '2' , '60' , '3' , '180' ),
( '12',  '2' , '60' , '3' , '180' ),
( '12',  '2' , '60' , '3' , '180' ),
( '12',  '2' , '60' , '3' , '180' ),
( '12',  '5' , '60' , '6' , '360' ),
( '12',  '5' , '60' , '6' , '360' ),
( '12',  '5' , '60' , '5' , '300' ),
( '12',  '5' , '60' , '5' , '300' ),
( '12',  '5' , '60' , '5' , '300' ),
( '13',  '1' , '95' , '5' , '475' ),
( '13',  '1' , '100' , '4' , '400' ),
( '13',  '1' , '100' , '4' , '400' ),
( '13',  '1' , '100' , '5' , '500' ),
( '13',  '1' , '105' , '4' , '420' ),
( '14',  '1' , '100' , '5' , '500' ),
( '14',  '1' , '105' , '5' , '525' ),
( '14',  '1' , '105' , '5' , '525' ),
( '14',  '1' , '110' , '3' , '330' ),
( '14',  '1' , '115' , '2' , '230' ),
( '14',  '3' , '60' , '5' , '300' ),
( '14',  '3' , '65' , '3' , '195' ),
( '14',  '3' , '65' , '3' , '195' ),
( '14',  '3' , '65' , '3' , '195' ),
( '14',  '3' , '65' , '5' , '325' ),
( '15',  '4' , '50' , '3' , '150' ),
( '15',  '4' , '50' , '3' , '150' ),
( '15',  '4' , '50' , '3' , '150' ),
( '15',  '4' , '50' , '3' , '150' ),
( '15',  '4' , '50' , '3' , '150' ),
( '15',  '2' , '60' , '4' , '240' ),
( '15',  '2' , '60' , '4' , '240' ),
( '15',  '2' , '60' , '4' , '240' ),
( '15',  '2' , '60' , '4' , '240' ),
( '15',  '2' , '60' , '4' , '240' ),
( '16',  '1' , '105' , '4' , '420' ),
( '16',  '1' , '110' , '3' , '330' ),
( '16',  '1' , '110' , '3' , '330' ),
( '16',  '1' , '110' , '3' , '330' ),
( '16',  '1' , '110' , '4' , '440' ),
( '16',  '3' , '65' , '4' , '260' ),
( '16',  '3' , '65' , '4' , '260' ),
( '16',  '3' , '65' , '5' , '325' ),
( '17',  '2' , '60' , '5' , '300' ),
( '17',  '2' , '60' , '5' , '300' ),
( '17',  '2' , '60' , '5' , '300' ),
( '17',  '2' , '60' , '5' , '300' ),
( '17',  '2' , '60' , '5' , '300' ),
( '17',  '4' , '50' , '3' , '150' ),
( '17',  '4' , '50' , '3' , '150' ),
( '17',  '4' , '50' , '3' , '150' ),
( '17',  '4' , '50' , '3' , '150' ),
( '17',  '4' , '50' , '4' , '200' ),
( '17',  '5' , '55' , '5' , '275' ),
( '17',  '5' , '55' , '5' , '275' ),
( '17',  '5' , '55' , '5' , '275' ),
( '17',  '5' , '60' , '3' , '180' ),
( '17',  '5' , '60' , '3' , '180' ),
( '18',  '1' , '110' , '4' , '440' ),
( '18',  '1' , '110' , '4' , '440' ),
( '18',  '1' , '110' , '4' , '440' ),
( '18',  '1' , '110' , '5' , '550' ),
( '18',  '1' , '110' , '5' , '550' ),
( '18',  '3' , '65' , '5' , '325' ),
( '18',  '3' , '65' , '5' , '325' ),
( '18',  '3' , '65' , '5' , '325' ),
( '18',  '3' , '70' , '2' , '140' ),
( '18',  '3' , '70' , '2' , '140' ),
( '19',  '2' , '60' , '5' , '300' ),
( '19',  '2' , '60' , '5' , '300' ),
( '19',  '2' , '60' , '5' , '300' ),
( '19',  '2' , '60' , '5' , '300' ),
( '19',  '2' , '60' , '5' , '300' ),
( '19',  '5' , '60' , '3' , '180' ),
( '19',  '5' , '60' , '3' , '180' ),
( '19',  '5' , '60' , '3' , '180' ),
( '19',  '5' , '60' , '4' , '240' ),
( '19',  '5' , '60' , '5' , '300' ),
( '19',  '4' , '45' , '5' , '225' ),
( '19',  '4' , '50' , '3' , '150' ),
( '19',  '4' , '50' , '4' , '200' ),
( '19',  '4' , '50' , '4' , '200' ),
( '19',  '4' , '50' , '4' , '200' ),
( '20',  '1' , '110' , '5' , '550' ),
( '20',  '1' , '110' , '5' , '550' ),
( '20',  '1' , '110' , '5' , '550' ),
( '20',  '1' , '115' , '3' , '345' ),
( '20',  '1' , '115' , '3' , '345' ),
( '20',  '3' , '65' , '5' , '325' ),
( '20',  '3' , '70' , '2' , '140' ),
( '20',  '3' , '70' , '2' , '140' ),
( '20',  '3' , '70' , '2' , '140' ),
( '20',  '3' , '70' , '2' , '140' ),
( '21',  '1' , '115' , '4' , '460' ),
( '21',  '1' , '115' , '4' , '460' ),
( '21',  '1' , '115' , '4' , '460' ),
( '21',  '1' , '115' , '4' , '460' ),
( '21',  '1' , '117.5' , '2' , '235' ),
( '21',  '3' , '70' , '3' , '210' ),
( '21',  '3' , '70' , '3' , '210' ),
( '21',  '3' , '70' , '3' , '210' ),
( '21',  '3' , '70' , '3' , '210' ),
( '21',  '3' , '70' , '3' , '210' ),
( '22',  '2' , '60' , '5' , '300' ),
( '22',  '2' , '62.5' , '2' , '125' ),
( '22',  '2' , '62.5' , '2' , '125' ),
( '22',  '2' , '62.5' , '2' , '125' ),
( '22',  '2' , '62.5' , '2' , '125' ),
( '22',  '4' , '47.5' , '3' , '142.5' ),
( '22',  '4' , '47.5' , '3' , '142.5' ),
( '22',  '4' , '47.5' , '3' , '142.5' ),
( '22',  '4' , '47.5' , '3' , '142.5' ),
( '22',  '4' , '47.5' , '3' , '142.5' ),
( '22',  '5' , '60' , '5' , '300' ),
( '22',  '5' , '60' , '5' , '300' ),
( '22',  '5' , '60' , '5' , '300' ),
( '22',  '5' , '62.5' , '4' , '250' ),
( '22',  '5' , '62.5' , '4' , '250' ),
( '23',  '1' , '115' , '5' , '575' ),
( '23',  '1' , '115' , '5' , '575' ),
( '23',  '1' , '115' , '5' , '575' ),
( '23',  '1' , '115' , '3' , '345' ),
( '23',  '1' , '115' , '3' , '345' ),
( '23',  '3' , '70' , '4' , '280' ),
( '23',  '3' , '65' , '5' , '325' ),
( '23',  '3' , '65' , '5' , '325' ),
( '23',  '3' , '65' , '5' , '325' ),
( '23',  '3' , '65' , '5' , '325' ),
( '24',  '2' , '55' , '7' , '385' ),
( '24',  '2' , '55' , '7' , '385' ),
( '24',  '2' , '55' , '7' , '385' ),
( '24',  '2' , '55' , '7' , '385' ),
( '24',  '4' , '40' , '7' , '280' ),
( '24',  '4' , '40' , '8' , '320' ),
( '24',  '4' , '40' , '8' , '320' ),
( '24',  '4' , '40' , '8' , '320' ),
( '24',  '5' , '55' , '7' , '385' ),
( '24',  '5' , '55' , '7' , '385' ),
( '24',  '5' , '55' , '7' , '385' ),
( '24',  '5' , '55' , '7' , '385' ),
( '25',  '1' , '105' , '8' , '840' ),
( '25',  '1' , '105' , '8' , '840' ),
( '25',  '1' , '110' , '6' , '660' ),
( '25',  '1' , '110' , '6' , '660' ),
( '25',  '3' , '60' , '8' , '480' ),
( '25',  '3' , '60' , '8' , '480' ),
( '25',  '3' , '60' , '8' , '480' ),
( '25',  '3' , '60' , '8' , '480' ),
( '26',  '1' , '110' , '6' , '660' ),
( '26',  '1' , '110' , '6' , '660' ),
( '26',  '1' , '110' , '6' , '660' ),
( '26',  '1' , '110' , '6' , '660' ),
( '26',  '3' , '62.5' , '6' , '375' ),
( '26',  '3' , '62.5' , '6' , '375' ),
( '26',  '3' , '62.5' , '6' , '375' ),
( '26',  '3' , '65' , '6' , '390' ),
( '27',  '1' , '95' , '8' , '760' ),
( '27',  '1' , '95' , '8' , '760' ),
( '27',  '1' , '100' , '6' , '600' ),
( '27',  '1' , '100' , '6' , '600' ),
( '27',  '3' , '70' , '3' , '210' ),
( '27',  '3' , '65' , '6' , '390' ),
( '27',  '3' , '65' , '6' , '390' ),
( '27',  '3' , '65' , '6' , '390' ),
( '28',  '3' , '60' , '8' , '480' ),
( '28',  '3' , '65' , '6' , '390' ),
( '28',  '3' , '65' , '6' , '390' ),
( '28',  '3' , '65' , '6' , '390' ),
( '29',  '2' , '55' , '8' , '440' ),
( '29',  '2' , '55' , '8' , '440' ),
( '29',  '2' , '55' , '8' , '440' ),
( '29',  '2' , '55' , '8' , '440' ),
( '29',  '5' , '55' , '8' , '440' ),
( '29',  '5' , '55' , '8' , '440' ),
( '29',  '5' , '55' , '8' , '440' ),
( '29',  '5' , '55' , '8' , '440' ),
( '29',  '4' , '45' , '6' , '270' ),
( '29',  '4' , '42.5' , '6' , '255' ),
( '29',  '4' , '42.5' , '6' , '255' ),
( '29',  '4' , '42.5' , '6' , '255' ),
( '30',  '1' , '100' , '6' , '600' ),
( '30',  '1' , '100' , '6' , '600' ),
( '30',  '1' , '100' , '6' , '600' ),
( '30',  '1' , '100' , '6' , '600' ),
( '30',  '3' , '65' , '7' , '455' ),
( '30',  '3' , '65' , '7' , '455' ),
( '30',  '3' , '65' , '7' , '455' ),
( '30',  '3' , '65' , '7' , '455' ),
( '31',  '2' , '60' , '6' , '360' ),
( '31',  '2' , '60' , '6' , '360' ),
( '31',  '2' , '60' , '6' , '360' ),
( '31',  '2' , '60' , '6' , '360' ),
( '31',  '5' , '60' , '6' , '360' ),
( '31',  '5' , '60' , '6' , '360' ),
( '31',  '5' , '60' , '6' , '360' ),
( '31',  '5' , '60' , '6' , '360' ),
( '31',  '4' , '42.5' , '7' , '297.5' ),
( '31',  '4' , '42.5' , '7' , '297.5' ),
( '31',  '4' , '42.5' , '7' , '297.5' ),
( '31',  '4' , '42.5' , '7' , '297.5' ),
( '32',  '1' , '105' , '6' , '630' ),
( '32',  '1' , '105' , '6' , '630' ),
( '32',  '1' , '105' , '6' , '630' ),
( '32',  '1' , '105' , '6' , '630' ),
( '32',  '3' , '65' , '6' , '390' ),
( '32',  '3' , '70' , '4' , '280' ),
( '32',  '3' , '65' , '6' , '390' ),
( '32',  '3' , '65' , '6' , '390' ),
( '33',  '3' , '65' , '8' , '520' ),
( '33',  '3' , '65' , '8' , '520' ),
( '33',  '3' , '65' , '8' , '520' ),
( '33',  '3' , '70' , '4' , '280' ),
( '34',  '2' , '60' , '5' , '300' ),
( '34',  '2' , '57.5' , '7' , '402.5' ),
( '34',  '2' , '57.5' , '7' , '402.5' ),
( '34',  '2' , '57.5' , '7' , '402.5' ),
( '34',  '4' , '42.5' , '8' , '340' ),
( '34',  '4' , '42.5' , '8' , '340' ),
( '34',  '4' , '42.5' , '8' , '340' ),
( '34',  '4' , '42.5' , '7' , '297.5' ),
( '34',  '5' , '63' , '5' , '315' ),
( '34',  '5' , '63' , '5' , '315' ),
( '34',  '5' , '63' , '4' , '252' ),
( '34',  '5' , '63' , '4' , '252' ),
( '35',  '1' , '105' , '6' , '630' ),
( '35',  '1' , '105' , '6' , '630' ),
( '35',  '1' , '105' , '6' , '630' ),
( '35',  '1' , '105' , '6' , '630' ),
( '35',  '3' , '70' , '4' , '280' ),
( '35',  '3' , '70' , '4' , '280' ),
( '35',  '3' , '70' , '4' , '280' ),
( '35',  '3' , '70' , '4' , '280' ),
( '36',  '2' , '55' , '8' , '440' ),
( '36',  '2' , '60' , '6' , '360' ),
( '36',  '2' , '60' , '6' , '360' ),
( '36',  '2' , '60' , '7' , '420' ),
( '36',  '5' , '60' , '6' , '360' ),
( '36',  '5' , '60' , '6' , '360' ),
( '36',  '5' , '60' , '6' , '360' ),
( '36',  '5' , '60' , '7' , '420' ),
( '37',  '1' , '95' , '8' , '760' ),
( '37',  '1' , '95' , '8' , '760' ),
( '37',  '1' , '100' , '6' , '600' ),
( '37',  '1' , '100' , '6' , '600' ),
( '37',  '3' , '70' , '5' , '350' ),
( '37',  '3' , '70' , '5' , '350' ),
( '37',  '3' , '70' , '5' , '350' ),
( '37',  '3' , '70' , '5' , '350' ),
( '38',  '1' , '95' , '6' , '570' ),
( '38',  '1' , '95' , '6' , '570' ),
( '38',  '1' , '95' , '6' , '570' ),
( '38',  '1' , '95' , '6' , '570' ),
( '38',  '3' , '65' , '5' , '325' ),
( '38',  '3' , '65' , '5' , '325' ),
( '38',  '3' , '65' , '5' , '325' ),
( '38',  '3' , '65' , '5' , '325' ),
( '38',  '3' , '65' , '5' , '325' ),
( '38',  '1' , '95' , '6' , '570' );

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
