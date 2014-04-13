package com.university.schedule.domain;

import java.sql.Date;
import java.sql.Time;

public class ScheduleRecord {
	private int id;
	private Date date;
	private Time time;
	private Lecturer lecturer;
	private LectureHall lectureHall;
	private Listener listener;
	private ClassesForm form;
	private Subject subject;
	
	public ScheduleRecord(int id, Date date, Time time, Lecturer lecturer,
			LectureHall lectureHall, Listener listener, ClassesForm form,
			Subject subject) {
		this.id = id;
		this.date = date;
		this.time = time;
		this.lecturer = lecturer;
		this.lectureHall = lectureHall;
		this.listener = listener;
		this.form = form;
		this.subject = subject;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public Lecturer getLecturer() {
		return lecturer;
	}

	public void setLecturer(Lecturer lecturer) {
		this.lecturer = lecturer;
	}

	public LectureHall getLectureHall() {
		return lectureHall;
	}

	public void setLectureHall(LectureHall lectureHall) {
		this.lectureHall = lectureHall;
	}

	public Listener getListener() {
		return listener;
	}

	public void setListener(Listener listener) {
		this.listener = listener;
	}

	public ClassesForm getForm() {
		return form;
	}

	public void setForm(ClassesForm form) {
		this.form = form;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
	
	
	
}
