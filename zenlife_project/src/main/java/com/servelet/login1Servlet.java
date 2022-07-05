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

@WebServlet("/login1Servlet")
public class login1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("user");
		String pwd = request.getParameter("pass");
		String type = request.getParameter("type");
		PrintWriter out = response.getWriter();
		
		ArrayList <User> users = new ArrayList<>();
		
		users = DBUtilSignup.validateUserLogin(username, pwd, type);
		if(users.isEmpty() == false) {
			
			request.setAttribute("userDetails", users);
			
			//if type = Receptionist
			if(type.equals("Receptionist")) {		
				RequestDispatcher rd = request.getRequestDispatcher("RecepAcc.jsp");
				rd.forward(request, response);
			}
			//if type = Doctor
			else if(type.equals("Doctor")) {
				
				RequestDispatcher rd = request.getRequestDispatcher("#");
				rd.forward(request, response);	
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("#");
				rd.forward(request, response);	
			}
			
		}
		else {

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login details are invalid.Please enter valid username/password');");
			out.println("location='login.jsp';");
			out.println("</script>");
		}
		
	}

}
