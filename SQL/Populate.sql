-- Insert data into members table
INSERT INTO members (member_id, fname, lname, date_of_birth, loyalty_points)
VALUES
    (1, 'Hadi', 'Srour', '1990-05-15', 100),
    (2, 'John', 'Smith', '1985-08-22', 150),
    (3, 'Moe', 'Jassem', '1995-03-10', 0);

-- Insert data into trainers table
INSERT INTO trainers (trainer_id, fname, lname, date_of_birth)
VALUES
    (1, 'Alex', 'Mcdonald', '1980-01-20'),
    (2, 'Joe', 'Karendel', '1982-06-12');

-- Insert data into trains table
-- Below Member1 which is hadi is getting paired with trainer 1 which is alex, john also getting paired ti alex, and moe to joe
INSERT INTO trains (train_id, member_id, trainer_id)
VALUES
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 2);

-- Insert data into admins table
INSERT INTO admins (admin_id,fname, lname, date_of_birth)
VALUES
    (1,'fatima', 'doe', '1975-04-05'),
    (2,'justin', 'belly', '1988-12-15');

-- Insert data into trainer_schedule table
-- here sessions with dates are being booked for trainers
INSERT INTO trainer_schedule (session_date, trainer_id)
VALUES
    ('2023-01-10', 1),
    ('2023-01-15', 2);

-- Insert data into member_dashboard table
-- Here we are populating the member dashboard 
INSERT INTO member_dashboard (member_id, workout_routine, health_statistic, fitness_achievments)
VALUES
    (1, 'Cardio and Strength', 'Normal', 'Lost 10 lbs'),
    (2, 'Yoga', 'Excellent', 'Improved flexibility'),
	(3, 'Yoga','poor','lower back pain has gotten much better');

-- Insert data into fitness_function table
-- There are 3 class types event, class, and workshops
INSERT INTO fitness_function (fitness_function_id,trainer_id, date_booked, room, reminder_time, class_type)
VALUES
    (1,1, '2023-01-10', 'Room A', '09:00 AM', 'workshop'),
    (2,2, '2023-01-15', 'Room B', '05:30 PM', 'event'),
	(3,1, '2023-01-10', 'Room D', '09:00 AM', 'class');

-- Insert data into fitness_equipment table
INSERT INTO fitness_equipment (equipment_id,equipment_name, maintenance)
VALUES
    (1,'Treadmill', '2023-02-01'),
    (2,'Dumbbells', '2023-03-15'),
    (3,'Lat pull down machine', '2024-03-15'),
    (4,'Bench press', '2023-05-05');

-- Insert data into member_profile table
INSERT INTO member_profile (member_profile_id,member_id, fitness_goals, health_metrics, progress_notes)
VALUES
    (1,1, 'Weight loss', 'Normal BMI', 'Making good progress'),
    (2,2, 'Flexibility', 'Excellent', 'Almost met goals needs 3 more sessions till completion'),
	(3,3, 'Flexibility', 'Excellent', 'One week in, will need to add a extra day to this members routine');

-- Insert data into access_equipment table
INSERT INTO access_equipment (access_id,admin_id, equipment_id)
VALUES
    (1,1, 1),
    (2,2, 2);

-- Insert data into access_function table
INSERT INTO access_function (access_function_id,fitness_function_id, admin_id)
VALUES
    (1,1, 1),
    (2,2, 2);

-- Insert data into write_profile table
INSERT INTO write_profile (write_profile_id,trainer_id, member_profile_id)
VALUES
    (1,1, 1),
    (2,2, 2);

-- Insert data into register table
INSERT INTO register (register_id,member_id, fitness_function_id)
VALUES
    (1,1, 1),
    (2,2, 2);
