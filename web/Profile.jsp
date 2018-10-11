<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html>
    <head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="bcascade.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>

    </head>
<style type="text/css">



table, th, td {
    border: 1px solid black;
	height: 50px;
	width:300px;
}

.profiletable {
	position:absolute;
	float:right;
	left: 5%;
	top:30%;
}

.ratingtable {
	position:absolute;
	left: 50%;
	top:30%;
}

.foodrating {
	position:absolute;
	float:right;
	left: 60%;
	top:20%;
}

.bottomrow {
	width: 300px;
	height: 100px;
}

.proposebtn {
        position:absolute;
	float:right;
	left: 10%;
	top:65%;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
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
 
 <!-- Place Calendar here -->
 
 

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
	  <a href="faq.html">FAQ</a>
    </div>
  </div> 
  <a href="Forum.jsp">Forum</a>
  <a href="Profile.jsp">Profile Page</a>
  <a href="Food.jsp">Community</a>
  <a href="contactus.jsp">Contact</a>
  <a href="SignUp.jsp">Join the Community</a>
  <a href="map.jsp">Map</a>
  </div>






<body>

    
    
<!-- Working on the template, hiding for now 

<h2>Trader Profile page</h2>

<!-- I am a little uncertain how we are going to get these pages to show dynamically. Meaning, how we are going to link this unique url
to each user that enters information on the site -->

<!--

<div class="andreecard">
  <img src="muchomango.jpg" alt="John" style="width:100%">
  <h2>Andree Entezari</h2>
  <p class="title">Title</p>
  <p>Affiliation</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
 </div>

 
 <!-- This is where we are going to link a button through our site > to their email to propose a trade, in the link will be included the url
 and trade information of the user thats sending the information -->
 
 <!-- Working on the template, hiding for now 
 
<a href="mailto:andree.entezari@gmail.com?subject=SweetWords
&body=Please send me a copy of your new program!">Email Me</a>
<br><br>
<form>
<input type="button" value="Link to my Instagram" onclick="window.location.href='https://www.instagram.com/andree_entezari'" />
</form>

<br><br>


<!-- This will be the start of the review information that previous traders can share about their experience with this member,
we will need to link this to the data base which ensure 1) they are a member 2) they have traded with this user before -->

<!-- Still working on making this feedback dynamic

<div class="foodrating">

<h2>Feedback</h2>

Food Quality
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
<br>
Trade Delivery
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>

<br>
Friendliness
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>

</div>
<br>
<br>
	-->
	<div>
	

<table class="profiletable">
	<tr>
		
		<th height="200px" width="200px">Food Picture</th>
		<th height="100px" width="100px">Trader Picture</th>
	</tr>
	
	<div class="bottomrow">
	<tr>
		
		<th>
			<ul>
				<li>Food Title</li>
				<li>Dietary Category</li>
				<li>Ingredients</li>
			</ul>
		
		<th>
			<ul>
				<li>Name of Trader</li>
				<li>Neighborhood</li>
			</th>
			</div>
		</div>
			</ul>
	</tr>
	
</table>

	</div>
	
<table class="ratingtable">
<tr>	
	<th>Trader Rating</th>
</tr>
<tr>	
	<th>Social Media Links</th>
</tr>	
<tr>	
	<th>Reply Rate</th>
</tr>	
<tr>	
	<th>Average Reply Time</th>
</tr>
<tr>	
	<th>BHT Badges</th>
</tr>

	</table>
	
<!-- Trigger/Open The Modal -->
<div class="proposebtn">
<button id="propose">Propose a Trade</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    
    
    <p>Proposed Trade Date: <br><br><input type="text" id="datepicker"></p>

    <form>
   <p>Any message you would like to include to homemade trader:</p>
   

  <textarea rows="4" cols="40">
  </textarea>
  </form>
    <!-- Modal for Calendar -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Modal header</h3>
  </div>
  <div class="modal-body">
    <div id="datetimepicker1" class="input-append date">
      <input data-format="dd/MM/yyyy hh:mm:ss" type="text"></input>
      <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
    </div>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>
    
  
</div>
  
  </div>

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

// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("propose");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


 </script>
 
</html>


