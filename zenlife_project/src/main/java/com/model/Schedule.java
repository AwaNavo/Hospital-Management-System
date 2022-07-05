package com.model;

public class Schedule {
	
	private int doctorID;
	private String name;
	private String speciality;
	private String c_Time;
	private int roomNo;
	
	public Schedule(int doctorID, String name, String speciality, String c_Time, int roomNo) {
		super();
		this.doctorID = doctorID;
		this.name = name;
		this.speciality = speciality;
		this.c_Time = c_Time;
		this.roomNo = roomNo;
	}

	public int getDoctorID() {
		return doctorID;
	}

	public String getName() {
		return name;
	}


	public String getSpeciality() {
		return speciality;
	}

	public String getC_Time() {
		return c_Time;
	}

	public int getRoomNo() {
		return roomNo;
	}
	

}
