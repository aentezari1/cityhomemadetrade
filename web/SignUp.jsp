<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="bcascade.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
    padding: 5px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn1, .signupbtn1 {
       width: 100%;
    }
}

.border4bio
	{border: 1px solid black;
	margin: 2px;
	padding: 10px;
	width: 50%;
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
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn1">Cancel</button>
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
  <a href="Signup.jsp">Join the Community</a>
  <a href="map.jsp">Map</a>
  </div>


<hr>

<body>

<form action="/action_page.php" style="border:1px solid #ccc">
  <div class="container">
    <h2>Sign Up</h2>
    <p>Please fill in this form to create an account.</p>
    
	<table style="border:1px solid #ccc">
	
	<tr>
	<th style="border:1px solid #ccc">
	
	<div class="border4bio">
	<label for="email"><b>First Name</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter First Name (i.e. Jane)" name="email" required>
	
	 <label for="email"><b>Last Name</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Last Name (i.e. Erickson)" name="email" required>
	
	 <label for="Neighborhood">Neighborhood</label> <sup><i class="fa fa-info-circle"></i></sup>
	 <br>
    <select id="Neighborhood" name="Neighborhood">
          <option value=" "> </option>
		  <option value="Brighton">Brighton</option>
          <option value="Allston">Allston</option>
          <option value="South Boston">South Boston</option>
		  <option value="Somerville">Somerville</option>
		  <option value="Roxbury">Roxbury</option>
		  <option value="Dorchester">Dorchester</option>
		  <option value="Brookline">Brookline</option>
		  <option value="Cambridge">Cambridge</option>
		  <option value="Jamaica Plain">Jamaica Plain</option>
		  <option value="Charlestown">Charlestown</option>
		  <option value="Downtown">Downtown</option>
		  <option value="East Boston">East Boston</option>
		  <option value="Watertown">Watertown</option>
		  <option value="Back Bay">Back Bay</option>
        </select>
		
		<br><br>
	
	
	

	<label for="email"><b>Email</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Email (i.e. jane.erickson@gmail.com)" name="email" required>
		<label for="pictureofself"><b>Upload Picture of Yourself</b></label> <sup><i class="fa fa-info-circle"></i></sup>
	<br><br>
		<div class="choose_file">
			<input name="Select File" type="file" />
		</div>
		
		</div>


		<br>
	<div class="border4bio">
	<label for="email"><b>Instagram Handle (if applicable) </b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Instagram Handle (i.e. @jane_erickson)" name="email">
	
    <label for="email"><b>Facebook URL (if applicable)</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Facebook Profile URL (i.e. https://www.facebook.com/janeerickson)" name="email">
	
	<label for="email"><b>Twitter Handle (if applicable) </b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Twitter Handle Handle (i.e. @jane_erickson)" name="email">
	
	</div>
	<br>
	<div class="border4bio">
	
	<label for="psw"><b>Boston Homemade Trade Username</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Username" name="psw" required>
	
    <label for="psw"><b>Password</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
	
	</div>
	
	<br>
	<div class="border4bio">
	  <label for="FoodTrade"><b>Title of Homemade Trade</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Title of Homemade Trade (i.e. Banana Bread)" name="foodtrade" required>
	
	
	<label for="FoodTrade"><b>Select Food Type</b></label> <sup><i class="fa fa-info-circle"></i></sup>
	<br>
	
	
	<select>
		<option value="Select Type of Food">Select Type of Food</option> <sup><i class="fa fa-info-circle"></i></sup>
		  <option value="Breads">Breads</option>
		  <option value="Pies and Tarts">Pies and Tarts</option>
		  <option value="Cookies">Cookies</option>
		  <option value="Pastries">Pastries</option>
		  <option value="Sweets">Sweets</option>
		  <option value="Dried Fruit and Nuts">Dried Fruit and Nuts</option>
		</select>
		
		<br>
                <br>
<div class="dietary">
    
    <h4>Dietary Restrictions <em>(select all that apply)</em></h4>

<input type="checkbox" name="No Dietary Restriction" value="All Dietary Categories"> No Dietary Restrictions<br>
<input type="checkbox" name="Dairy Free" value="Dairy Free"> Dairy Free<br>
<input type="checkbox" name="Nut Free" value="Nut Free"> Nut Free<br>
<input type="checkbox" name="Peanut Free" value="Peanut Free"> Peanut Free<br>
<input type="checkbox" name="Vegan Friendly" value="Vegetarian"> Vegan Friendly<br>
<input type="checkbox" name="Vegetarian Friendly" value="Vegan"> Vegetarian Friendly<br>




</div>	
		
		
	<!--
	<label for="FoodTrade"><b>Select Dietary Category*</b></label>
	<br>
	
	
		<select>
			<option value="No Dietary Restrictions">No Dietary Restrictions</option>
			<option value="Dairy Free">Dairy Free</option>
			<option value="Nut Free">Nut Free</option>
			<option value="Peanut Free">Peanut Free</option>
			<option value="Vegan Friendly">Vegetarian Friendly</option>
			<option value="Vegan Friendly">Vegan Friendly</option>
		</select>
	
	-->
	
	<br><br>
	<label for="pictureoffood"><b>Upload Picture of Homemade Trade</b></label> <sup><i class="fa fa-info-circle"></i></sup>
	<br><br>
		<div class="choose_file">
			<input name="Select File" type="file" />
		</div>
	<br><br>
	  <label for="Ingredients"><b>Ingredients</b></label> <sup><i class="fa fa-info-circle"></i></sup>
    <input type="text" placeholder="Enter Ingredients (i.e. banana, flour, salt, baking soda, etc)" name="foodtrade" required>
    
	
	</tr>
	</table>
	
	
	<br>
	
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <p>By creating an account you agree to our <a href="termsandconditions.jsp" style="color:dodgerblue">Terms & Conditions</a>.</p>

    <div class="clearfix">
      <button class="cancelbtn1">Cancel</button>
      <button class="signupbtn1">Sign Up</button>
    </div>
  </div>
</form>

<script>
function myFunction() {
    alert('Thank you for signing up for Boston Homemade Trade!');
}
</script>

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

</body>
</html>
