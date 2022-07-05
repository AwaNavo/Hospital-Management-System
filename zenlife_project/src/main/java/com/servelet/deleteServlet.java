package com.servelet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.*;


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		int id = Integer.parseInt(request.getParameter("id"));
		boolean isSuccess = DBUtil.DeletePatientDetails(id);
		PrintWriter out = response.getWriter();
		
		if(isSuccess == true) {
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Successfully deleted');");
			out.println("location='patientCheck.jsp';");
			out.println("</script>");
		}
		else {
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Delete is not successful');");
			out.println("location='patientCheck.jsp';");
			out.println("</script>");
			
		}
	
	}

}
