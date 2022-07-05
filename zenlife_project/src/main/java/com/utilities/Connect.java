package com.utilities;
import java.sql.*;

public class Connect {
	
	private static String url = "jdbc:mysql://localhost:3306/zenlifedb";
	private static String uname = "awa";
	private static String pwd = "cof50*AK#L";
	
	public static Connection getDBConnection() throws Exception {
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, pwd);
		
		return con;
					
	}
	

}
