package com.university.schedule.domain;

public class Group {
	private int id;
	private Specialty specialty;
	
	public Group(int id, Specialty specialty) {
		this.id = id;
		this.specialty = specialty;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Specialty getSpecialty() {
		return specialty;
	}

	public void setSpecialty(Specialty specialty) {
		this.specialty = specialty;
	}
	
	
}
