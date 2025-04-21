<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="responsive.css">
    <link rel="stylesheet" href="main.css/main.css">
    <title>Buy page</title>
    <style>
        body{
            background-color: #090324;
        }
        .buy{
            display: flex;
        }
        .allD{
            width: 550px;
            height: 65vh;
            margin: 30px 90px;
            border: 2px solid blue;
            display: flex;
            border-radius: 20px;
        }
        .img1{
            width: 130px;
            height: 15vh;
            position: relative;
            top: 10px;
            flex-direction: column;
            cursor: pointer;
            margin: 20px;
            background-color: rebeccapurple;
            border-radius: 20px;
        }
        .img1:hover img{
            border: 2px solid white;
        }
        .img1 img{
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 20px;
        }
        .bigimg{
            width: 500px;
            height: 45vh;
            background-color: aliceblue;
            margin: 20px 40px;
            border-radius: 20px;
        }
        .bigimg img{
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 20px;
        }
        .btan{
            position: relative;
            top: -110px;
            left: 330px;
            display: flex;
            gap: 35px;
        }
        .btan button{
            padding: 5px;
            width: 100px;
            background-color: black;
            outline: none;
            border: none;
            color:rgb(10, 63, 169);
            border-radius: 10px;
            cursor: pointer;
        }
        .byd{
            position: relative;
            left: -50px;
            top: 25px;
        }
        .dd{
           display: grid;
           gap: 7px;
        }
        .pp{
            position: relative;
            top: 20px;
        }
        .pp span{
            padding: 6px;
        }
        .qq{
            position: relative;
            top: 90px;
        }
        .boox{
            width: 550px;
            height: 15vh;
            border: 2px solid black;
            display: flex;
            position: relative;
            top: 20px;
        }
        .boox img{
            width: 100%;
            height: 100%;
        }
        .DB{
            margin: 0px 20px;
            display: grid;
            gap: 5px;
        }
        .RR{
            margin: 10px 20px;
            display: grid;
            gap: 10px;
        }
        .Rating img{
            width: 100%;
            border-radius: 10px;
        }

        /*                          Responsive design here                              */
        @media (max-width: 970px) {
            .B{
                margin-left: -120px;
                color: #090324;
            }
        }
        @media (max-width: 630px) {
            .B{
                margin-left: -150px;
                color: #090324;
            }
        }
.row {
	width: 50%;
	display: flex;
	margin-top: 10px;
	justify-content: space-between;
	gap: 50px;
}

.col {
	text-align: center;
	max-width: 100%;
	box-sizing: border-box;
}

.row img {
	width: 30%; /* Make the image fill the column */
	height: auto;
}

.row label {
	display: block;
	margin-top: 2px;
	font-size: 10px;
}

    </style>
