<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Error</title>
	<link rel = "stylesheet" type = "text/css" href = "css/respondMsStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

<h1>OOPS..Something wrong..<i class ="fa fa-frown-o" aria-hidden="true"></i></h1>

<div class="box">
  <a class="button" href="#popup1">Click Me</a>
</div>

<div id="popup1" class="overlay">
  <div class="popup">
    <a class="close" href="#">&times;</a>
    <div class="content">
      Data is not inserted successfuly.Please try again...
    </div>
  </div>
</div>
<br><br><br><br>
<div class = "box">
	
	<a class = "button" href = "patientRegister.jsp"><i class ="fa fa-chevron-left" aria-hidden="true"></i> Back </a>	
</div>

</body>
</html>