package com.model;

public class User {
	
	private int userID;
	private String uname;
	private String password;
	private String Type;
	private String contact;
	private String email;
	
	public User(int userID, String uname, String password, String type, String contact, String email) {
		this.userID = userID;
		this.uname = uname;
		this.password = password;
		Type = type;
		this.contact = contact;
		this.email = email;
	}

	public int getUserID() {
		return userID;
	}


	public String getUname() {
		return uname;
	}
	
	public String getPassword(){
		return password;
	}

	public String getType() {
		return Type;
	}


	public String getContact() {
		return contact;
	}

	public String getEmail() {
		return email;
	}


}
