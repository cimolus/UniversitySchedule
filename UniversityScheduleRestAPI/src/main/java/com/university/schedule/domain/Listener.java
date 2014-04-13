package com.university.schedule.domain;

import java.util.List;

public class Listener {
	private int id;
	private List<Group> groups;
	
	public Listener(int id, List<Group> groups) {
		this.id = id;
		this.groups = groups;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Group> getGroups() {
		return groups;
	}

	public void setGroups(List<Group> groups) {
		this.groups = groups;
	}
	
	
	
}
