package com.university.schedule.domain;

public class Specialty {
	private int id;
	private String title;
	private Faculty faculty;
	private EducationForm educationForm;
	
	public Specialty(int id, String title, Faculty faculty, EducationForm educationForm) {
		this.id = id;
		this.title = title;
		this.faculty = faculty;
		this.educationForm = educationForm;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Faculty getFaculty() {
		return faculty;
	}

	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}

	public EducationForm getEducationForm() {
		return educationForm;
	}

	public void setEducationForm(EducationForm educationForm) {
		this.educationForm = educationForm;
	}
	
	
}
