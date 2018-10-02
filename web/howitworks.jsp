<%-- 
    Document   : howitworks.jsp
    Created on : Sep 30, 2018, 5:56:59 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



<link rel="stylesheet" type="text/css" href="bcascade.css" />


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


<br>

<head>
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
<style>

.howheader {
		margin-left:15px;
		margin-right:30px;
}

.bhtmembership {
		margin-right: 40%;
		padding-left: 50%;
		top: 15%;
		position: absolute;
		}
</style>

</head>

<body>


<h2>How it Works</h2>


<p>

First, think of a food that will be your trade. This will be listed as your “trade” or food that users will be able to see when they go to your page and propose a trade.
With your “food trade” you will need to specify ingredients and type of baked good it is so it can easily be found by other members. 
<br><br>

Food Types:
<br><br>
•	Baked Goods <br>
•	Pies and Tarts <br>
•	Pastries and Sweets <br>
•	Jams, Jellies & Sauces <br>
•	Dried Fruits and Nuts <br>

<br><br>
Along with the type of homemade good you trade, please list what dietary category it falls under, so other members can easily search and find them based on their dietary specifications.
<br><br>
	Dietary Specifications:
<br><br>
 
•	Vegetarian friendly<br>
•	Vegan friendly<br>
•	Peanut free<br>
•	Nut free<br>
•	Non-Dairy<br>
 
<br><br>
Along with your “food trade” category and “dietary specification”, we would like you to include the neighborhood within Boston that you come from so that 1) traders of the community know who is trading in their community and 2) you can get an idea of how far you will travel to exchange homemade goods on trades that you propose and are proposed to you. 
<br><br>
Neighborhoods include:
<br><br>
 
•	Brighton<br>
•	Allston<br>
•	South Boston<br>
•	Roxbury<br>
•	Dorchester<br>
•	Brookline<br>
•	Cambridge<br>
•	Somerville<br>
•	Jamaica Plain<br>
•	Charlestown<br>
•	Downtown Boston<br>
•	East Boston<br>
•	Watertown<br>
•	Back Bay<br>
<br><br>
 




Once you create a “food trade” on the site, you are free to go and look at other food trades around the site and propose a trade to any baked goods you would like.
We ask that all ingredients which go into making your “food trade” is under $10. <br><br>
<em><strong>Why do we do this?</strong></em>
<br>
The reason we ask for this is because we’d like to somewhat equalize trades from user to user. The mission of this site is to connect people that enjoy sharing and making food. The time and love that goes into making the food you share is worth much more than capitalizing or making sure you “are 100% compensated in time, energy, and monetary funds you put into making your product”. The $10 maximum for each trade aims to put all traders on an equal playing field, or baking field if you will. The site is about meeting people in your neighborhood, sharing food, and learning recipes (not swindling people). 
<br><br>
Filtering Searches<br><br>
From the home page, you can filter a search for other traders in your neighborhood within Boston and/or types of foods that are being traded. Also, you can filter your search by dietary restrictions (i.e. dairy free, vegan friendly, vegetarian, peanut free). 
<br><br>
Once you find a “food trade” that looks appealing on the “Community page”, go to that members page by clicking the image url of their food. From there, you will be able to see more information about the trader, their neighborhood, the food, ingredients, dietary restrictions, social media links and reviews of previous trade exchanges with this user. 
For some, you will also be able to see trader’s social media links like Instagram or Twitter depicting more of their history baking and experience with baking/making food. After looking that over, and would like to propose a trade > click the button that says “Propose a Trade”. From there, the member with that “food trade” will receive notification (either through email or text message) indicating that another user has proposed a trade. In the message, they will receive a url of your food trade profile along with the option to accept or decline the trade.
<br><br>
Once users are prompted to <em><strong>“Accept”</strong></em> or <strong><em>“Decline”</strong></em> the trade:
	<br><br>
	If the user Accepts the trade, notification will be sent to the proposer that their trade has been 
	accepted. From there, both parties will communicate with one another when and where they 
	will trade their homemade good.<br><br>
		Both traders will be sent a message indicating a suggested timeline and meeting place 
		for the two parties to exchange homemade foods as they start a discussion.
			Suggested timelines will be sent to all traders uniform to the site (i.e. 5-7 days
			from the accepted trade date.
			Meeting place suggestions will be based on the geographic neighborhood of 
			both parties (i.e. a library or park within the same neighborhood (if both parties
			are in the same neighborhood). However, if parties are in different 
			neighborhoods, a suggested meeting place might be in a neighborhood
			equidistance to both.
<br><br>

<hr>
				<strong><em>Example of Messaging Platform for traders:</strong></em>
				<br><br>
					<strong>Boston Homemade Trade:</strong>
					Anne meet Jacob! Jacob meet Anne! <br>
					Based on your geo locations here are some suggested meeting 
					places for trading your homemade goods: {locations equidistant 
					to both parties (i.e. library, park, post office, grocery store)}. We 
					suggest a timeline of 5-7 days once trades are accepted, but 
					whatever date you both decide!<br>
					<br>
					<strong>Anne:</strong>
					Hi Jacob, I am SO excited to try your apple cashew truffle,
					it looks amazing. And you said its your grandma’s recipe! Wow!<br><br>
					<strong>Jacob:</strong>
					Haha yea, grandma was quite the baker. And you pecan 
					pie looks delicious too! Have a gathering next weekend and
					will be having it with them <br><br>
					
					<strong>Anne:</strong> Oh, great, well now I REALLY have to do a good job huh ;) <br><br>
					<strong>Jacob:</strong> I am sure it will be amazing. If it looks half as good as the 
					picture you posted, I would be thrilled. <br><br>
					<strong>Anne:</strong> Okay , is the Brighton Library a good place to meet to 
					exchange? I can also be flexible. <br><br>
					<strong>Jacob:</strong> That library is so close to me! That would work perfect! Is
					Friday at 6pm a good time for you? <br><br>
					<strong>Anne:</strong> That works fine with me, it’s a date ;)<br><br>
					<strong>Jacob:</strong> Sweet, see you then <br><br>
					
					<hr>
