-- Select all members
SELECT * FROM members;

-- Select all trainers
SELECT * FROM trainers;

-- Select all fitness equipment
SELECT * FROM fitness_equipment;

-- Inserting a new member call James Charles
INSERT INTO members (member_id,fname, lname, date_of_birth, loyalty_points) VALUES (4, 'James','Charles', '2000-01-01', 50);

-- Setting loyalty points for member 3 to 50
UPDATE members SET loyalty_points = 50 WHERE member_id = 1;

--Set new fitness goal for member with ID 1 (Hadi Srour)
UPDATE member_profile SET fitness_goals = 'Muscle Gain' WHERE member_id = 1;

-- List all trainers who are scheduled for 2023-01-10
SELECT trainers.* FROM trainers JOIN trainer_schedule ON trainers.trainer_id = trainer_schedule.trainer_id WHERE session_date = '2023-01-10';

-- Insert a new trainer named Jawad Baker
INSERT INTO trainers (trainer_id, fname, lname, date_of_birth) VALUES (3, 'Jawad', 'Trainer', '1985-05-20');

-- Updating member 2’s workout routine
UPDATE member_dashboard SET workout_routine = 'Weightlifting' WHERE member_id = 1;

-- Adding 10 loyalty point to member id 2
UPDATE members SET loyalty_points= loyalty_points + 10 WHERE member_id = 1;

-- Deleting member with ID 3 
DELETE FROM trains WHERE member_id = 3;
DELETE FROM member_dashboard WHERE member_id = 3;
DELETE FROM member_profile WHERE member_id = 3;
DELETE FROM members WHERE member_id = 3;
