package com.servelet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import com.model.*;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		String fname  = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String bdate = request.getParameter("bday");
		String contact= request.getParameter("contact");
		String email= request.getParameter("email");
		
		boolean isSucess = DBUtil.UpdatePatientDetails(id, fname, lname, gender, bdate, contact, email);
		if(isSucess == true) {
	
			ArrayList <Patient> patients = new ArrayList<>();
			patients = DBUtil.getPatientDetails(id);
			request.setAttribute("patientDetails", patients);
			RequestDispatcher rd = request.getRequestDispatcher("patientCheck.jsp");
			rd.forward(request, response);

		}
		else {
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Update is not successful');");
			out.println("location='patientCheck.jsp';");
			out.println("</script>");
		}
		
	}

}
