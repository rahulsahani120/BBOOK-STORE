

<%@ page import="java.sql.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background-color: #090324;
            color: white;
        }
        .navbar{
            width: 100%;
            height: 60px;
            background-color: #160f2d;
            display: flex;
            align-items: center;
            justify-content: space-around;
        }
        .logo {
            display: flex;
            font-weight: bold;
            color: #0dc1d4;
        }
        .book {
            font-weight: 800;
            display: flex;
            font-size: 25px;
            align-items:last baseline;
        }
        .B {
            color: #0dc1d4;
            font-size: 35px;
        }
        .navbar i{
            font-size: 22px;
            color: #0dc1d4;
            cursor: pointer;
        }
        .cont{
            height: auto;
            margin: 25px 99px;
            width: 40%;
        }
        .container{
            display: flex;
        }
        .header{
            font-size: 24px;
            display: flex;
            gap: 15px;
            color:rgb(134, 25, 167);
        }
        .pro{
            display: flex;
            margin: 30px 20px;
        }
        .round-img{
            width: 70px;
            height: 70px;
            border-radius: 100%;
            background-color: #0dc1d4;
        }
        .te{
            margin: 10px 10px;
            display: grid;
        }
        .te p{
            font-size: small;
            font-weight: bold;
        }
        .allbtn{
            margin: 10px 10px;
            color: white;
        }
        .btn{
            display: flex;
            margin: 20px;
            gap: 10px;
        }
        .btn button{
            color: white;
            border: none;
            font-size: 15px;
            cursor: pointer;
            outline: none;
            background-color: transparent;
        }
        button:hover{
            color: #0dc1d4;
        }
        .btn i{
            display: none;
        }
        .btn:hover i{
            color: #0dc1d4;
            display: block;
        }

        /*                          cont2 css design            */
        .cont2{
            width: 170%;
            height:85vh;
            border: 1px solid #0dc1d4;
            position: relative;
            top: 35px;
            flex-shrink: 1;
            right: 70px;
            padding: 12px;
        }
        .boxes{
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            margin: 20px auto;
        }
        .box {
            flex: 1 1 calc(30%); 
            background: steelblue;
            color: white;
            text-align: center;
            padding: 1px;
            height: 130px;
            font-size: 20px;
            border-radius: 8px;
        }
        .box span{
        	margin-top:5%;
        }
        #box1{
            background-color: brown;
        }
        #box1 span{
            font-size: 20px;
            font-family: 'Courier New', Courier, monospace;
        }
        #box2{
            background-color: #0dc1d4;
            font-family: 'Courier New', Courier, monospace;
        }
        #box3{
            background-color: #1b2324;
            font-family: 'Courier New', Courier, monospace;
        }
        #box4{
            background-color: #650952;
        }
        #box5{
            background-color: #540e0e;
        }
        #box6{
            background-color: #1fbbd0;
        }
