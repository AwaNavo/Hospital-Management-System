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

@WebServlet("/checkScheduleServlet")
public class checkScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String date = request.getParameter("scheduleDate");
		ArrayList <Schedule> sche = new ArrayList<>();
		sche = DBUtil.getScheduleDetails(date);
		if(sche.isEmpty() == false) {
			
			request.setAttribute("scDetails", sche);
			RequestDispatcher rd = request.getRequestDispatcher("scheduleC.jsp");
			rd.forward(request, response);
		}
		else
		{
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('No results found');");
			out.println("location='appointmentCheck.jsp';");
			out.println("</script>");
		}
	}

}
