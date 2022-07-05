<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <!DOCTYPE html>
<html>
<head>
	<title>ZenLife Search</title>
	<meta charset="UTF-8">
	<link rel = "stylesheet" href = "css/patientCheckStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>   
    
    
<body>
 	<!-- serarch for patient register or not -->
	<div class = searchP> 
		<img src = "images/logo_transparent.png" id = "logo">
		<form method = "post" action = "searchRegiServlet">
			<input type = "text" name = "firstname" placeholder = "Enter patient first name">
			<input type = "text" name = "lastname" placeholder = "Enter patient last name"><br><br>
			<button type ="submit" name = "submitbtn" value = "search" > Search...<i class="fa fa-search" aria-hidden="true"></i></button>
			<br><br><br><br>
		</form>
	</div> 
	<div class = searchP>
	<a href = "RecepAcc.jsp"><button >BACK</button></a>
	</div>
	
	<!-- Display result  -->
	<c:forEach var = "patient" items = "${patientDetails}"> 
	<form class="form"  method= "post">
		
		 <h2>Patient Details</h2>
		 <h6>Patient ID:<input type = "text" name = "id" value = "${patient.id}" readonly></input></h6>
		 <h6>Fist Name:<input type = "text" name = "fname" value = "${patient.fname}" required></input></h6>
		 <h6>Last Name:<input type = "text" name = "lname" value = "${patient.lname}" required></input></h6>
		 <h6>Gender:<input type = "text" name = "gender" value = "${patient.gender}" required></input></h6>
		 <h6>BirthDay:<input type = "date" name = "bday" value = "${patient.bday}" required></input></h6>
		 <h6>Contact:<input type = "text" name = "contact" value = "${patient.phone}"  pattern = "[0-9]{10}" required></input></h6>
		 <h6>Email:<input type = "email" name = "email" value = "${patient.email}"  pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required></input></h6>
		 <button type = "submit" name = "updateBtn" value = "update" onclick = "form.action = 'updateServlet';">UPDATE</button>
		 <button type = "submit" name = "deleteBtn" value = "delete" onclick = "form.action = 'deleteServlet';">DELETE</button>
		
	  <div>
	    <span class="fa fa-chevron-left"></span><a href = "RecepAcc.jsp" class = "backnavi">back</a>
	    <span class="fa fa-envelope-o"></span> <a href = "#" class = "backnavi">zenLifeHospitals.com </a>
	  </div>
	</form>
	</c:forEach>
	 
 
</body>