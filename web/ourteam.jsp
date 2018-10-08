<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<link rel="stylesheet" type="text/css" href="bcascade.css" />

<style type="text/css">

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}




/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}


.maxcard {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  max-height: 200px;
  margin: auto;
  text-align: center;
  font-family: arial;
  float:left;
  padding-right: 5px;
}

.andreecard {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  max-height: 200px;
  margin: auto;
  text-align: center;
  font-family: arial;
  float:left;
}

.title {
  color: grey;
  font-size: 18px;
}



a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}



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

<head>



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
  <a href="map.jsp">Map</a>
  </div>

<hr>

<body>



<div class="wrap">

<div class="maxcard">
  <img src="images/Maxpic.jpg" style="width:100%">
  <h3>Maximilian Bisesi</h3>
  <p class="title">Title</p>
  <p>Affiliation</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
 </div>
 <p><button>Contact</button></p>
</div>

<div class="andreecard">
  <img src="images/muchomango.jpg" style="width:100%">
  <h3>Andree Entezari</h3>
  <p class="title">Title</p>
  <p>Affiliation</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
 </div>
 <p><button>Contact</button></p>
</div>
</div>
</body>


 
 <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
 </script>

</html>
