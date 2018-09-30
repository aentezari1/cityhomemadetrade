<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<!doctype html>
<html>

<head>

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

<div class="bhtlogo">
</div>

<br>

<!-- 
	Is there a way to put the navigation bar on every html page we have without having to copy and paste what is below to every page. Can we put "class="navbar" in css and have it 
	run on every page? For now I am going to copy and paste what is below to the other pages
	
	-->

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
  
  <!-- Need to go through and make sure all the urls match with the navigation bar designations -->
 
  
  <!--
  <div class="dropdown">
    <button class="dropbtn">Dropdown 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div> 
  -->





</head>

<br>
<body>


<img src="BHTB.jpg" height="150" width="500"/> 


<br>

<hr>
	<h3>Search for traders by neighborhood, dietary restrictions, or type of food.</h3>
	<hr>
<br>

	<table style="width:100%" >
	
		<form action="/action_page.php" >
	<tr>
	<th>
	<div class="neighborhood">
	
<h2>Neighborhood</h2>

<input type="checkbox" name="All Boston Neighborhoods" value="All Boston Neighborhoods"> All Boston Neighborhoods<br>
<br>
<input type="checkbox" name="Brighton" value="Brighton"> Brighton<br>
<input type="checkbox" name="Allston" value="Allston"> Allston<br>
<input type="checkbox" name="South Boston" value="South Boston"> South Boston<br>
<input type="checkbox" name="Roxbury" value="Roxbury"> Roxbury<br>
<input type="checkbox" name="Dorchester" value="Dorchester"> Dorchester<br>
<input type="checkbox" name="Brookline" value="Brookline"> Brookline<br>
<input type="checkbox" name="Cambridge" value="Cambridge"> Cambridge<br>
<input type="checkbox" name="Somerville" value="Somerville"> Somerville<br>
<input type="checkbox" name="Jamaica Plain" value="Jamaica Plain"> Jamaica Plain<br>
<input type="checkbox" name="Charlestown" value="Charlestown"> Charlestown<br>
<input type="checkbox" name="Downtown" value="Downtown"> Downtown<br>
<input type="checkbox" name="East Boston" value="East Boston"> East Boston<br>
<input type="checkbox" name="Watertown" value="Watertown"> Watertown<br>
<input type="checkbox" name="Back Bay" value="Back Bay"> Back Bay<br><br>
  </div>
 </th>
	
<th valign="top">

<div class="dietary">
<h2>Dietary Restrictions</h2>

<input type="checkbox" name="No Dietary Restriction" value="All Dietary Categories"> All Dietary Categories (<em>No Dietary Restrictions</em>)<br>
<br>
<input type="checkbox" name="Dairy Free" value="Dairy Free"> Dairy Free<br>
<input type="checkbox" name="Nut Free" value="Nut Free"> Nut Free<br>
<input type="checkbox" name="Peanut Free" value="Peanut Free"> Peanut Free<br>
<input type="checkbox" name="Vegan Friendly" value="Vegetarian"> Vegan Friendly<br>
<input type="checkbox" name="Vegetarian Friendly" value="Vegan"> Vegetarian Friendly<br>




</div>	
</th>

<th valign="top">
<div class="foodtype">
<h2>Types of Food</h2>

<input type="checkbox" name="All Homemade Trades" value="All Homemade Trades"> All Homemade Trades<br>
<br>
<input type="checkbox" name="BakedGood" value="BakedGood"> Baked Goods<br>
<input type="checkbox" name="Cookies" value="Cookies"> Cookies<br>
<input type="checkbox" name="Dried Fruit and Nuts" value="Dried Fruit and Nuts"> Dried Fruit and Nuts<br>
<input type="checkbox" name="JamsJelliesSauces" value="JamsJelliesSauces"> Jams, Jellies, & Sauces<br>
<input type="checkbox" name="Pastry" value="Pastry"> Pastries & Sweets<br>
<input type="checkbox" name="Pies&Tarts" value="Pies&Tarts"> Pies and Tarts<br>





</div>
<br>
  </th>
 	</tr>
	

	
	</table>

	<br>
	
	<tr>
	<div class="submit">
	<input type="submit" value="Submit"></tr>
	</div>
		</form>
	<!--<table style="width:100%" >
  <tr>
    <th>	<a href="palm.html"target="_blank"><img src="palmtrees.jpg"height="100"/></th> 
	<th></th>
	
  </tr>
  
 <tr>
    <th> <a href="laundry.html"target="_blank"><img src="laundry.jpg"height="100"/></th>
  <th><a href="froggy.html"target="_blank"><img src="froggy.jpg"height="100"/></th>
 
  </tr> 
  
  <tr>	 
  <th><a href="helicopter.html"target="_blank"><img src="helicopter_girl.png"height="100"/></th>
  <th></th>
   
  </tr>
</table>
-->


		
</body>

</html>


