<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Receptionist  Account</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="css/RecAccStyle.css">
		<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>	
		
	<body class="w3-light-grey" >
		
		<!-- Page Container -->
		<div class="w3-content w3-margin-top" style="max-width:1400px;">
		
		  <!-- The Grid -->
		  <div class="w3-row-padding" >
		  
		    <!-- Left Column -->
		    <div class="w3-third" >
		    
		      <div class="w3-white w3-text-grey w3-card-4" >
		        <div class="w3-display-container"  style = "background:#408080">
		         <img src="images/logo_transparent.png" style="width:100%" alt="ZenLife">
		          <div class="w3-display-bottomleft w3-container w3-text-black" >
		           
		            <h2>Profile  </h2>
		            <hr>
		          </div>
		        </div>
		        
		        <div class="w3-container"  style = "background:#408080">
		        <c:forEach var = "user" items = "${userDetails}"> 
		          <h4 class = "parCol"> Hello ${user.uname} <i class="fa fa-user" aria-hidden="true"></i></h4>
		          <br>
		          <p class = "parCol"><i class="fa fa-id-badge"></i>  UserID:  ${user.userID}</p>
		          <p class = "parCol"><i class="fa fa-briefcase "></i> Position:  ${user.type}</p>
		          <p class = "parCol"><i class="fa fa-phone"></i>  Phone:  ${user.contact}</p>
		          <p class = "parCol"><i class="fa fa-envelope "></i> Email:  ${user.email}</p>
		          <br><br><br><br><br><br><br><br><br><br><br><br><br>
		         </c:forEach>
				  <hr>
		        </div>
		        
		      </div>
		
		    <!-- End Left Column -->
		    </div>
		
		    <!-- Right Column -->
		    <div class="w3-twothird" >
		    
		      <div class="w3-container w3-card w3-white w3-margin-bottom" >
		        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-user-circle-o fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Patient Registration</h2>
		        <div class="w3-container" >
		          <h5 class="w3-opacity"><b>Check Patient Registration</b></h5>
		          <a href = "patientCheck.jsp"><button type = "submit" name = "checkRegi" value = "checkPRegi" class = "button" ><i class="fa fa-check-square-o fa-fw w3-margin-right"></i> Check Registration </button></a>
		          <hr>
		        </div>
		        
		        <div class="w3-container" >
		          
		          <h5 class="w3-opacity"><b>Register Patient Now</b></h5>
 				  <a href = "patientRegister.jsp"><button type = "submit" name = "regiP" value = "registerP" class = "button" ><i class="fa fa-user-plus fa-fw w3-margin-right"></i> Register Patient </button></a>
		          <hr>
		        </div>
		        
		        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-calendar fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Patient Appointments</h2>
		        <div class="w3-container"  >
		          <h5 class="w3-opacity"><b>Check Patient Appointment</b></h5>
		          <a href = "appointmentCheck.jsp"><button type = "submit" name = "checkApp" value = "checkAppoint" class = "button"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Check Appointment</button></a>
		          <p><i>Confirm patient appointments || click this button</i></p>
		          <hr>
		        </div>
		        
		        <div class="w3-container">
		          <h5 class="w3-opacity"><b>Daily Channeling schedule</b></h5>
		          <h6 class="w3-text-teal"><i class="fa fa-calendar-o fa-fw w3-margin-right"></i>Appointment schedule </h6>
		          <p><i>Search for schedule</i></p>
		          <a href = "scheduleC.jsp"><button type = "submit" name = "checkSche" value = "checkShedule" class = "button"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Check Schedule</button></a>
		          <br>
		          <a href = "mainpage.jsp"><button class = "button"><i class="fa fa-angle-double-left" aria-hidden="true"></i>  Back to Home Page</button></a>
		          <br><br><br><br>
		          <hr>
		        </div>

		      </div>

		
		    <!-- End Right Column -->
		    </div>
		    
		  <!-- End Grid -->
		  </div>
		  
		  <!-- End Page Container -->
		</div>
		
		<footer class="w3-container w3-teal w3-center w3-margin-top" >
		  <p>ZenLife || Healthy Life || Care</p>
		  <i class="fa fa-facebook-official w3-hover-opacity"></i>
		  <i class="fa fa-instagram w3-hover-opacity"></i>
		  <i class="fa fa-snapchat w3-hover-opacity"></i>
		  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
		  <i class="fa fa-twitter w3-hover-opacity"></i>
		  <i class="fa fa-linkedin w3-hover-opacity"></i>
		  <p>visit our <a href="mainpage.jsp" target="_blank">main page</a></p>
		</footer>
		
		</body>
</html>