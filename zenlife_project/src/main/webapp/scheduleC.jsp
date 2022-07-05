<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Check Schedule</title>
	<link rel = "stylesheet" href = "css/scheduleStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

<div class = "searchP">
	<img src = "images/logo_transparent.png" id = "logo">
	<form method = "post" action = "checkScheduleServlet">
				<p> <b>Select the date</b> <i class="fa fa-calendar-o" aria-hidden="true"></i></p>
				<input type = "date" name = "scheduleDate">
				<button type ="submit" name = "submitbtn" value = "search" > Search...<i class="fa fa-search" aria-hidden="true"></i></button>
				<br><br><br><br>
	</form>
</div>
<div class = "searchP">
	<a href = "RecepAcc.jsp"><button>BACK</button></a>
</div>

<h2>Schedule Details</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Doctor ID</th>
            <th>Name</th>
            <th>Specialty</th>
            <th>Channeling time</th>
            <th>Room No</th>
        </tr>
        </thead>    
        <tbody>
        <c:forEach var = "sche" items = "${scDetails}"> 
        <tr>
            <td>${sche.doctorID}</td>
            <td>${sche.name}</td>
            <td>${sche.speciality}</td>
            <td>${sche.c_Time}</td>
        	<td>${sche.roomNo}</td>
        </tr>
		</c:forEach>
        <tbody>
    </table>
</div>

</body>
</html>