<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="main.css/main.css">
    <link rel="stylesheet" href="responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <title>Stationary - BookStore</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #02092e;
            padding: 20px;
            color: white;
            text-align: center;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 30px;
        }
        .item-card {
             background-color: #02092e;
            width: 220px;
            margin: 15px;
            border-radius: 12px;
            border:1px solid black;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.2s ease;
        }
        .item-card:hover {
            transform: scale(1.05);
        }
        .item-card img {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }
        .item-info {
            padding: 15px;
            text-align: center;
        }
        .item-info h3 {
            margin: 10px 0 5px;
            font-size: 18px;
        }
        .item-info p {
            color: #777;
            font-size: 14px;
            margin: 0;
        }
        .item-info .price {
            font-weight: bold;
            color: #333;
            margin-top: 8px;
        }
        .add-button {
            background-color: #4A90E2;
            color: white;
            padding: 8px 12px;
            margin-top: 10px;
            border: none;
            cursor: pointer;
            border-radius: 6px;
        }
        .add-button:hover {
            background-color: #357ABD;
        }
    </style>
</head>
<body>
<nav class="navbar">
            <div class="logo">
                 <p> 
                    <span class="book" style="color: #0dc1d4;"><span class="B">B</span>BOOK<i class="fa-solid fa-book-open-reader" style="color: #0dc1d4;"></i></span>
                </p>
            </div>
            <ul class="link">
                <li class="item">
                    <a href="#">BOOKS</a><span></span>
                    <ul class="link-item">
                        <li><a href="hindiBook.jsp">Hindi Books</a></li>
                        <!-- <li><a href="#">English Books</a></li>
                        <li><a href="#">Author Books</a></li> -->
                        <li><a href="Galaxypage.jsp">Galaxy</a></li>
                        <li><a href="KidsBook.jsp">Kids Book</a></li>
<!--                         <li><a href="#">Remedial</a></li> -->
                    </ul>
                </li>
                <li class="ii"><a href="">INDIA</a></li>
                <li class="item">
                    <a href="#">STATIONARY</a>
                    <ul class="link-item">
                       <!--  <li><a href="#">TextBooks</a></li>
                        <li><a href="#">Bags</a></li>
                        <li><a href="#">Ball pen</a></li>
                        <li><a href="#">Shop store</a></li>
                        <li><a href="#">Others</a></li> -->
                    </ul>
                </li>
                <li><a href="#">TOY</a></li>
            </ul>
            <div class="pro">
                <p><i class="fa-solid fa-truck"></i>Become</p>
                <span><i class="fa-solid fa-cart-shopping"></i>Bag</span>
            </div>
             
        </nav>
        <nav class="navbar2">
            <div class="brows">
                <li class="bb">
                    <a href="#" style="font-size: 14px; margin-top: 40px;">Browser</a>
                    <ul class="br">
                        <li><a href="#">Books</a></li>
                        <li><a href="#">Children</a></li>
                        <li><a href="#">Fiction</a></li>
                    </ul>
                </li>
            </div>
            <div class="search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Search for products, brands and more">
            </div>
            <div class="hm">
                <a href="DashBoard.jsp"><i class="fa-solid fa-house"></i></a>
                <a href="Loginpage.jsp"><i class="fa-solid fa-user"></i></a>
            </div>
        </nav>
    </div>
<header>
    <h1>Stationery Section</h1>
    <p>Explore our collection of quality stationery items</p>
</header>

