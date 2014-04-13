CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.START_CLASSES (
  START_CLASSES_ID INTEGER NOT NULL,
  START_CLASSES_DATE DATE NOT NULL,
  START_CLASSES_TIME TIMESTAMP NOT NULL,
  CONSTRAINT START_CLASSES_PK PRIMARY KEY(START_CLASSES_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.LECTURER (
    LECTURER_ID INTEGER NOT NULL,
    LECTURER_FIRSTNAME VARCHAR(50) NOT NULL,
    LECTURER_LASTNAME VARCHAR(50) NOT NULL,
    LECTURER_MIDDLENAME VARCHAR(50),
    CONSTRAINT LECTURER_PK PRIMARY KEY(LECTURER_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.GRADE (
    GRADE_ID INTEGER NOT NULL,
    GRADE_TITLE VARCHAR(50) NOT NULL,
    CONSTRAINT GRADE_PK PRIMARY KEY(GRADE_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.UNIVERSITY_BUILDING (
    UNIVERSITY_BUILDING_ID INTEGER NOT NULL,
    UNIVERSITY_BUILDING_STREET VARCHAR(50) NOT NULL,
    UNIVERSITY_BUILDING_HOUSING NUMBER(4),
    UNIVERSITY_BUILDING_NUMBER NUMBER(4) NOT NULL,
    CONSTRAINT UNIVERSITY_BUILDING_PK PRIMARY KEY(UNIVERSITY_BUILDING_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.LECTURE_HALL (
    LECTURE_HALL_ID INTEGER NOT NULL,
    LECTURE_HALL_NUMBER NUMBER(4) NOT NULL,
    CONSTRAINT LECTURE_HALL_PK PRIMARY KEY(LECTURE_HALL_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.VENUE (
    VENUE_ID INTEGER NOT NULL,
    CONSTRAINT VENUE_PK PRIMARY KEY(VENUE_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.FACULTY (
    FACULTY_ID INTEGER NOT NULL,
    FACULTY_TITLE VARCHAR(100) NOT NULL,
    CONSTRAINT FACULTY_PK PRIMARY KEY(FACULTY_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.SPECIALTY (
    SPECIALTY_ID INTEGER NOT NULL,
    SPECIALTY_TITLE VARCHAR(100) NOT NULL,
    CONSTRAINT SPECIALTY_PK PRIMARY KEY(SPECIALTY_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;	

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.EDUCATION_FORM (
    EDUCATION_FORM_ID INTEGER NOT NULL,
    EDUCATION_FORM_TITLE VARCHAR(50) NOT NULL,
    CONSTRAINT EDUCATION_FORM_PK PRIMARY KEY(EDUCATION_FORM_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.GROUPS (
    GROUPS_ID INTEGER NOT NULL,
    CONSTRAINT GROUPS_PK PRIMARY KEY(GROUPS_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.LISTENER (
    LISTENER_ID INTEGER NOT NULL,
    CONSTRAINT LISTENER_PK PRIMARY KEY(LISTENER_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;

CREATE TABLE UNIVERSITY_SCHEDULE_ADMIN.SCHEDULE (
    SCHEDULE_ID INTEGER NOT NULL,
    CONSTRAINT SCHEDULE_PK PRIMARY KEY(SCHEDULE_ID)
)TABLESPACE UNIVERSITY_SCHEDULE_TABLESPACE;