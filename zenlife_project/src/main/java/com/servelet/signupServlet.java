package com.servelet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.*;
import java.util.*;

@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		PrintWriter out = response.getWriter();
		
		boolean isSuccess = DBUtilSignup.signup(username, password, type, contact, email);
		if(isSuccess == true) {
			
			ArrayList<User> users = new ArrayList<>();
			users = DBUtilSignup.validateUserLogin(username, password, type);
			request.setAttribute("userDetails", users);
			if(type.equals("Receptionist")) {
				
				//redirect to receiptionist page
				RequestDispatcher rd = request.getRequestDispatcher("RecepAcc.jsp");
				rd.forward(request, response);
			}
			else if(type.equals("Doctor")) {
				
				//redirect to Doctor page
				RequestDispatcher rd = request.getRequestDispatcher("#");
				rd.forward(request, response);
			}
			else {
				
				//redirect to Sister page
				RequestDispatcher rd = request.getRequestDispatcher("#");
				rd.forward(request, response);
				
			}
		}
		else {
			
			//if sign up is not successful redirect to login page again
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Your sign up is unsuccessful.Please try again');");
			out.println("location='login.jsp';");
			out.println("</script>");
		}
	}

}
