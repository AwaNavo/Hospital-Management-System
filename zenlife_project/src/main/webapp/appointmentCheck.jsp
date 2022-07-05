<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Appointment Check</title>
	<link rel = "stylesheet" href = "css/patientCheckStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

 
	<div class = searchP> 
		<img src = "images/logo_transparent.png" id = "logo">
		<form method = "post" action = "searchAppointServlet">
			<input type = "text" name = "aID" placeholder = "Enter appointment id">
			<button type ="submit" name = submitbtn value = "search" > Search...<i class="fa fa-search" aria-hidden="true"></i></button>
			<br><br><br><br>
		</form>
	</div> 
    <div class = searchP>
	<a href = "RecepAcc.jsp"><button >BACK</button></a>
	</div>
		
	<c:forEach var = "appo" items = "${appointDetails}"> 
	<form class="form"  method= "post">
		
		 <h2>Patient Details</h2>
		 <h6>Appointment ID:<input type = "text" name = "appointid" value = "${appo.aID}" readonly></input></h6>
		 <h6>Fist Name:<input type = "text" name = "fname" value = "${appo.fname}"></input></h6>
		 <h6>Last Name:<input type = "text" name = "lname" value = "${appo.lname}"></input></h6>
		 <h6>Appointment Date:<input type = "text" name = "adate" value = "${appo.aDate}"></input></h6>
		 <h6>Appointment Doctor ID:<input type = "text" name = "did" value = "${appo.dID}"></input></h6>
		 
		
	  <div>
	    <span class="fa fa-chevron-left"></span><a href = "RecepAcc.jsp" class = "backnavi">back</a>
	    <span class="fa fa-envelope-o"></span> <a href = "#" class = "backnavi">zenLifeHospitals.com </a>
	  </div>
	</form>
	</c:forEach>

</body>
</html>