package com.model;

public class Patient {
	
	private int id;
	private String fname;
	private String lname;
	private String gender;
	private String bday;
	private String phone;
	private String email;
	
	public Patient(int id, String fname, String lname, String gender, String bday, String phone, String email) {
		
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.bday = bday;
		this.phone = phone;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}

	public String getGender() {
		return gender;
	}


	public String getBday() {
		return bday;
	}

	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}

	
	

}
