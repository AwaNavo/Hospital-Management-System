package com.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.DBUtil;
import java.util.*;
import com.model.*;

@WebServlet("/searchRegiServlet")
public class searchRegiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		try {
		boolean isAvailable = DBUtil.checkPatient(fname, lname);
		if(isAvailable == true) {
			
			ArrayList<Patient> patient = new ArrayList<>();
			
			patient = DBUtil.getPatientDetails(fname, lname);
			request.setAttribute("patientDetails",patient);
			RequestDispatcher rd = request.getRequestDispatcher("patientCheck.jsp");
			rd.forward(request, response);
		}
		else {
			
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('No results found');");
			out.println("location='patientCheck.jsp';");
			out.println("</script>");

		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