/*                                          design for profile */
        .cont3{
            width: 450px;
            padding: 40px;
            display: none;
            border-radius: 10px;
            margin: 80px -250px;
            height: fit-content;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .section-title {
            font-size: 20px;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .edit-btn {
            font-size: 12px;
            color: #b02a2a;
            cursor: pointer;
        }
        .input-group {
            display: flex;
            gap: 20px;
        }
 

        .input-field {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background: #e0e0e0;
            text-align: center;
            color: #b02a2a;
        }
        .input-field:disabled {
            background: #ddd;
            color: #b02a2a;
            border: none;
        }

        .gender-section {
            margin-top: 35px;
        }

        .gender-section label {
            margin-left: 10px;
            font-size: 16px;
            color: #aaa;
        }

        input[type="radio"] {
            accent-color: #00bcd4;
        }

        .edit-field {
            margin-top: 35px;
        }
        .edit-field input{
            width: 50%;
        }
        .edit-field .edit-btn{
            margin-left: -30px;
        }


        /* form css */

        .form{
            font-family: Arial, sans-serif;
            justify-content: center;
            align-items: center;
            display: none;
            position: absolute;
            background-color: #090324;
            padding: 50px;
            border-radius: 8px;
            border: 2px solid white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
            height:fit-content;
        }
        h2 {
            text-align: center;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input, textarea, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .Addbtn{
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 15px;
        }
        .Addbtn:hover {
            background-color: #218838;
        }
        
    .user-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .user-table th, .user-table td {
        padding: 12px 16px;
        border: 1px solid #ccc;
    }

    .user-table th {
        background-color: #0077cc;
        color: #fff;
    }

    

    #box9 {
        cursor: pointer;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        display:none;
    }

    #box9:hover {
        background-color: #005fa3;
    }
    .cont4{
		width: 450px;
        padding: 40px;
        display: none;
        border-radius: 10px;
        margin: 80px -250px;
        height: fit-content;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .cont5{
		width: 450px;
        padding: 40px;
        display: none;
        border-radius: 10px;
        margin: 80px -250px;
        height: fit-content;
        box-shadow: 0 4px 8px rgba(1, 1, 0, 0.2);
    }
    </style>
</head>
<body>
    <div class="main">
        <nav class="navbar">
            <div class="logo">
                <span class="book "><span class="B">B</span>BOOK <i class="fa-solid fa-book-open-reader"></i></span>
            </div>
            <i class="fa-solid fa-house"></i>
        </nav>
        <div class="container">
            <div class="cont">
                <div class="header">
                    <span>Admin profile</span>
                </div>
                <div class="pro">
                    <div class="round-img"></div>
                    <div class="te">
                        <p>Hello</p>
                        <span>Rohit kumar</span>
                    </div>
                </div>
                <div class="allbtn">
                    <div class="btn">
                        <button type="button" onclick="Opendash()">Dashboard</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <div class="btn">
                        <button type="button" onclick="Openuser()">All user</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <div class="btn">
                        <button type="button" onclick="Openbook()">New Book</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <div class="btn">
                        <button type="button" onclick="Openorder()">Orders</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <!-- <div class="btn">
                        <button type="button" onclick="Openuser()">Users</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div> -->
                    <div class="btn">
                        <a href="Loginpage.jsp"><button type="button">Logout</button></a>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                </div>
            </div>
            <div class="cont2" id="cont2">
                <h1>Dashboard</h1>
                <div class="boxes">
                <div class="box" id="box12" onclick="openForm()" style="cursor:pointer;">
						<span>Add Books<br><big>+</big></span>
                    </div> 
                    <div class="box" id="box1">
                        <span>Total Order<br>7</span>
                        
                    </div>
                    <%-- <div class="box" id="box2" style="display:none;">
						<span>New Orders<br>3</span>
						<%
						    int userCount1 = 0;
						    try {
						        Class.forName("com.mysql.cj.jdbc.Driver");
						        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
						
						        String sql = "SELECT * FROM orders";
						        PreparedStatement stmt = conn.prepareStatement(sql);
						        ResultSet rs = stmt.executeQuery();
						
						        // Display users and count at same time
						%>
						    <h2>All Registered Users</h2>
						    <table class="user-table" border="1" cellpadding="10" cellspacing="0" style="margin-top:10px;">
						        <tr style="background-color:#f0f0f0;">
						            <th>#</th>
						            <th>Book-title</th>
						            <th>Price</th>
						            <th>Payment</th>
						            <th>Order_Date</th>
						        </tr>
						<%
						        int count = 1;
						        while(rs.next()) {
						            userCount1++;
						%>
						        <tr>
						            <td><%= count++ %></td>
						            <td><%= rs.getString("book_title") %></td>
						            <td><%= rs.getString("price") %></td>
						            <td><%= rs.getString("payment_method") %></td>
						            <td><%= rs.getString("order_date") %></td>
						        </tr>
						<%
						        }
						
						        rs.close();
						        stmt.close();
						        conn.close();
						    } catch(Exception e) {
						        out.println("<p style='color:red;'>Error fetching users: " + e.getMessage() + "</p>");
						    }
						%>
						    </table>
						    <div style="margin-top:10px; font-weight:bold;">
						        Total Registered Users: <%= userCount1 %>
						    </div>
                    </div> --%>
                    <%-- <div class="box" id="box7">
						<span>New added book<br></span>
						<%
						    int userCount2 = 0;
						    try {
						        Class.forName("com.mysql.cj.jdbc.Driver");
						        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
						
						        String sql = "SELECT * FROM addbook";
						        PreparedStatement stmt = conn.prepareStatement(sql);
						        ResultSet rs = stmt.executeQuery();
						
						        // Display users and count at same time
						%>
						    
						    <table class="user-table" border="1" cellpadding="10" cellspacing="0" style="margin-top:10px;">
						        <tr style="background-color:#f0f;">
						            <th>#</th>
						            <th>Book-title</th>
						            <th>Author</th>
						            <th>Genre</th>
						            <th>Price</th>
						            <th>image</th>
						        </tr>
						<%
						        int count = 1;
						        while(rs.next()) {
						            userCount2++;
						%>
						        <tr>
						            <td><%= count++ %></td>
						            <td><%= rs.getString("booktitle") %></td>
						            <td><%= rs.getString("author") %></td>
						            <td><%= rs.getString("genre") %></td>
						            <td><%= rs.getString("price") %></td>
						            <td>
									    <img src="DisplayImageServlet?id=<%= rs.getInt("id") %>" width="70" height="70" />
									</td>

						        </tr>
						<%
						        }
						
						        rs.close();
						        stmt.close();
						        conn.close();
						    } catch(Exception e) {
						        out.println("<p style='color:red;'>Error fetching users: " + e.getMessage() + "</p>");
						    }
						%>
						    </table>
						    <div style="margin-top:10px; font-weight:bold;">
						        Total added book: <%= userCount2 %>
						    </div>
						</div>
                    </div> --%>
                    <!-- <div class="box" id="box8">
						<span>Cancelled Orders<br>1</span>
                    </div> -->
                    <!-- Box that triggers user data -->
					<div class="box" id="box9">
   					 <span>All Registered Users</span>

						<%
						    int userCount = 0;
						    try {
						        Class.forName("com.mysql.cj.jdbc.Driver");
						        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
						
						        String sql = "SELECT * FROM signup";
						        PreparedStatement stmt = conn.prepareStatement(sql);
						        ResultSet rs = stmt.executeQuery();
						
						        // Display users and count at same time
						%>
						    <h2>All Registered Users</h2>
						    <table class="user-table" border="1" cellpadding="10" cellspacing="0" style="margin-top:10px;">
						        <tr style="background-color:#f0f0f0;">
						            <th>#</th>
						            <th>Username</th>
						            <th>Email</th>
						            <th>Mobile</th>
						            <th>Password</th>
						        </tr>
						<%
						        int count = 1;
						        while(rs.next()) {
						            userCount++;
						%>
						        <tr>
						            <td><%= count++ %></td>
						            <td><%= rs.getString("username") %></td>
						            <td><%= rs.getString("email") %></td>
						            <td><%= rs.getString("mobile") %></td>
						        </tr>
						<%
						        }
						
						        rs.close();
						        stmt.close();
						        conn.close();
						    } catch(Exception e) {
						        out.println("<p style='color:red;'>Error fetching users: " + e.getMessage() + "</p>");
						    }
						%>
						    </table>

						    <div style="margin-top:10px; font-weight:bold;">
						        Total Registered Users: <%= userCount %>
						    </div>
						</div>

                   <!--  <div class="box" id="box10">
						<span>Listed Books<br>7</span>
                    </div> -->
                    <!-- <div class="box" id="box11">
						<span>Listed Categories<br>3</span>
                    </div> -->
                </div>
            </div>
            <div class="form">
                <div style="display: flex; justify-content: space-between;"><h2>Add a New Book</h2><span onclick="closeX()" style="color: rgb(156, 8, 8); cursor: pointer;">X</span></div>
                <form action="AddBookServlet" method="POST" enctype="multipart/form-data">
                    <label for="title">Book Title:</label>
                    <input type="text" id="title" name="title" required>
                    
                    <label for="author">Author:</label>
                    <input type="text" id="author" name="author" required>
                    
                    <label for="genre">Genre:</label>
                    <select id="genre" name="genre">
                        <option value="fiction">Fiction</option>
                        <option value="non-fiction">Non-fiction</option>
                        <option value="mystery">Mystery</option>
                        <option value="fantasy">Fantasy</option>
                        <option value="biography">Biography</option>
                        <option value="science">Science</option>
                    </select>
                    
                    <label for="file">Image :</label>
                    <input type="file" id="file" name="file" accept="image/*">
                    
                    
                    <label for="price">Price:</label>
                    <input type="text" id="price" name="price">
                    
                    <button type="submit" class="Addbtn">Add Book</button>
                </form>
            </div>
            <div class="cont3" id="users">
                <h2>All Registered Users</h2>
						<%
						    int userCount4 = 0;
						    try {
						        Class.forName("com.mysql.cj.jdbc.Driver");
						        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
						
						        String sql = "SELECT * FROM signup";
						        PreparedStatement stmt = conn.prepareStatement(sql);
						        ResultSet rs = stmt.executeQuery();
						
						        // Display users and count at same time
						%>
						    <table class="user-table" border="1" cellpadding="10" cellspacing="0" style="margin-top:10px;">
						        <tr style="background-color:#f0f0f0;">
						            <th>#</th>
						            <th>Username</th>
						            <th>Email</th>
						            <th>Mobile</th>
						            <th>Action</th>
						        </tr>
						<%
						        int count = 1;
						        while(rs.next()) {
						            userCount4++;
						            int userId = rs.getInt("id"); 
						%>
						        <tr>
						            <td><%= count++ %></td>
						            <td><%= rs.getString("username") %></td>
						            <td><%= rs.getString("email") %></td>
						            <td><%= rs.getString("mobile") %></td>
						            <td>
							            <form action="deleteAll.jsp" method="post" onsubmit="return confirm('Are you sure you want to delete this user?');">
							                <input type="hidden" name="id" value="<%= userId %>">
							                <input type="submit" value="Delete" style="background:red; color:white; padding:5px 10px;">
							            </form>
							        </td>
						        </tr>
						<%
						        }
						
						        rs.close();
						        stmt.close();
						        conn.close();
						    } catch(Exception e) {
						        out.println("<p style='color:red;'>Error fetching users: " + e.getMessage() + "</p>");
						    }
						%>
				</table>
            </div>
            <div class='cont4' id='newbook'>
            	<h2>New book added</h2>
            	<%
						    int userCount2 = 0;
						    try {
						        Class.forName("com.mysql.cj.jdbc.Driver");
						        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
						
						        String sql = "SELECT * FROM addbook";
						        PreparedStatement stmt = conn.prepareStatement(sql);
						        ResultSet rs = stmt.executeQuery();
						
						        // Display users and count at same time
						%>
						    
						    <table class="user-table" border="1" cellpadding="10" cellspacing="0" style="margin-top:10px;">
						        <tr style="background-color:#f0f;">
						            <th>#</th>
						            <th>Book-title</th>
						            <th>Author</th>
						            <th>Genre</th>
						            <th>Price</th>
						            <th>image</th>
						            <th>Action</th>
						        </tr>
						<%
						        int count = 1;
						        while(rs.next()) {
						            userCount2++;
						            int bookId = rs.getInt("id");
						%>
						        <tr>
						            <td><%= count++ %></td>
						            <td><%= rs.getString("booktitle") %></td>
						            <td><%= rs.getString("author") %></td>
						            <td><%= rs.getString("genre") %></td>
						            <td><%= rs.getString("price") %></td>
						            <td>
									    <img src="DisplayImageServlet?id=<%= rs.getInt("id") %>" width="70" height="70" />
									</td>
									<td>
							            <form action="deleteAll.jsp" method="post" onsubmit="return confirm('Are you sure you want to delete this book?');">
							                <input type="hidden" name="id" value="<%= bookId %>">
							                <input type="submit" value="Delete" style="background:red; color:white; padding:5px 10px;">
							            </form>
							        </td>

						        </tr>
						<%
						        }
						
						        rs.close();
						        stmt.close();
						        conn.close();
						    } catch(Exception e) {
						        out.println("<p style='color:red;'>Error fetching books: " + e.getMessage() + "</p>");
						    }
						%>
				</table>
            </div>
            <div class='cont5' id='orders'>
              <h2>Total orders</h2>
              <%
						    int userCount1 = 0;
						    try {
						        Class.forName("com.mysql.cj.jdbc.Driver");
						        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
						
						        String sql = "SELECT * FROM orders";
						        PreparedStatement stmt = conn.prepareStatement(sql);
						        ResultSet rs = stmt.executeQuery();
						
						        // Display users and count at same time
						%>
						    <table class="user-table" border="1" cellpadding="10" cellspacing="0" style="margin-top:10px;">
						        <tr style="background-color:#f0f0f0;">
						            <th>#</th>
						            <th>Book-title</th>
						            <th>Price</th>
						            <th>Payment</th>
						            <th>Order_Date</th>
						        </tr>
						<%
						        int count = 1;
						        while(rs.next()) {
						            userCount1++;
						%>
						        <tr>
						            <td><%= count++ %></td>
						            <td><%= rs.getString("book_title") %></td>
						            <td><%= rs.getString("price") %></td>
						            <td><%= rs.getString("payment_method") %></td>
						            <td><%= rs.getString("order_date") %></td>
						        </tr>
						<%
						        }
						
						        rs.close();
						        stmt.close();
						        conn.close();
						    } catch(Exception e) {
						        out.println("<p style='color:red;'>Error fetching orders: " + e.getMessage() + "</p>");
						    }
						%>
						    </table>
            </div>
        </div>
    </div>
    <script>
        function Opendash(){
            document.getElementById("cont2").style.display = "block";
            document.getElementById("users").style.display = "none";
            document.querySelector('.cont4').style.display = 'none';
            document.querySelector('.cont5').style.display = 'none';
        }
        function Openuser(){
            document.getElementById("users").style.display = "block";
            document.getElementById("cont2").style.display = "none";
            document.querySelector('.cont4').style.display = 'none';
            document.querySelector('.cont5').style.display = 'none';
        }
        function openForm() {
            document.querySelector('.form').style.display = 'block';
            document.querySelector('.boxes').style.display = 'none';
        }
        function closeX() {
            document.querySelector('.form').style.display = 'none';
            document.querySelector('.boxes').style.display = 'block';
        }
        function Openbook() {
            document.querySelector('.cont4').style.display = 'block';
            document.getElementById("cont2").style.display = "none";
            document.getElementById("users").style.display = "none";
            document.querySelector('.cont5').style.display = 'none';
        }
        function Openorder(){
        	document.querySelector('.cont5').style.display = 'block';
        	document.getElementById("cont2").style.display = "none";
            document.getElementById("users").style.display = "none";
            document.querySelector('.cont4').style.display = 'none';
        }

    </script>
</body>
</html>