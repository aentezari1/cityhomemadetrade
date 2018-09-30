<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<!doctype html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/bcascade.css" />
        <script src="js/Boston1JS.js"></script>
        <style type="text/css">
            table, th, td {
                border: 1px solid black;
            }
            .submit {
                margin: auto;
                width: 50%;
                padding: 10px;

            }

            .neighborhood {
                padding-left: 15px;
                margin: auto;
            }
        </style>
    </head>


    <div class="bht">
        Boston Homemade Trade 
    </div>

    <div class="bhtlogo">
        <img src="images/bhtlogo12.png" height="100" width="100"/> 
    </div>


    <br>

    <!-- 
            Is there a way to put the navigation bar on every html page we have without having to copy and paste what is below to every page. Can we put "class="navbar" in css and have it 
            run on every page? For now I am going to copy and paste what is below to the other pages
            
    -->

    <div class="navbar">
        <a href="Boston 1.html">Home</a>
        <div class="dropdown">
            <button class="dropbtn">About
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="about.html">About us</a>
                <a href="ourteam.html">Our team</a>
                <a href="howitworks.html">How it works</a>
                <a href="faq.html">FAQ</a>
            </div>
        </div> 
        <a href="Forum.html">Forum</a>
        <a href="Profile.html">Profile Page</a>
        <a href="Food.html">Community</a>
        <a href="contactus.html">Contact</a>

        <!-- Need to go through and make sure all the urls match with the navigation bar designations -->

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
    </div>
<br>
<body>
    
    <img src="images/BHTB.jpg" height="150" width="500"/> 
    <a href="SignUp.jsp">Signup Page</a>

    <hr>
    <br>

    <hr>
    <h1>Check out traders in your neighborhood</h1>
    <hr>
    <br>

    <table style="width:100%" >

        <form action="${pageContext.request.contextPath}/homePageServlet" method="post">
            <tr>
                <th>
                    <div class="neighborhood">
                        <h2>Neighborhood</h2>
                        
                        <input type="checkbox" name="neighborhoodcheckbox" value="Brighton"> Brighton</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Allston"> Allston</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="South Boston"> South Boston</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Roxbury"> Roxbury</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Dorchester"> Dorchester</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Brookline"> Brookline</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Cambridge"> Cambridge</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Somerville"> Somerville</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Jamaica Plain"> Jamaica Plain</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Charlestown"> Charlestown</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Downtown"> Downtown</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="East Boston"> East Boston</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Watertown"> Watertown</input><br>
                        <input type="checkbox" name="neighborhoodcheckbox" value="Back Bay"> Back Bay</input><br><br>
                    </div>
                </th>

                <th>

                    <div class="dietary">
                        <h2>Dietary Restrictions</h2>
                        <input type="checkbox" name="restriction" value="Vegan"> Vegan</input><br>
                        <input type="checkbox" name="restriction" value="Vegetarian"> Vegetarian</input><br>
                        <input type="checkbox" name="restriction" value="Peanut Free"> Peanut Free</input><br><br>

                    </div>	
                </th>

                <th>
                    <div class="foodtype">
                        <h2>Category</h2>
                        
                        <input type="checkbox" name="type" value="Bread"> Bread</input><br>
                        <input type="checkbox" name="type" value="Pies and Tarts"> Pies and Tarts</input><br>
                        <input type="checkbox" name="type" value="Cookies"> Cookies</input><br>
                        <input type="checkbox" name="type" value="Pastry"> Pastry</input><br>
                        <input type="checkbox" name="type" value="Sweets"> Sweets</input><br>
                        <input type="checkbox" name="type" value="Dried Fruit and Nuts"> Dried Fruit and Nuts</input><br>

                    </div>
                    <br>
                </th>
            </tr>

    </table>

    <br>


<div class="submit">
    <input type="submit" value="Submit">
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


