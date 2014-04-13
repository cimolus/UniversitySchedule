package com.university.schedule.domain;

public class LectureHall {
	private int id;
	private int number;
	private Building building;
	
	public LectureHall(int id, int number, Building building) {
		this.id = id;
		this.number = number;
		this.building = building;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public Building getBuilding() {
		return building;
	}

	public void setBuilding(Building building) {
		this.building = building;
	}
	
	
}
