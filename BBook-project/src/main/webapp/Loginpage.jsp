 <%-- 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"--%>
<%--    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
            background-color: #090324;
        }
        .container {
            display: flex;
            width: 750px;
            height: 550px;
            background: #1b1464;
            border-radius: 10px;
            overflow: hidden;
            color: black;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
        }
        .left-panel {
            padding: 15px;
            background: #2d1a89;
        }
        .left-panel h2 {
            color: #00c8ff;
            margin-bottom: 20px;
        }
        .left-panel ul {
            list-style: none;
        }
        .left-panel ul li {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        .left-panel ul li::before {
            content: '\2713';
            color: #00c8ff;
            margin-right: 10px;
        }
        .right-panel {
            width: 60%;
            padding: 40px;
            text-align: center;
        }
        .right-panel h2 {
            color: #00c8ff;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .input-box {
            margin: 15px 0;
            display: flex;
            align-items: center;
            background: #e0e0e0;
            padding: 2px;
            border-radius: 30px;
            position: relative;
        }
        .input-box label {
            position: absolute;
            left: 15px;
            color: #555;
            font-size: 1.2rem;
        }
        .input-box input {
            width: 100%;
            border: none;
            outline: none;
            background: none;
            padding: 10px 45px;
            font-size: 0.9rem;
        }
        .forgot-password {
            font-size: 12px;
            color: #ff6b6b;
            text-align: right;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .login-btn {
            background: #fff;
            color: #000;
            padding: 10px 60px;
            border: none;
            cursor: pointer;
            border-radius: 20px;
            font-size: 1rem;
            font-weight: bold;
        }
        .signup-link {
            margin-top: 10px;
            font-size: 0.9rem;
        }
        .signup-link a {
            color: #00c8ff;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left-panel">
            <h2>Book Store</h2>
            <ul>
                <li>52+ Years of Retail Expertise</li>
                <li>International Shipping</li>
                <li>Express Delivery</li>
                <li>Bulk Enquiries</li>
                <li>Free Shipping</li>
                <li>20 Million+ Titles</li>
                <li>100% Genuine Products</li>
                <li>100% Secure Checkout</li>
            </ul>
        </div>
        
        <form action="LoginServlet" method="post">
            <div class="right-panel">
                <h2>Login</h2>
                
                Display error messages if login fails
                <% String error = request.getParameter("error"); 
                   if ("invalid".equals(error)) { %>
                   <p style="color: red;">Invalid Email or Password!</p>
                <% } else if ("db".equals(error)) { %>
                   <p style="color: red;">Database Connection Error!</p>
                <% } %>

                <div class="input-box">
                    <label for="email">&#9993;</label>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="input-box">
                    <label for="password">&#128274;</label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="forgot-password"><a href="ForgetPage.jsp">Forgot Password?</a></div>
                
                <button type="submit" class="login-btn">Login</button>
                
                <div class="signup-link">Don't have an account? <a href="Signup.jsp">Sign Up</a></div>
            </div>
        </form>
    </div>
</body>
</html>
--%>
 
 


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login </title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
            background-color: #090324;
        }
        .container {
            display: flex;
            width: 750px;
            height: 550px;
            background: #1b1464;
            border-radius: 10px;
            overflow: hidden;
            color: black;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
        }
        .left-panel {
            padding: 15px;
            background: #2d1a89;
        }
        .left-panel h2 {
            color: #00c8ff;
            margin-bottom: 20px;
        }
        .left-panel ul {
            list-style: none;
        }
        .left-panel ul li {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        .left-panel ul li::before {
            content: '\2713';
            color: #00c8ff;
            margin-right: 10px;
        }
        .right-panel {
            width: 60%;
            padding: 40px;
            text-align: center;
        }
        .right-panel h2 {
            color: #00c8ff;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .input-box {
            margin: 15px 0;
            display: flex;
            align-items: center;
            background: #e0e0e0;
            padding: 2px;
            border-radius: 30px;
            position: relative;
        }
        .input-box label {
            position: absolute;
            left: 15px;
            color: #555;
            font-size: 1.2rem;
        }
        .input-box input {
            width: 100%;
            border: none;
            outline: none;
            background: none;
            padding: 10px 45px;
            font-size: 0.7rem;
        }
        .forgot-password {
            font-size: 12px;
            color: #ff6b6b;
            text-align: right;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .login-btn {
            background: #fff;
            color: #000;
            padding: 5px 60px;
            border: none;
            cursor: pointer;
            border-radius: 20px;
            font-size: 1rem;
            font-weight: bold;
        }
        .signup-link {
            margin-top: 10px;
            font-size: 0.9rem;
        }
        .signup-link a {
            color: #00c8ff;
            text-decoration: none;
            font-weight: bold;
        }
        .B{
        font-weight: bold;
        color: #00c8ff;
         margin-left: 20px;
        font-size:40px;
        }
        #b{
        font-weight: bold;
        color: #00c8ff;
        font-size:25px;
        }
        .x{
        font-weight: bold;
        font-size: 15px;
        color: #00c8ff;
        margin: 500px 380px;
        cursor: pointer;
        }
          .image{
          margin: 10px;
        height: 350px;
        width: 200px;
        }
       
    </style>
</head>
<body>
<div class="container" id="cont">
        <div class="left-panel">
            <span class="B">B</span><span id="b">Book <i class="fa-solid fa-book-open-reader"></i></span>
            <ul>
                <li>52+ Years of Retail Expertise</li>
                <li>International Shipping</li>
                <li>Express Delivery</li>
                <li>Bulk Enquiries</li>
                <li>Free Shipping</li>
                <li>20 Million+ Titles</li>
                <li>100% Genuine Products</li>
                <li>100% Secure Checkout</li>
            </ul>
            <img class="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGUEg5KVxtw-XtOE1bSeEhnnqhTU7RPsiKyg&s" alt="Online Image">
        </div>
         <form action="LoginServlet" method="post" onsubmit="return validet()">
		    <div class="right-panel">
		    
                <% String error = request.getParameter("error"); 
                   if ("invalid".equals(error)) { %>
                   <p style="color: red;">Invalid Email or Password!</p>
                <% } else if ("db".equals(error)) { %>
                   <p style="color: red;">Database Connection Error!</p>
                <% } %>
                
		        <a href="Index.jsp"><span class="x" onclick="xx()">X</span></a>
		        <h2>Login</h2>
		        <div class="input-box">
		            <label for="email">&#128100;</label>
		            <input type="text" name="email" id="username" placeholder="Email" required>
		        </div>
		        <div class="input-box">
		            <label for="password">&#128274;</label>
		            <input type="password" name="password" id="password" placeholder="Password" required>
		        </div>
		        <a href="ForgetPage.jsp"> <div class="forgot-password">Forgot Password?</div></a>
		        <button class="login-btn" type="submit">Login</button>
		        <div class="signup-link">Don't have an account? <a href="Signup.jsp">Sign Up</a></div>
		    </div>
		</form>
    </div>
    <script>
        function xx() {
            document.getElementById("cont").style.display = "none";
        }
        
        function validateLogin() {
            const user = document.getElementById("username").value;
            const pass = document.getElementById("password").value;

            if (user === "admin" && pass === "admin123") {
                alert("Login successful!");
                // Redirect to home page
                window.location.href = "Admin.jsp"; // or any other page
                return false; // prevent form from submitting
            } else {
                alert("Invalid username or password.");
                return false; // stop form submission
            }
        }
    </script>
</body>
</html>