</head>
<body>
    <div class="main" id="main">
        <nav class="navbar">
            <div class="logo">
                <p> 
                    <span class="book "><span class="B">B</span>BOOK <i class="fa-solid fa-book-open-reader"></i></span>
                </p>
            </div>
            <ul class="link">
                <li class="item">
                    <a href="#">BOOKS</a><span></span>
                    <ul class="link-item">
                        <li><a href="#">Hindi Books</a></li>
                        <li><a href="#">English Books</a></li>
                        <li><a href="#">Author Books</a></li>
                        <li><a href="#">Galaxy</a></li>
                        <li><a href="#">Animals books</a></li>
                        <li><a href="#">Remedial</a></li>
                    </ul>
                </li>
                <li class="ii"><a href="">INDIA</a></li>
                <li class="item">
                    <a href="#">STATIONARY</a>
                    <ul class="link-item">
                        <li><a href="#">TextBooks</a></li>
                        <li><a href="#">Bags</a></li>
                        <li><a href="#">Ball pen</a></li>
                        <li><a href="#">Shop store</a></li>
                        <li><a href="#">Others</a></li>
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
               <a href="Profile.jsp"> <i class="fa-solid fa-user"></i></a>
            </div>
        </nav>
        <div class="buy">
            <div class="byimg">
                <div class="allD">
                    <div class="smallimg">
                        <div class="img1"><img src="image2/b1.jpg" alt="" onclick="changeImage(this)"></div>
                        <div class="img1"><img src="image2/b12.jpg" alt=""onclick="changeImage(this)"></div>
                    </div>
                    <div class="bigimg"><img id="large" src="image2/b1.jpg" alt=""></div>
                </div>
                <div class="btan">
                    <label for="qty1" style="display: none;">Qty:</label>
                    <select id="qty1" style="display: none;">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                    <a href="Address.jsp"><button>Buy now</button></a>
                    <!-- <button onclick="alert('button are click') , ()">Add to cart</button> -->
                    <form action='cartServlet' method='post'>
		            	<input type='text' name='booktitle' value='Aditi: bokks for yoga' hidden>
		            	<input type='text' name='price' value='230' hidden>
		            	<input type='text' name='image' value='image/b1.png' hidden>
		            	<input type='text' name='offers' value='2 offers are here' hidden>
		            	<button type='submit'>Add to Cart</button>
		            </form>
                </div>
            </div>
            <div class="byd">
                <div class="dd">
                    <h1 id="book-title">Book Title</h1>
                    <span id="book-desc">Book description here...</span>
                    <div class="rating" id="book-rating">⭐⭐⭐ Rating</div>
                </div>
                <div class="pp">
                    <span id="book-price" style="font-size: 20px; color: red;">Price</span>
                    <span id="book-discount"><s>Old Price</s>(Discount)</span>
                    <p>Include all taxes</p>
                </div>
                <div class="qq">
					<span>Our Services</span>
					<div class="row" style="Display: flex;, gap:5px;">
						<div class="col">
							<i class="fa-solid fa-box" style="font-weight: bold; font-size: 30px; color: yellow;"></i>							
							<label style="font-size: 15px; color:aqua;">In Stock</label>
						</div>
						<div class="col">
							<i class="fa-solid fa-handshake" style="font-weight: bold; font-size: 30px; color: yellow;"></i>
							<label style="font-size: 15px; color:aqua;">Guaranteed<br>Service</label>
						</div>
						<div class="col">
							<i class="fa-solid fa-plane-departure" style="font-weight: bold; font-size: 30px; color: yellow;"></i>
							<label style="font-size: 15px; color:aqua;">International<br>Shipping<br>Know More</label>
						</div>
						<div class="col">
							<i class="fa-solid fa-van-shuttle" style="font-weight: bold; font-size: 30px; color: yellow;"></i>
							<label style="font-size: 15px; color:aqua;">Free Home<br>Delivery<br>Above Rs:499</label>
						</div>
					</div>
					</div>


            </div>
        </div>
        <div class="DB">
            <h2>Product Specifications</h2>
            <h3>Book Description</h3>
            <span id="book-full-desc">Full description text...</span>
        </div>
        <div class="RR">
            <h2>Ratings & Reviews</h2>
            <div class="Rating">
                <img src="image2/Rating.png" alt="">
            </div>
        </div>
        <div class="card2">
            <h3>Releted books</h3>
             <div class="card2-imgg">
                <div class="card2-img">
                    <img src="image2/b1.jpg" alt="">
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
             </div>
        </div>
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
    </div>
    <script>
        function changeImage(e){
            var large = document.getElementById('large');
            large.src = e.src;
        }
    </script>


    <!--       this is code for render all book details in same page click on book  -->
    <script>
        const books = [
          {
            id: 1,
            title: "Aditi : Books for yoga day in day",
            description: "Hello this is our author books for yoga in easy and effective ways",
            price: 210,
            originalPrice: 300,
            rating: "⭐⭐⭐⭐ 4.5 (338 Customers)",
            image: "image2/b1.jpg",
          },
          {
            id: 2,
            title: "Wings of Fire",
            description: "Dr. A.P.J Abdul Kalam’s inspiring autobiography",
            price: 180,
            originalPrice: 250,
            rating: "⭐⭐⭐⭐⭐ 4.8 (1,000+ Customers)",
            image: "image2/b2.jpg",
          },
          {
            id: 3,
            title: "Think and Grow Rich",
            description: "A powerful guide to success and wealth.",
            price: 199,
            originalPrice: 300,
            rating: "⭐⭐⭐⭐ 4.6 (750 Customers)",
            image: "image2/b3.jpg",
          },
          {
            id: 4,
            title: "The Alchemist",
            description: "A journey of self-discovery and dreams.",
            price: 220,
            originalPrice: 350,
            rating: "⭐⭐⭐⭐⭐ 4.9 (1,200 Customers)",
            image: "image2/b4.jpg",
            },
            {
            id: 5,
            title: "The Power of Now",
            description: "A spiritual guide to living in the present.",
            price: 250,
            originalPrice: 400,
            rating: "⭐⭐⭐⭐ 4.7 (900 Customers)",
            image: "image2/b5.jpg",
            },
         
          // Add more books as needed
        ];
      
        const params = new URLSearchParams(window.location.search);
        const bookId = parseInt(params.get("id"));
      
        const book = books.find(b => b.id === bookId);
      
        if (book) {
          document.querySelector("#large").src = book.image;
          document.querySelector(".img1 img").src = book.image;
          document.querySelector(".dd h1").textContent = book.title;
          document.querySelector(".dd span").textContent = book.description;
          document.querySelector(".rating").textContent = book.rating;
          document.querySelector(".pp span").innerHTML = `<span style="font-size: 20px; color: red;">$${book.price}-/ only</span>`;
          document.querySelector(".pp span + span").innerHTML = `<s>${book.originalPrice}</s> (${Math.round(((book.originalPrice - book.price) / book.originalPrice) * 100)}% off)`;
        } else {
          document.querySelector(".dd h1").textContent = "Book Not Found";
          document.querySelector(".dd span").textContent = "Sorry, no book data available.";
          document.querySelector(".rating").textContent = "";
        }
      </script>
      
</body>
</html>