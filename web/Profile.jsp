<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="bcascade.css" />

<style type="text/css">

.andreecard {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 200px;
  max-height: 100px;
  margin: auto;
  text-align: center;
  font-family: arial;
  float:left;
}

table, th, td {
    border: 1px solid black;
	height: 50px;
	width:300px;
}

.profiletable {
	position:absolute;
	float:right;
	left: 5%;
	top:20%;
}

.ratingtable {
	position:absolute;
	left: 50%;
	top:20%;
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
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
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