Canceling Trade after accepting: Traders will have the ability to cancel a trade after they
have accepted, however, this will reflect poorly on their profile (i.e. User has canceled [4] trades after initially accepting. 
<br><br><br>
// Ratio out a 15 star experience, 14 star experience, 13 start experience, 12 star experience, 11 star experience, 10 star experience, 9 star experience, 8 star experience, etc (with description and detail) //
	If the user Declines the trade, notification will be sent to the proposer of the trade letting them 
	know that the other member had decided not to accept the trade at the current moment 
	(recipients of trade proposals will have the option to leave commentary on why they didn’t 
	accept the trade). 
	<br><br><br>
Upon completion of a trade, users will be sent a request to review the quality of the trade between both members. Review measures will be based on trader’s perspective of how the trade went. For example, quality of trade, delivery of trade, friendliness, and any commentary they would like to leave the trader. 
	Once a trader submits a form reviewing the other party’s trade and food, a notification will be 
	sent to the other participant asking them to verify that they did in fact have trade with the 
	person leaving them a review. However, they will not be able to see comments, reviews, and
	feedback left for them in this message.
	<br><br><br>
		Upon verifying the validity of the trader leaving a review, reviews will then be posted on
		the unique food profile page of the trader. These reviews will allow other users to see
		past experiences with this trader and quality of food. 
		<br><br><br>
		Traders will be allowed to report reviews that they do not wish to be listed on their 
		page. If a review is reported, a member of Boston Homemade Trade will review posts
		for inappropriate content or go against site terms and conditions. However, Boston
		Homemade Trade will not take down reviews that are simply negative or of low
		rating to the other trader of the site. These reviews are meant to allow members
		of the site a transparent view of experiences others have had trading with traders
		of the site.
		<br><br><br>
<strong>Discussion Forum</strong>
	The BHT Community will also have a community forum on the site where they can have 
	discussions with other traders, advertise their trade, suggest trades to other users, and more. 
	Comments and discussions on the forum will be regularly monitored for spam, inappropriate 
	content, and vulgarity. 
	<br><br><br>
</p>

<!-- Editting the content 09/24/18

		<div class="bhtmembership">
<h2>So, what comes with a <em>BHT</em> Membership?</h2>

<table>
	<tr>
		<th>
<p>A monthly order of Boston Homemade Trade <br><em>biodegradable</em> packages 
for homemade goods to <br> be traded with one another</p>
<img src="BHT_Package.jpg" height="205" width="200"/> 
		</th>
		<th>
<p>50 BHT recipe pages to <br>write down process and share <br>ingredients with trade</p>
<img src="recipepaper.jpg" height="205" width="200"/> 
		</th>
		<th>
<p>Weekly sent newsletter <br>with featured trades <br>and highlights of trades in your neighborhood</p>
<img src="bhtnewsletter.jpg" height="200" width="128"/> 
		</th>
	</tr>
</table>
		</div>
-->

		
		
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
