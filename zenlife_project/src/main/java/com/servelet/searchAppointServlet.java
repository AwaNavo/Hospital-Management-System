package com.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.*;

@WebServlet("/searchAppointServlet")
public class searchAppointServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int aID = Integer.parseInt(request.getParameter("aID"));
		boolean isAvailable = DBUtil.checkAppointmentDetails(aID);
		
		if(isAvailable == true) {
			 
			ArrayList<Appointment> appointments = new ArrayList <>();
			appointments = DBUtil.getAppointmentDetails(aID);
			request.setAttribute("appointDetails", appointments);
			RequestDispatcher rd = request.getRequestDispatcher("appointmentCheck.jsp");
			rd.forward(request, response);
		}
		else {
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('No results found');");
			out.println("location='appointmentCheck.jsp';");
			out.println("</script>");
		}
		
	}

}
