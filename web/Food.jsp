<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html>

    <div class="bht">

        Boston Homemade Trade 

    </div>

    <br>
    <head>
        <link rel="stylesheet" type="text/css" href="bcascade.css" />
        <style type="text/css">
            table, th, td {
                border: 1px solid black;
            }

        </style>
    <div class="navbar">
        <a href="Boston1.html">Home</a>
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
        <a href="Signup.html">Join the Community</a>
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
            <button class="btn active"> Show all</button>
            <button class="btn"> Nature</button>
            <button class="btn"> Cars</button>
            <button class="btn"> People</button>
        </div>

        <!-- Portfolio Gallery Grid -->
        <!-- How are we going to get these images to show dynamically. More specifically, how are we going to have user data (that they enter on the 
        sign up sheet) be populated here to show their food jpg, name, neighborhood, etc -->

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

        <!-- END MAIN -->
    </div>
</body>

</html>


