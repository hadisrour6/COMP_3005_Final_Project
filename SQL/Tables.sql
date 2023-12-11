CREATE TABLE members(
	member_id	serial	PRIMARY KEY,
	fname		VARCHAR(255)	NOT NULL,
	lname		VARCHAR(255)	NOT NULL,
	date_of_birth	DATE,
	loyalty_points	INT
);


CREATE TABLE trainers(
	trainer_id	serial	PRIMARY KEY,
	fname		VARCHAR(255)	NOT NULL,
	lname		VARCHAR(255)	NOT NULL,
	date_of_birth	DATE
);

CREATE TABLE trains(
	train_id INT PRIMARY KEY,
	member_id	INT,
	trainer_id	INT,
	FOREIGN KEY(member_id)
		REFERENCES members(member_id),
	FOREIGN KEY(trainer_id)
		REFERENCES trainers(trainer_id)
);


CREATE TABLE admins(
	admin_id	serial	PRIMARY KEY,
	fname		VARCHAR(255)	NOT NULL,
	lname		VARCHAR(255)	NOT NULL,
	date_of_birth	DATE
);

CREATE TABLE trainer_schedule(
	session_id	serial	PRIMARY KEY,
	session_date	DATE, 
	trainer_id	INT,
	FOREIGN KEY (trainer_id)
		REFERENCES  trainers(trainer_id)
);

CREATE TABLE member_dashboard(
	member_dashboard_id	serial	PRIMARY KEY,
	member_id	INT,
	workout_routine	VARCHAR(255),
	health_statistic	VARCHAR(255),
	fitness_achievments	VARCHAR(255),
	FOREIGN KEY (member_id)
		REFERENCES  members(member_id)
);


CREATE TABLE fitness_function(
	fitness_function_id	serial	PRIMARY KEY,
	trainer_id	INT,
	date_booked	DATE,
	room	VARCHAR(255),
	reminder_time	VARCHAR(255),
	class_type 	VARCHAR(255),
	FOREIGN KEY (trainer_id)
		REFERENCES  trainers(trainer_id)
);


CREATE TABLE fitness_equipment(
	equipment_id	serial	PRIMARY KEY,
	equipment_name	VARCHAR(255),
	maintenance	DATE
);

CREATE TABLE member_profile(
	member_profile_id	serial	PRIMARY KEY,
	member_id	INT,
	fitness_goals	VARCHAR(255),
	health_metrics	VARCHAR(255),
	progress_notes	VARCHAR(255),
	FOREIGN KEY (member_id)
		REFERENCES  members(member_id)
);

CREATE TABLE access_equipment(
	access_id SERIAL PRIMARY KEY,
	admin_id	INT,
	equipment_id	INT,
	FOREIGN KEY(admin_id)
		REFERENCES admins(admin_id),
	FOREIGN KEY(equipment_id)
		REFERENCES fitness_equipment(equipment_id)
);

CREATE TABLE access_function(
	access_function_id SERIAL PRIMARY KEY,
	fitness_function_id	INT,
	admin_id	INT,
	FOREIGN KEY(admin_id)
		REFERENCES admins(admin_id),
	FOREIGN KEY(fitness_function_id)
		REFERENCES fitness_function(fitness_function_id)
);

CREATE TABLE write_profile(
	write_profile_id SERIAL PRIMARY KEY,
	trainer_id	INT,
	member_profile_id	INT,
	FOREIGN KEY(trainer_id)
		REFERENCES trainers(trainer_id),
	FOREIGN KEY(member_profile_id)
		REFERENCES member_profile(member_profile_id)
);

CREATE TABLE register(
	register_id SERIAL PRIMARY KEY,
	member_id	INT,
	fitness_function_id	INT,
	FOREIGN KEY(member_id)
		REFERENCES members(member_id),
	FOREIGN KEY(fitness_function_id)
		REFERENCES fitness_function(fitness_function_id)
	
);
