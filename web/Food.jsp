<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>

<html>

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


<br>


<link rel="stylesheet" type="text/css" href="bcascade.css" />

<style type="text/css">

table, th, td {
    border: 1px solid black;
}
	
</style>

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
  <a href="map.jsp">Map</a>
  </div>




</head>

<body>


<!-- MAIN (Center website) -->

<!-- Copied this from W3 Schools but would like to utilize for filtering on the community page for neighborhood and types of food -->

<div class="main">

<h2>Community of Homemade Traders</h2>
<hr>

<h3>Neighborhoods</h3>

<!--How can we connect database to this so that it pulls from these buttons? -->
<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('Brighton')"> Brighton</button>
  <button class="btn" onclick="filterSelection('cars')"> Cars</button>
  <button class="btn" onclick="filterSelection('people')"> People</button>
</div>

<!-- Portfolio Gallery Grid -->
<!-- How are we going to get these images to show dynamically. More specifically, how are we going to have user data (that they enter on the 
sign up sheet) be populated here to show their food jpg, name, neighborhood, etc -->

<div class="row">
  <div class="column nature">
    <div class="content">
      <img src="/w3images/mountains.jpg" alt="Mountains" style="width:100%">
      <h4>Mountains</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="/w3images/lights.jpg" alt="Lights" style="width:100%">
      <h4>Lights</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="/w3images/nature.jpg" alt="Nature" style="width:100%">
      <h4>Forest</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  
  <div class="column cars">
    <div class="content">
      <img src="/w3images/cars1.jpg" alt="Car" style="width:100%">
      <h4>Retro</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <img src="/w3images/cars2.jpg" alt="Car" style="width:100%">
      <h4>Fast</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <img src="/w3images/cars3.jpg" alt="Car" style="width:100%">
      <h4>Classic</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>

  <div class="column people">
    <div class="content">
      <img src="/w3images/people1.jpg" alt="Car" style="width:100%">
      <h4>Girl</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="/w3images/people2.jpg" alt="Car" style="width:100%">
      <h4>Man</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="/w3images/people3.jpg" alt="Car" style="width:100%">
      <h4>Woman</h4>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>




        <c:forEach items="${sessionScope.searchresults}" var="item">
            <tr>
                <td><c:out value="${item.name}"></c:out></td>
                <td><c:out value="${item.category}"></c:out></td>
                <td><c:out value="${item.Description}"></c:out></td>
                <td><c:out value="${item.category}"></c:out></td>
                <td><c:out value="${item.diet_class}"></c:out></td>
                <td><img src="${pageContext.request.contextPath}/ImageServlet?imageid=${item.id}"></img>
            </tr>
        </c:forEach>

     
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


