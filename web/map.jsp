<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<!doctype html>
<html>

<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,
          initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>My Google Map</title>

<style>
 #map {
        height:400px;
        width: 100%;
    }
    </style>

</head>
<!-- Does this link have to go within the style tags? -->
<link rel="stylesheet" type="text/css" href="bcascade.css" />

<style type="text/css">


.submit {
	margin: auto;
    padding: 10px;
	
}


table, th, tr {
    border: 1px solid black;
	text-align: left;
	top: 5px;
}






<!-- still not really understanding how the divs work, I have been changing this 'neighborhood' and 'dietary' div for the past 15 minutes and
don't. I want them (for now) to be left align from the top, -->	
	



    



</style>



<div class="bht">
Boston Homemade Trade 
</div>




<!-- Button to open the modal login form -->
<div class="login">
<button onclick="document.getElementById('id01').style.display='block'">Login</button>
</div>
<!-- The Modal -->
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" 
 class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <img src="images/BHTB.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      

      <button type="submit">Login</button>
   
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>


<div class="bhtlogo">
</div>

<br>



<div class="navbar">
  <a href="Boston1.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn">About
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="about.jsp">About us</a>
      <a href="ourteam.jsp">Our team</a>
      <a href="howitworks.jsp">How it works</a>
	  <a href="faq.jsp">FAQ</a>
    </div>
  </div> 
  <a href="Forum.jsp">Forum</a>
  <a href="Profile.jsp">Profile Page</a>
  <a href="Food.jsp">Community</a>
  <a href="contactus.jsp">Contact</a>
  <a href="SignUp.jsp">Join the Community</a>
  </div>
  




<!-- Start of Google Map API -->

<h1>My google map</h1>
<div id= "map"></div>

<script>
    function initMap (){
    var options = {
    zoom: 13,
    center:{lat:42.3467 , lng:-71.0972 } 
        
    }    
     var map = new
     google.maps.Map(document.getElementById('map'), options);
        
    }
    
</script>

 <script async defer 
         src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD3fkKPrzFVa2FbxOR8Gx-bNGNY79lIRgk&callback=initMap">
        
        
 </script>



		
</body>


 
</html>


