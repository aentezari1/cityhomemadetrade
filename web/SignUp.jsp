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

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        button:hover {
            opacity:1;
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
    </style>

    <head>


    <h1>
        <a href="Boston 1.html">Boston Homemade Trade </a>
    </h1>
    <br>

    <div class="navbar">
        <a href="Boston 1.html">Home</a>
        <div class="dropdown">
            <button class="dropbtn">About
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="#">About us</a>
                <a href="#">Our team</a>
                <a href="#">How it works</a>
                <a href="#">FAQ</a>
            </div>
        </div> 
        <a href="Forum.html">Forum</a>
        <a href="Profile.html">Profile Page</a>
        <a href="Food.html"><tr><td>Food Page</td></tr></a>
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

    <hr>

    <body>

        <form action="${pageContext.request.contextPath}/SignUpServlet" style="border:1px solid #ccc" method="post" enctype="multipart/form-data">
            <div class="container">
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <table style="border:1px solid #ccc">

                    <tr>
                        <th style="border:1px solid #ccc">

                            <label for="email"><b>First Name</b></label>
                            <input type="text" placeholder="Enter First Name" name="fname" required>

                            <label for="email"><b>Last Name</b></label>
                            <input type="text" placeholder="Enter Last Name" name="lname" required>

                            <label for="pictureofself"><b>Upload Picture of Yourself</b></label>
                            <br><br>
                            <div class="choose_file">
                                <input name="traderpicture" type="file" />
                            </div>
                            
                            <label for="Neighborhood"><b>Select Neighborhood</b></label>
                            <br><br>
                            <select name="neighborhood">
                                <option value="Select Neighborhood">Select Neighborhood</option>
                                <option value="Brighton">Brighton</option>
                                <option value="Allston">Allston</option>
                                <option value="South Boston">South Boston</option>
                                <option value="Roxbury">Roxbury</option>
                                <option value="Dorchester">Dorchester</option>
                                <option value="Brookline">Brookline</option>
                                <option value="Cambridge">Cambridge</option>
                                <option value="Somerville">Somerville</option>
                                <option value="Jamaica Plain">Jamaica Plain</option>
                                <option value="Charlestown">Charlestown</option>
                                <option value="Downtown">Downtown</option>
                                <option value="East Boston">East Boston</option>
                                <option value="Watertown">Watertown</option>
                                <option value="Back Bay">Back Bay</option>
                                <option value="South Bay">South Bay</option>
                            </select>

                            <br>

                            <label for="email"><b>Email</b></label>
                            <input type="text" placeholder="Enter Email" name="email" required>

                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="psw" required>

                            <label for="psw-repeat"><b>Repeat Password</b></label>
                            <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
                        </th>
                        <th style="border:1px solid #ccc">
                            <label for="FoodTrade"><b>Trade Name</b></label>
                            <input type="text" placeholder="Enter Homemade Trade" name="foodtrade" required>

                            <label for="pictureoffood"><b>Upload Picture of Trade</b></label>
                            
                            <br><br>
                            
                            <div class="choose_file">
                                <input name="foodpicture" type="file" />
                            </div>
                            
                            <c:if test="${not empty requestScope.noFoodPicture}">
                                <p style="color:red; font-size: 20px;">Please upload an item, we don't let freeloaders in here!</p>
                            </c:if>
                    
                            <br><br>
                            <label for="Ingredients"><b>Ingredients</b></label>
                            <input type="text" placeholder="List Ingredients" name="ingredients" required>
                            
                            <br><br>
                            <label for="Description"><b>Description</b></label>
                            <textarea placeholder="Warm, succulant, crispy... etc." name="description" required></textarea>
                            
                            <lable ><b>Resctrictions</b></lable>
                            <input type="radio" name="restriction" value="Vegan"> Vegan</input><br>
                            <input type="radio" name="restriction" value="Vegetarian"> Vegetarian</input><br>
                            <input type="radio" name="restriction" value="Peanut Free"> Peanut Free</input><br><br>
                            
                            <lable><b>Category</b></lable>
                            <input type="radio" name="type" value="Bread" > Bread</input><br>
                            <input type="radio" name="type" value="Pies and Tarts"> Pies and Tarts</input><br>
                            <input type="radio" name="type" value="Cookies"> Cookies</input><br>
                            <input type="radio" name="type" value="Pastry"> Pastry</input><br>
                            <input type="radio" name="type" value="Sweets"> Sweets</input><br>
                            <input type="radio" name="type" value="Dried Fruit and Nuts"> Dried Fruit and Nuts</input><br>

                        </th>
                    </tr>
                </table>
                <br>
                <label>
                    <input type="checkbox" checked name="remember" style="margin-bottom:15px"> Remember me</input>
                </label>

                <p>By creating an account you agree to our <a href="Terms&Conditions.html" style="color:dodgerblue">Terms & Conditions</a>.</p>

                <div class="clearfix">
                    <button type="submit" class="signupbtn">Sign Up</button>
                    <button type="button" class="cancelbtn">Cancel</button>
                    <c:if test="${not empty requestScope.passwordsConfirmed}">
                        <p style="color:red; font-size: 20px;">Ooops! those passwords don't match. Try again</p>
                    </c:if>
                </div>
            </div>
        </form>

    </body>
</html>
