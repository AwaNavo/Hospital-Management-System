package com.servelet;

import com.model.*;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insertServlet")
public class insertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gender;
		
		String fname = request.getParameter("pfname");
		String lname = request.getParameter("plname");
		String sex = request.getParameter("pgender");
		String date = request.getParameter("pBdate");
		String phone = request.getParameter("pcontact");
		String email = request.getParameter("pemail");
		
		if(sex.equals("Male")) {
			
			gender = "M";
		}
		else {
			gender = "F";
		}
		
		//send this data to DButil class
		boolean success = DBUtil.insertData(fname, lname, gender,date,phone, email);
		if(success == true) {
			
			RequestDispatcher rd = request.getRequestDispatcher("RegisterSuccess.jsp");
			rd.forward(request, response);
		}
		else {
			
			RequestDispatcher rd2 = request.getRequestDispatcher("registerFailed.jsp");
			rd2.forward(request, response);
			
		}	
			
	
	}

}
