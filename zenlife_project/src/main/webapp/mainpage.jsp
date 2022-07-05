<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ZenLife || Healthy Life || Care</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/mainpage1.css">

</head>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">APPOINTMENT</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SIGN UP</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>   
  </div>
</div>


<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="images/bg1.jpg" style="width:100%;">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>ZenLife Care</h3>
      <p><b>We care for your health every moment</b></p>   
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="images/mainpagebg2.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>ZenLife Ward</h3>
      <p><b>Comfortable || Safe Environment</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="images/mainpagebg3.jpg" style="width:100%"> 
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
	      <h3>ZenLife Surgical Unit</h3>
	      <p><b>Healthy Life || Care</b></p>    
    </div>
  </div>

  <!-- The ZenLife Details Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h1 class="w3-wide">ZenLife Hospitals</h1>
    <img src="images/logo_transparent.png" class="w3-round w3-margin-bottom" alt="Random Name" style="width:20%">
    <h4 class="w3-opacity"><i>We care about you</i></h4>
    <p class="w3-justify">ZenLife Hospitals is the most accredited hospital in the Sri Lanka health care sector.
    Since 2005,ZenLife Hospitals has revolutioniszed the health care industry through infrastructure development and advancement of products and services,
   with a view to deliver healthcare that is on par with global medical standards</p>
   <p  class="w3-justify">Lanka Hospitals is committed to provide compassionate care and excellent service that transcends conventional healthcare.</p>
    <a href = "#"><button class="w3-button w3-black w3-section w3-right">ABOUT US</button></a>
    </div>
  </div>




  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACT</h2>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> Colombo, Sri Lanka<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: +94715645678<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: zenlifehospitals@mail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
          <button class="w3-button w3-black w3-section w3-right" type="submit">SEND</button>
        </form>
      </div>
    </div>
  </div>
  
<!-- End Page Content -->


<!-- Image -->
<img src="images/mainpagebg4.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Zenlife Hospitals <a href="#" target="_blank"> visit us</a></p>
  <p class="w3-medium">2021 <i class="fa fa-copyright" aria-hidden="true"> copyright ZenLife Hospitals</i></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
