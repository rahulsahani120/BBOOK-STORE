<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="main.css/main.css">
    <link rel="stylesheet" href="responsive.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <title>Kids Page</title>
    
</head>
<body>
    <div class="head">
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
                        <li><a href="Galacypage.jsp">Galaxy</a></li>
                        <li><a href="KidsBook.jsp">Kids Book</a></li>
                        
                    </ul>
                </li>
                <li class="ii"><a href="">INDIA</a></li>
                <li class="item">
                    <a href="stationary.jsp">STATIONARY</a>
                    <!-- <ul class="link-item">
                        <li><a href="#">TextBooks</a></li>
                        <li><a href="#">Bags</a></li>
                        <li><a href="#">Ball pen</a></li>
                        <li><a href="#">Shop store</a></li>
                        <li><a href="#">Others</a></li>
                    </ul> -->
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
    <div class="slid">
        <button class="btn btn-left" onclick="document.getElementById('image-box').scrollLeft -= window.innerWidth">&#10094;</button>
        <div class="image-box" id="image-box">
            <img src="image2/ima1.jpg" alt="Image 1">
            <img src="image2/ima2.jpg" alt="Image 2">
            <img src="image2/ima3.jpg" alt="Image 3">
            <img src="image2/ima4.jpg" alt="Image 4">
            <img src="image2/ima5.jpg" alt="Imajpg5">
        </div>
        <button class="btn btn-right" onclick="document.getElementById('image-box').scrollLeft += window.innerWidth">&#10095;</button>
    </div>
    <div class="card2">
        <h3>Latest Hindi Book Collection</h3>
         <div class="card2-imgg">
            <!-- <button class="card2b butt-left">&#10095;</button> -->
            <div class="card2-img">
                <img src="image2/b6.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b7.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b8.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b9.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b1o.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b11.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b9.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b1o.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card2-img">
                <img src="image2/b11.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <!-- <button class="card2b butt-left">&#10095;</button> -->
         </div>
    </div>
    <div class="card3">
        <h3>Old Hindi Book Collection</h3>
         <div class="card3-imgg">
            <div class="card3-img">
                <img src="image2/b1.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b2.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b3.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b4.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b5.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b6.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b7.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b7.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
            <div class="card3-img">
                <img src="image2/b8.jpg" alt="">
                <p>The martin:</p>
                <span>Price: 240/only</span>
            </div>
         </div>
    </div>
    <hr>
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