package com.university.schedule.domain;

public class Building {
	private int id;
	private String street;
	private int housing;
	private int number;
	
	public Building(int id, String street, int housing, int number) {
		this.id = id;
		this.street = street;
		this.housing = housing;
		this.number = number;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getHousing() {
		return housing;
	}

	public void setHousing(int housing) {
		this.housing = housing;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	
}
