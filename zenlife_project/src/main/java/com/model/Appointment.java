package com.model;

public class Appointment {
	private int aID;
	private String fname;
	private String lname;
	private String aDate;
	private int dID;
	
	public Appointment(int aID, String fname, String lname, String aDate, int dID) {
		
		this.aID = aID;
		this.fname = fname;
		this.lname = lname;
		this.aDate = aDate;
		this.dID = dID;
	}

	public int getaID() {
		return aID;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}


	public String getaDate() {
		return aDate;
	}

	public int getdID() {
		return dID;
	}

}
