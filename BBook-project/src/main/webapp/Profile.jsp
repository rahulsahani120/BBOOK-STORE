<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        /* .cont{
            width: 300px;
            height: 76vh;
            padding: 5px;
           border: 0.01px solid rgb(14, 6, 56);
        } */
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
            background-image: url("image2/newp2.png");
            background-size: cover;
            
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
            margin: 10px 30px;
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
            font-size: 20px;
            cursor: pointer;
            outline: none;
            background-color: transparent;
        }
        button:hover{
            color: #0dc1d4;
        }
        .btn i{
            display: none;
            font-size: 20px;
        }
        .btn:hover i{
            color: #0dc1d4;
            display: block;
        }

        /*                          cont2 css design            */
        .cont2{
            width: 450px;
            padding: 40px;
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


        /*                                 Css design for order               */
    .order{
        width: 66%;
        height: fit-content;
        position: absolute;
        display: none;
        top: 15%;
        left: 30%;
        padding: 8px;
        border: 1px solid #00bcd4;
        border-radius: 5px;
    }
    .book-item{
        display: flex;
        gap: 20px;
        background-color: #090324;
        padding: 8px;
        border-radius: 10px;
    }
    .book-item img{
        width: 75px;
    }
    .book-info {
        flex: 1;
    }

    .book-title {
        font-size: 16px;
        font-weight: bold;
    }

    .book-author {
        font-size: 14px;
        color: #ddd;
    }

    .book-price {
        margin-top: 5px;
        font-size: 14px;
        color: #ffcc00;
    }

    .book-rating {
        color: orange;
        font-size: 14px;
    }

    .qty-select {
        background: #f4f4f4;
        border: none;
        padding: 3px;
        font-size: 14px;
        border-radius: 4px;
    }

    .book-actions {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .stock-info {
        font-size: 12px;
        color: #8de4ff;
    }
    .book-info button{
        margin: 30px 10px;
    }
    .cart{
        width: 46%;
        height: fit-content;
        position: absolute;
        display: none;
        top: 15%;
        left: 30%;
        padding: 8px;
        border: 1px solid #00bcd4;
        border-radius: 5px;
    }
    </style>
</head>
<body>
    <div class="main">
        <nav class="navbar">
            <div class="logo">
                <span class="book "><span class="B">B</span>BOOK <i class="fa-solid fa-book-open-reader"></i></span>
            </div>
            <a href="DashBoard.jsp"><i class="fa-solid fa-house"></i></a>
        </nav>
        <div class="container">
            <div class="cont">
                <div class="header">
                    <a href="DashBoard.jsp"><i class="fa-solid fa-arrow-left"></i></a><span>User profile</span>
                </div>
                <div class="pro">
                    <div class="round-img"></div>
                    <div class="te">
                       <%
    						String username = (String) session.getAttribute("username");
						%>
		                <% if (username != null) { %>
		                <span style="font-size:15px; font-weight:bold; color:aqua;">Hello, <br><%= username %>!</span>
		    			<%} %>
                    </div>
                </div>
                <div class="allbtn">
                    <div class="btn">
                        <button type="button" onclick="Openorder()">My order</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <div class="btn">
                        <button type="button" onclick="Opencart()">Show cart</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <div class="btn">
                        <button type="button" onclick="Openedit()">Edit Profile</button>
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <div class="btn">
                    <a href="Index.jsp">
                        <button type="button">Logout</button>
                        </a>
                        <i class="fa-solid fa-arrow-right"></i>
                        
                    </div>
                </div>
            </div>
            <div class="cont2" id="profile" >
		            <%
					    String email = (String) session.getAttribute("email");
		           
					    if (email == null){
					        response.sendRedirect("Loginpage.jsp");
					        return;
					    }
					%>
                <div class="section-title">
                    <span>Personal Information</span>
                    <a href="FetchData">Show details</a>
                </div>
                <form action="EditProfile" method="post">
                <div class="input-group">
                <input type="hidden" name="id" value="<%= request.getAttribute("id") %>">
                
                    <input type="text" id="username" class="input-field" name="username"
    					value="<%= request.getAttribute("username")%>">
                </div>
                <div class="gender-section">
                    <p>Your Gender</p>
                    <input type="radio" id="male" name="gender" checked>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender">
                    <label for="female">Female</label>
                </div>
                <div class="edit-field">
                    <div class="section-title">
                        <span>Email Address</span>
                    </div>
                   <input type="text" id="email" class="input-field" name="email"
    					value="<%= request.getAttribute("email")%>">
                </div>
                <div class="edit-field">
                    <div class="section-title">
                        <span>Mobile Number</span>
                    </div>
                    <input type="text" id="mobile" class="input-field" name="mobile"
    					value="<%= request.getAttribute("mobile")%>">

                </div>
                <span class="edit-btn" onclick="toggleAllEdit()">Edit</span>
                <button type="submit" style="padding:10px; color:red; background-color:white; margin:20px 50px; cursor:pointer;">Save details</button>
                </form>
            </div>
        </div>
   <div class="order" id="popbox">
            <h2>order </h2>
            
            <%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");

        String sql = "SELECT * FROM orders";
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

        while(rs.next()) {
%>
            <div class="book-item">
                <div class="img">
                    <img src="<%= rs.getString("book_image") %>" alt="Book" class="book-image">
                    <!-- <div class="book-actions">
                        <label for="qty">Qty:</label>
                        <select id="qty" class="qty-select">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div> -->
                </div>
                <div class="book-info">
                    <div class="book-title"><%= rs.getString("book_title") %></div>
                    <div class="book-author">Price: <strong><%= rs.getString("price") %></strong></div>
                    <div class="book-price"><%= rs.getString("payment_method") %></div>
                    <div class="book-rating"><%= rs.getString("order_date") %></div>
          
                    <button type="button">Track Order:</button>
                </div>
            </div>
<%
        }
        conn.close();
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
            
            
            <!-- <div class="book-item">
                <div class="img">
                    <img src="image2/b1.jpg" alt="Book" class="book-image">
                    <div class="book-actions">
                        <label for="qty1">Qty:</label>
                        <select id="qty1" class="qty-select">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div>
                </div>
                <div class="book-info">
                    <div class="book-title">Adiyogi: The Source Of Yoga</div>
                    <div class="book-author">by <strong>Sadhguru, Arundhathi Subramaniam</strong> (Author), <strong>Harper Collins India</strong> (Publisher)</div>
                    <div class="book-price">15% Off • <strike>₹299</strike> • ₹255</div>
                    <div class="book-rating">⭐⭐⭐⭐ (1,000+)</div>
                    <div class="stock-info">2 offers available</div>
                    <button type="button">Track Order:</button>
                </div>
            </div> -->
        </div> 
  
        
        
        <div class="cart" id="popcart">
        
			       <%
				    try {
				        Class.forName("com.mysql.cj.jdbc.Driver");
				        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");
				
				        String sql = "SELECT * FROM addtocart";
				        PreparedStatement stmt = conn.prepareStatement(sql);
				        ResultSet rs = stmt.executeQuery();
				
				        while(rs.next()) {
				            String title = rs.getString("booktitle");
				            String image = rs.getString("image"); // e.g., image/b1.png
				            String price = rs.getString("price");
				            String offers = rs.getString("offers");
				%>
				
				<div class="book-item">
				    <div class="img">
				        <img src="image2/b1.jpg" alt="Book" class="book-image">
				        <div class="book-actions">
				            <label for="qty1">Qty:</label>
				            <select id="qty1" class="qty-select">
				                <option>1</option>
				                <option>2</option>
				                <option>3</option>
				            </select>
				        </div>
				    </div>
				    <div class="book-info">
				        <div class="book-title"><%= title %></div>
				        <div class="book-price">₹<%= price %></div>
				        <div class="stock-info"><%= offers %></div>
				
				        <!-- Order Button -->
				        <a href='Address.jsp'><button type="button">Order Now</button></a>
				
				        <!-- Remove Button -->
				        <form action="cartRemoveServlet" method="post" style="display:inline;">
				            <input type="hidden" name="booktitle" value="<%= title %>">
				            <button type="submit" style="margin-left:10px;">Remove</button>
				        </form>
				    </div>
				</div>
				
				<%
				        }
				        conn.close();
				    } catch(Exception e) {
				        out.println("Error: " + e.getMessage());
				    }
				%>

            <!-- <h2 style="color: #00bcd4;">Bag(Your bagis hevey now)</h2>
            <div class="book-item">
                <div class="img">
                    <img src="image2/b1.jpg" alt="Book" class="book-image">
                    <div class="book-actions">
                        <label for="qty1">Qty:</label>
                        <select id="qty1" class="qty-select">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div>
                </div>
                <div class="book-info">
                    <div class="book-title">Adiyogi: The Source Of Yoga</div>
                    <div class="book-author">by <strong>Sadhguru, Arundhathi Subramaniam</strong> (Author), <strong>Harper Collins India</strong> (Publisher)</div>
                    <div class="book-price">15% Off • <strike>₹299</strike> • ₹255</div>
                    <div class="book-rating">⭐⭐⭐⭐ (1,000+)</div>
                    <div class="stock-info">2 offers available</div>
                    <button type="button">Order now:</button>
                </div> -->
            </div>
        </div>
    </div>
</body>
<script>
    	/*  let isEditing = false;
        function toggleAllEdit() {
            const fields = ['username', 'email', 'mobile'];
            isEditing = !isEditing;

            fields.forEach(id => {
                let field = document.getElementById(id);
                field.readonly = !isEditing;
                if (isEditing) field.focus();
            }); */
            
           /*  function toggleAllEdit() {
                document.getElementById("username").removeAttribute("readonly");
                document.getElementById("email").removeAttribute("readonly");
                document.getElementById("mobile").removeAttribute("readonly");
            } */
            //document.querySelector(".edit-btn").innerText = isEditing ? "Save" : "Edit Profile";
    function Openorder(){
        document.getElementById("popbox").style.display = "block";
        document.getElementById("profile").style.display = "none";
        document.getElementById("popcart").style.display = "none";
    }
    function Openedit(){
        document.getElementById("profile").style.display = "block";
        document.getElementById("popbox").style.display = "none";
        document.getElementById("popcart").style.display = "none";

    }
    function Opencart(){
        document.getElementById("popcart").style.display = "block";
        document.getElementById("popbox").style.display = "none";
        document.getElementById("profile").style.display = "none";
    }
</script>
</html> 
