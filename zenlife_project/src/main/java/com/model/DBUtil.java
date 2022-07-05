package com.model;
import java.sql.*;

import com.utilities.*;
import java.util.*;

public class DBUtil {
	
	static Connection con = null;
	static PreparedStatement ps = null;
	
	public static boolean insertData(String fname, String lname, String gender,String bDate, String contact, String email ) {
		
		boolean isSuccess = false;
		
		try {
			
			con = Connect.getDBConnection();
			String query = "insert into patient values (?,?,?,?,?,?,?)";
			
			ps = con.prepareStatement(query);
			ps.setInt(1, 0);
			ps.setString(2,fname);
			ps.setString(3, lname);
			ps.setString(4, gender);
			ps.setString(5, bDate);
			ps.setString(6, contact);
			ps.setString(7, email);
			
			int rs = ps.executeUpdate(); //return no of roles which affected
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			ps.close();
			con.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean checkPatient(String fname, String lname) {
		
		boolean isAvailable = false;
		String query1 = "select * from patient where pFName = ? and pLName =?";
		
		try {
			
			con = Connect.getDBConnection();
			ps = con.prepareStatement(query1);
			ps.setString(1, fname);
			ps.setString(2, lname);
			
			ResultSet rs1= ps.executeQuery();
			isAvailable = rs1.next();
			ps.close();
			con.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return isAvailable;
	}
	
	
	
	
	//select function
	public static ArrayList<Patient> getPatientDetails(String fname, String lname) {
		
		ArrayList<Patient> al = new ArrayList <>();
		String sql = "select * from patient where pFName = ? and pLName = ?";
		
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, fname);
			ps.setString(2, lname);
			
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				
					int id = rs.getInt(1);
					String pfname = rs.getString(2);
					String plname = rs.getString(3);
					String sex = rs.getString(4);
					String bDay = rs.getString(5);
					String contact = rs.getString(6);
					String email = rs.getString(7);
					
					Patient p = new Patient(id, pfname, plname, sex, bDay, contact, email);
					al.add(p); //adding patient object into arraylist
					
					ps.close();
					con.close();
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return al;
	}
	
	//overload select function
	public static ArrayList<Patient> getPatientDetails(int id) {
		
		ArrayList<Patient> al = new ArrayList <>();
		String sql = "select * from patient where patientID = ?";
		
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				
					int pid = rs.getInt(1);
					String pfname = rs.getString(2);
					String plname = rs.getString(3);
					String sex = rs.getString(4);
					String bDay = rs.getString(5);
					String contact = rs.getString(6);
					String email = rs.getString(7);
					
					Patient p = new Patient(pid, pfname, plname, sex, bDay, contact, email);
					al.add(p); //adding patient object into arraylist
					
					ps.close();
					con.close();
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return al;
	}
	
	
	//update function
	public static boolean UpdatePatientDetails(int id,String fname, String lname, String gender,String bDate, String contact, String email) {
		
		boolean isSuccess = false;
		String sql = "update patient set pFName = ?, pLName = ? ,Sex = ?,birthYear = ?,contactNo = ?,email = ? where patientID = ?";
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, gender);
			ps.setString(4, bDate);
			ps.setString(5, contact);
			ps.setString(6, email);
			ps.setInt(7, id);
			
			int rs = ps.executeUpdate();
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			ps.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//delete function
	public static boolean DeletePatientDetails(int id) {
		
		boolean isSuccess = false;
		String sql = "delete from patient where patientID = ?";
		
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int result = ps.executeUpdate();
			
			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			ps.close();
			con.close();
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean checkAppointmentDetails(int id) {
		boolean isAvailable = false;
		String qry = "select * from appointment where aID = ?";
		
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(qry);
			
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			isAvailable = rs.next();
			ps.close();
			con.close();
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isAvailable;
		
	}
	public static ArrayList<Appointment> getAppointmentDetails(int id) {
		
		ArrayList <Appointment> al = new ArrayList<>();
		String qry = "select * from appointment where aID = ?";
		
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(qry);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				int aID = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String aDate = rs.getString(4);
				int docID = rs.getInt(5);
				
				Appointment ap = new Appointment(aID, fname, lname, aDate, docID);
				al.add(ap);
				
				ps.close();
				con.close();
			}
			
			
		} catch (Exception e) {
	
			e.printStackTrace();
		}
		
		return al;
	}
	
	public static ArrayList<Schedule> getScheduleDetails(String date){
		
		ArrayList <Schedule> al = new ArrayList<>();
		String qry = "select * from doctor where  Date= ?";
		try {
			con = Connect.getDBConnection();
			ps = con.prepareStatement(qry);
			ps.setString(1, date);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				int did = rs.getInt(1);
				String name = rs.getString(2);
				String special = rs.getString(3);
				String time = rs.getString(4);
				int roomNo = rs.getInt(6);
				
				Schedule sc = new Schedule(did, name, special, time, roomNo);
				al.add(sc);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return al;
	}

}
