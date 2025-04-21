<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
    <meta charset="UTF-8">
    <title>Signup</title>
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
            background-color: black;
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
        .input-box input {
            width: 100%;
            border: none;
            outline: none;
            background: none;
            padding: 10px 45px;
            font-size: 0.7rem;
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
        .L {
            color: #00c8ff;
        }
        .error-msg {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container" id="cont">
        <div class="left-panel">
            <h2>Welcome to Book Store</h2>
            <ul>
                <li>International Shipping</li>
                <li>Express Delivery</li>
                <li>Bulk Orders</li>
                <li>Free Shipping</li>
            </ul>
        </div>
        <div class="right-panel">
            <form action="Signup_Servlet" method="post" onsubmit="return validateForm()">
                <h2>Sign Up</h2>
                
                <!-- Display error messages -->
                <% String errorMsg = request.getParameter("error"); %>
                <% if (errorMsg != null) { %>
                    <div class="error-msg"><%= errorMsg %></div>
                <% } %>

                <div class="input-box">
                    <i class="fas fa-user"></i>
                    <input type="text" name="user" id="user" placeholder="Username" required>
                </div>

                <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="email" name="email" id="email" placeholder="Email" required>
                </div>

                <div class="input-box">
                    <i class="fas fa-phone"></i>
                    <input type="text" name="mobile" id="mobile" placeholder="Mobile Number" required pattern="[0-9]{10}" title="Enter a valid 10-digit mobile number">
                </div>

                <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" id="password" placeholder="Password" required >
                </div>

                <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="cpassword" id="cpassword" placeholder="Confirm Password" required>
                </div>

                <button class="login-btn" type="submit">Sign Up</button>
                <div>Already have an account? <a href="Loginpage.jsp" class="L">Login</a></div>
            </form>
        </div>
    </div>

    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var cpassword = document.getElementById("cpassword").value;

            if (password !== cpassword) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</body>
</html> --%>

 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
<meta charset="UTF-8">
<title>Signup</title>
<style type="text/css">
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
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .B {
            font-weight: bold;
            color: #00c8ff;
            margin-left: 20px;
            font-size: 40px;
        }
        #b {
            font-weight: bold;
            color: #00c8ff;
            font-size: 25px;
        }
        .x{
        font-weight: bold;
        font-size: 15px;
        color: #00c8ff;
        margin: 500px 380px;
        cursor: pointer;
        }
        .image {
            margin:10px ;
            height: 250px;
            width: 200px;
        }
        .L{
        color: #00c8ff;
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
        <div class="right-panel">
    <form action="Signup_Servlet" method="post" onsubmit="return validateForm()">
    <a href="Loginpage.jsp"><span class="x" onclick="xx()">X</span></a>
    <h2>Sign Up</h2>
    
     <!-- Display error messages -->
                <% String errorMsg = request.getParameter("error"); %>
                <% if (errorMsg != null) { %>
                    <div class="error-msg"><%= errorMsg %></div>
                <% } %>

    <div class="input-box">
        <label for="user">&#128100;</label>
        <input type="text" name="user" id="user" placeholder="Username" required>
    </div>

    <div class="input-box">
        <label for="email">&#128100;</label>
        <input type="email" name="email" id="email" placeholder="Email" required>
    </div>

    <div class="input-box">
        <label for="mobile">&#128241;</label>
        <input type="text" name="mobile" id="mobile" placeholder="Mobile number" required 
               pattern="[0-9]{10}" title="Enter a valid 10-digit mobile number">
    </div>

    <div class="input-box">
        <label for="password">&#128274;</label>
        <input type="password" name="password" id="password" placeholder="Password" required
               minlength="6" title="Password must be at least 6 characters long">
    </div>
    <div class="input-box">
        <label for="cpassword">&#128274;</label>
        <input type="password" name="cpassword" id="password" placeholder="Cpassword" required
               minlength="6" title="Password must be at least 6 characters long">
    </div>

    <button class="login-btn" type="submit">Sign Up</button>

    <div>Already have an account? <a href="Loginpage.jsp" class="L">Login</a></div>
</form>

</div>

    </div>
    
    
<script>
    function xx() {
        document.getElementById("cont").style.display = "none";
        return false;
    }
    function validateForm() {
        var password = document.getElementById("password").value;
        var cpassword = document.getElementById("cpassword").value;

        if (password !== cpassword) {
            alert("Passwords do not match!");
            return false;
        }
        return true;
</script>
</body>
</html>