<div class="container">
    <!-- Bag -->
    <div class="item-card">
        <img src="image2/bag1.jpeg" alt="School Bag">
        <div class="item-info">
            <h3>School Bag</h3>
            <p>Durable and stylish backpack</p>
            <div class="price">₹799</div>
            <button class="add-button">Buy now</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/bag2.jpeg" alt="School Bag">
        <div class="item-info">
            <h3>School Bag</h3>
            <p>Durable and stylish backpack</p>
            <div class="price">₹799</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    <div class="item-card">
        <img src="image2/4.jpeg" alt="School Bag">
        <div class="item-info">
            <h3>School Bag</h3>
            <p>Durable and stylish backpack</p>
            <div class="price">₹799</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>

    <!-- Ball Pen -->
    <div class="item-card">
        <img src="image2/pen1.jpeg" alt="Ball Pen">
        <div class="item-info">
            <h3>Ball Pen</h3>
            <p>Smooth writing pen - pack of 10</p>
            <div class="price">₹120</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    <div class="item-card">
        <img src="image2/pen2.jpeg" alt="Ball Pen">
        <div class="item-info">
            <h3>Ball Pen</h3>
            <p>Smooth writing pen - pack of 10</p>
            <div class="price">₹120</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    <div class="item-card">
        <img src="image2/pen3.jpeg" alt="Ball Pen">
        <div class="item-info">
            <h3>Ball Pen</h3>
            <p>Smooth writing pen - pack of 10</p>
            <div class="price">₹120</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>

    <!-- Notebook -->
    <div class="item-card">
        <img src="image2/note1.jpeg" alt="Notebook">
        <div class="item-info">
            <h3>Notebook</h3>
            <p>A4 ruled, 200 pages</p>
            <div class="price">₹60</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>

    <!-- Pencil Set -->
    <div class="item-card">
        <img src="image2/pencil4.jpeg" alt="Pencil Set">
        <div class="item-info">
            <h3>Pencil Set</h3>
            <p>Set of 12 HB pencils</p>
            <div class="price">₹85</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/pencil.jpeg" alt="Pencil Set">
        <div class="item-info">
            <h3>Pencil Set</h3>
            <p>Set of 12 HB pencils</p>
            <div class="price">₹85</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/pencil2.jpeg" alt="Pencil Set">
        <div class="item-info">
            <h3>Pencil Set</h3>
            <p>Set of 12 HB pencils</p>
            <div class="price">₹85</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>

    <!-- Geometry Box -->
    <div class="item-card">
        <img src="image2/geo1.jpeg" alt="Geometry Box">
        <div class="item-info">
            <h3>Geometry Box</h3>
            <p>Complete set for students</p>
            <div class="price">₹150</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/geo2.jpeg" alt="Geometry Box">
        <div class="item-info">
            <h3>Geometry Box</h3>
            <p>Complete set for students</p>
            <div class="price">₹150</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/geo3.jpeg" alt="Geometry Box">
        <div class="item-info">
            <h3>Geometry Box</h3>
            <p>Complete set for students</p>
            <div class="price">₹150</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/geo1.jpeg" alt="Geometry Box">
        <div class="item-info">
            <h3>Geometry Box</h3>
            <p>Complete set for students</p>
            <div class="price">₹150</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
    
    <div class="item-card">
        <img src="image2/geo3.jpeg" alt="Geometry Box">
        <div class="item-info">
            <h3>Geometry Box</h3>
            <p>Complete set for students</p>
            <div class="price">₹150</div>
            <button class="add-button">Add to Cart</button>
        </div>
    </div>
</div>

<div class="footer">
        <div class="track">
            <i class="fa-solid fa-truck-fast"></i>
             <div class="text">
                <h3>Track your item.</h3>
                <p>This will profide actualt location</p>
             </div>
        </div>
        <div class="disc">
            <i class="fa-solid fa-gift"></i>
             <div class="text">
                <h3>Discount Coupons</h3>
                <p>We offer Coupon card for discount</p>
             </div>
        </div>
        <div class="support">
            <i class="fa-solid fa-headphones"></i>
            <div class="text">
                <h3>Costumer Support</h3>
                <p>24/7 Hours support</p>
            </div>
        </div>
        <div class="pay">
            <i class="fa-solid fa-landmark"></i>
            <div class="text">
                <h3>100% Safe Payment</h3>
                <p>Don't worry your payment are fully safe</p>
            </div>
        </div>
    </div>
    <hr>
    <div class="footer2">
        <section class="content">
            <div class="about-content">
                <div class="textt">
                    <h2>Welcome to <span style="font-size:35px; color: #1eade1;">B</span><span style="color: #1eade1;">Book <i class="fa-solid fa-book-open-reader"></i></span> </h2>
                    <p style="color: rgb(191, 201, 209);">BBook is your one-stop online bookstore, bringing you a wide selection of books, stationery, and more. Our mission is to make reading accessible and enjoyable for everyone.</p>
                    <p style="color:rgb(191, 201, 209) ;">Explore our vast collection and find the best books for your needs. From bestsellers to academic books, we've got it all.</p>
                    <a href="#" class="btnn">Explore Now</a>
                </div>
        </section>
        <div class="usefulllink">
            <h2>Usefull Links</h2>
             <div class="Flink">
                <a href="">About us</a>
                <a href="">Contact us</a>
                <a href="">Terms & Condition</a>
                <a href="">Privacy Policy</a>
             </div>
        </div>
        <div class="supportt">
            <h2>Support</h2>
            <div class="Slink">
                <a href="">FAQ</a>
                <a href="">+91-9065205383</a>
                <a href="">E-mail:bbook@21gmail.com</a>

            </div>
        </div>
    </div>
    <div class="footer3">
        <div class="copy">
            <h4>@Copyright authorised provided</h4>
            <p>Copyright 2022 BBook. All rights reserved. that will no conrain any claim under national govt. book authorised</p>
        </div>
        <div class="footer-content">
            <h3>Join our other Community for information</h3>
           <div class="social">
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-github"></i>
            <i class="fa-brands fa-instagram"></i>
            <i class="fa-brands fa-linkedin"></i>
           </div>
        </div>
    </div>

</body>
</html>
