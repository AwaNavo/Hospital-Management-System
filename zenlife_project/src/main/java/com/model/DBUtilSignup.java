package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.utilities.*;
import java.util.*;

public class DBUtilSignup {
	
	private static Connection con = null;
	private static PreparedStatement ps = null;
	
	//sign up function
	public static boolean signup(String uname,String pwd, String type, String contact, String email) {
		boolean isSuccess = false;
		String sql = "insert into user values(?,?,?,?,?,?)";
		
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setString(2, uname);
			ps.setString(3, pwd);
			ps.setString(4, type);
			ps.setString(5, contact);
			ps.setString(6, email);
			
			int rs = ps.executeUpdate();
			if(rs > 0) {
				isSuccess = true;
			}
			else
				isSuccess= false;
			ps.close();
			con.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	
	
	//login validate function
	public static ArrayList<User> validateUserLogin(String uname, String pwd, String type){
		
		ArrayList<User> al = new ArrayList<>();
		String sql =  "select * from user where uname = ? and password = ? and Type = ?";
		
		try {
		con = Connect.getDBConnection();
		ps = con.prepareStatement(sql);
		ps.setString(1, uname);
		ps.setString(2, pwd);
		ps.setString(3, type);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			int userID = rs.getInt(1);
			String username = rs.getString(2);
			String password = rs.getString(3);
			String usertype = rs.getString(4);
			String contact = rs.getString(5);
			String email = rs.getString(6);
			
			User user = new User(userID, username, password, usertype, contact, email);
			al.add(user);
		}	
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return al;
	}
}
