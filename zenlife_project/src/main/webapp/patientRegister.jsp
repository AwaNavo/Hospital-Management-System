<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Patient Registration Page</title>
	<link rel = "stylesheet" type = "text/css" href = "css/registerStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style = "background:#408080">

	<div class="login">
	  <h1>Patient Registration</h1>
	  <img src = "images/logo1.png" id = "logo">
	  
	  <form method="post" action="insertServlet">
	  
	    <p><input type="text" name="pfname"  placeholder="Patient First Name" required></p>
	    <p><input type="text" name="plname"  placeholder="Patient Last Name" required></p>
	    <p><input type="radio" name="pgender" value="Male"> Male
	       <input type="radio" name="pgender" value="Female">Female
	    <p><input type="date" name="pBdate"  placeholder="Patient Birthdate" required></p>
	    <p><input type="text" name="pcontact"  placeholder="Contact No" pattern = "[0-9]{10}" required></p>
	    <p><input type="email" name="pemail" placeholder="Email Address" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required></p>
	    
	    <p class="submit"><a href = "RecepAcc.jsp">back <i class ="fa fa-chevron-left" aria-hidden="true"></i></a>  <input type="submit" name="commit" value="Register"></p>
	  </form>
	  
	</div>
	
</body>
</html>