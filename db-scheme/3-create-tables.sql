CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.GRADE (
	GRADE_ID INT NOT NULL,
	PRIMARY KEY (GRADE_ID),
	GRADE_TITLE VARCHAR(50) NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.LECTURER (
	LECTURER_ID INT NOT NULL,
	PRIMARY KEY (LECTURER_ID),
	LECTURER_FIRSTNAME VARCHAR(50) NOT NULL,
	LECTURER_LASTNAME VARCHAR(50) NOT NULL,
	LECTURER_MIDDLENAME VARCHAR(50) NOT NULL,
	LECTURER_CUSTOMER_ID INT NOT NULL,
	FOREIGN KEY (LECTURER_CUSTOMER_ID) REFERENCES UNIVERSITY_SCHEDULE_ADMIN.GRADE(GRADE_ID)
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.UNIVERSITY_BUILDING (
	UNIVERSITY_BUILDING_ID INT NOT NULL,
	PRIMARY KEY (UNIVERSITY_BUILDING_ID),
	UNIVERSITY_BUILDING_STREET VARCHAR(50) NOT NULL,
	UNIVERSITY_BUILDING_HOUSING INT,
	UNIVERSITY_BUILDING_NUMBER INT NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.LECTURE_HALL (
	LECTURE_HALL_ID INT NOT NULL,
	PRIMARY KEY (LECTURE_HALL_ID),
	LECTURE_HALL_NUMBER INT NOT NULL,
	LECTURE_HALL_BUILDING_ID INT NOT NULL,
	FOREIGN KEY (LECTURE_HALL_ID)
	REFERENCES UNIVERSITY_SCHEDULE_ADMIN.UNIVERSITY_BUILDING(UNIVERSITY_BUILDING_ID)
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.FACULTY (
	FACULTY_ID INT NOT NULL,
	PRIMARY KEY (FACULTY_ID),
	FACULTY_TITLE VARCHAR(100) NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.EDUCATION_FORM (
	EDUCATION_FORM_ID INT NOT NULL,
	PRIMARY KEY (EDUCATION_FORM_ID),
	EDUCATION_FORM_TITLE VARCHAR(50) NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.SPECIALTY (
	SPECIALTY_ID INT NOT NULL,
	PRIMARY KEY (SPECIALTY_ID),
	SPECIALTY_TITLE VARCHAR(100) NOT NULL,
	SPECIALTY_FACULTY_ID INT NOT NULL,
	SPECIALTY_EDUCATION_FORM_ID INT NOT NULL,
	FOREIGN KEY (SPECIALTY_FACULTY_ID) REFERENCES 
	UNIVERSITY_SCHEDULE_ADMIN.FACULTY(FACULTY_ID),
	FOREIGN KEY (SPECIALTY_EDUCATION_FORM_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.EDUCATION_FORM(EDUCATION_FORM_ID)
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;


CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.GROUPS (
	GROUPS_ID INT NOT NULL,
	PRIMARY KEY (GROUPS_ID),
	GROUPS_SPECIALTY_ID INT NOT NULL,
	FOREIGN KEY (GROUPS_SPECIALTY_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.SPECIALTY(SPECIALTY_ID)
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.LISTENER (
	LISTENER_ID INT NOT NULL,
	PRIMARY KEY(LISTENER_ID),
	LISTENER_TITLE VARCHAR(100) NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.STUDY_GROUPS (
	STUDY_GROUPS_ID INT NOT NULL,
	PRIMARY KEY (STUDY_GROUPS_ID),
	STUDY_GROUPS_GROUP_ID INT NOT NULL,
	STUDY_GROUPS_LISTENER_ID INT NOT NULL,
	FOREIGN KEY (STUDY_GROUPS_GROUP_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.GROUPS(GROUPS_ID),
	FOREIGN KEY (STUDY_GROUPS_LISTENER_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.LISTENER(LISTENER_ID)
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.CLASSES_FORM(
	CLASSES_FORM_ID INT NOT NULL,
	PRIMARY KEY (CLASSES_FORM_ID),
	CLASSES_FORM_TITLE VARCHAR(50) NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.SUBJECT (
	SUBJECT_ID INT NOT NULL,
	PRIMARY KEY (SUBJECT_ID),
	SUBJECT_TITLE VARCHAR(50) NOT NULL
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.SCHEDULE(
	SCHEDULE_ID INT NOT NULL,
	PRIMARY KEY (SCHEDULE_ID),
	SCHEDULE_DATE DATE NOT NULL,
	SCHEDULE_TIME TIMESTAMP NOT NULL,
	SCHEDULE_LECTURER_ID INT,
	SCHEDULE_LECTURE_HALL_ID INT,
	SCHEDULE_LISTENER_ID INT,
	SCHEDULE_CLASSES_FORM INT NOT NULL,
	SCHEDULE_SUBJECT_ID INT NOT NULL,
	FOREIGN KEY (SCHEDULE_LECTURER_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.LECTURER(LECTURER_ID),
	FOREIGN KEY (SCHEDULE_LECTURE_HALL_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.LECTURE_HALL(LECTURE_HALL_ID),
	FOREIGN KEY (SCHEDULE_LISTENER_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.LISTENER(LISTENER_ID),
	FOREIGN KEY (SCHEDULE_CLASSES_FORM) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.CLASSES_FORM(CLASSES_FORM_ID),
	FOREIGN KEY (SCHEDULE_SUBJECT_ID) REFERENCES
	UNIVERSITY_SCHEDULE_ADMIN.SUBJECT(SUBJECT_ID)
) TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;













