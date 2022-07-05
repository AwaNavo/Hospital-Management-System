<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<link rel = "stylesheet" href = "css/loginStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="login-wrap">
	<img src = "images/logo_transparent.png" class = "logo">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">SignUp</label>
		<div class="login-form">
		
			<!-- LOGIN FORM -->
			<form method = "post" action = "login1Servlet">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name = "user" type="text" class="input" placeholder ="Enter user name" required>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name = "pass" type="password" class="input" data-type="password" placeholder = "Enter password" required>
				</div>
				<div class="group">
					<label for="type" class="label">TYPE</label>
					<select id="type" name = "type" class = "input" style = "color:#808080;"required>
					<option value = "Receptionist" >Receptionist</option>
					<option value = "Doctor">Doctor</option>
					<option value = "Sister">Sister</option>
					</select>
				</div>

				<div class="group">
					<input type="submit" name = "signinbtn" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
				
					<a href="mainpage.jsp"><i class="fa fa-chevron-left" aria-hidden="true"></i> Back</a>
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
			</form>
			
			
			<!-- SIGN UP FORM -->
			<form method = "post" action = "signupServlet">
			<div class="sign-up-htm">
				<div class="group">
					<label for="uname" class="label">USERNAME</label>
					<input id="username" name = "username" type="text" class="input" required placeholder = "Enter User Name">
				</div>
				<div class="group">
					<label for="pass" class="label">PASSWORD</label>
					<input id="pass" name = "password" type="password" class="input" data-type="password" placeholder = "Minimum 6 characters with uppercase,lowercase,characters" pattern = "[A-Za-z0-9@#^&%+-_!*]{6,50}" required>
				</div>
				<div class="group">
					<label for="type" class="label">TYPE</label>
					<select id="type" name = "type" class = "input" style = "color:#808080;"required>
					<option value = "Receptionist" >Receptionist</option>
					<option value = "Doctor">Doctor</option>
					<option value = "Sister">Sister</option>
					</select>
				</div>
				<div class="group">
					<label for="contact" class="label">CONTACT NUMBER</label>
					<input id="contact" name = "contact" type="text" class="input" pattern = "[0-9]{10}" placeholder = "Enter Contact Number" required>
				</div>
				<div class="group">
					<label for="email" class="label">EMAIL</label>
					<input id="email" name = "email" type="text" class="input" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" placeholder = "Enter Email" required >
				</div>
				
				<div class="group">
					<input type="submit" name = "signupbtn" class="button" value="Sign Up">	
				</div>
				<div class="hr"></div>
			</div>
		</form>
		
		</div>
	</div>
</div>

</body>
</html>