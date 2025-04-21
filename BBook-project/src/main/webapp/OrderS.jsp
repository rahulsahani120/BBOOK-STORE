<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
          background-color: #090324;
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
        .container{
            display: flex;
            /* justify-content: space-between; */
        }
        .cont{
            height: auto;
            margin: 15px 80px;
        }
        .header{
            font-size: 24px;
            display: flex;
            gap: 15px;
            color:rgb(134, 25, 167);
        }
        .order-details{
            display: grid;
            font-size: 18px;
            margin: 10px 10px;
            color: #00bcd4;
        }
        .order-detailss{
           display: flex;
           margin: 10px 10px;
        }
        .order-detailss img{
            border: 2px solid #0dc1d4;
            border-radius: 10px;
            height: 180px;
        }
        .order-detailsss{
            margin: 10px 10px;
            color: white;
        }
        .order-detailsss span{
            display: flex;
            flex-direction: column;
            gap: 10px;
            font-size: 16px;
        }
        .rating{
            font-size: 12px;
        }
        .pp p{
            display: flex;
            gap: 5px;
        }
        .quantity{
            border: 2px solid white;
            width: fit-content;
            margin: -6px 15px;
            color: white;
        }
        .quantity label{
            font-size: 20px;
            
        }
        .quantity select{
            padding: 4px;
            width: 40px;
            border: none;
            outline: none;
            color: grey;
            background: transparent;
        }
        .p{
            margin: 15px 15px;
            display: grid;
            gap: 10px;
        }
        .express-delivery {
            color: #00bcd4;
            font-size: 20px;
            margin-top: 10px;
        }
        .bank-offers {
            color: #ff9966;
            font-size: 14px;
            margin: 10px 0;
        }
        .price-details{
            color: white;
            margin: 10px 10px;
            width: 280px;
        }
        .row {
            display: flex;
            justify-content: space-between;
            gap: 30px;
            font-size: 14px;
            margin: 5px 0;
        }
        .sp{
            color: red;
        }
        .order-btn {
            background-color: #00b4d8;
            color: white;
            padding: 10px;
            width: 70%;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin: 10px 85px;
        }
        .image img{
            margin: 50px 120px;
            width: 80%;
            height: 75%;
        }
        .cont3{
            background: white;
            padding: 20px;
            position: absolute;
            display: none;
            top: 35%;
            left: 36%;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .cont3-d{
            display: flex;
            justify-content: space-between;
        }
        .cont3 h2 {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 15px;
        }
        .payment-option {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        .payment-option:hover {
            background: #f5f5f5;
        }

        .payment-option img {
            width: 25px;
            height: auto;
        }

        .payment-option span {
            flex: 1;
            margin-left: 10px;
            font-size: 14px;
            font-weight: 500;
            color: #333;
        }

        .selected {
            border-color: #4CAF50;
            background: #e8f5e9;
        }

        .selected::after {
            content: "✔";
            color: #4CAF50;
            font-weight: bold;
            font-size: 16px;
        }

        .next-button {
            background: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .next-button:hover {
            background: #0056b3;
        }

        .conf{
            background-color: white;
            width: 18%;
            align-items: center;
            position: absolute;
            top: 40%;
            left: 40%;
            height: 20vh;
            border-radius: 20px;
            display: none;
        }
        .conf h2{
            color:#090324;
            font-size: 20px;
            position:relative;
            left: 40px;
        }
        .conf span{
            position: relative;
            top: 40px;
            left: 100px;
            font-size: 50px;
            background-color: #090324;
            color:white;
            padding: 10px;
            border-radius: 100%;
        }
    </style>
</head>
<body>
    <div class="main">
        <nav class="navbar">
            <div class="logo">
                <span class="book "><span class="B">B</span>BOOK <i class="fa-solid fa-book-open-reader"></i></span>
            </div>
           <a href="DashBoard.jsp"> <i class="fa-solid fa-house"></i></a>
        </nav>
        <div class="container">
            <div class="cont">
                <div class="header">
                    <a href="Address.jsp"><i class="fa-solid fa-arrow-left"></i></a><span>Order Summary</span>
                </div>
                
                <form action="OrderServlet" method="post">                
                <div class="order-details">
                    <span>Delevery to:</span>
                    <span>Raju Kumar</span>
                    <span>RK University Tramba</span>
                </div>
                <div class="order-detailss">
                    <img name="book_image" class="order-image" src="image2/b1.jpg" alt="Book">
                    <input type="hidden" name="book_image" value="image2/b1.jpg">
                    <div class="order-detailsss">
                        <span name="book_title">Aditi : Books for yoga</sapn>
                        <input type="hidden" name="book_title" value="Aditi : Books for yoga">
                        <span>By shadguru is our outhor books for yoga in </span>
                        <div class="rating">⭐⭐⭐⭐ 4.5 (338 Customers)</div>
                        <div class="pp">
                            <p><i class="fa-solid fa-arrow-down" style="color: red;"></i><s name="price">210</s>(300)</p>
                        </div>
                        <div class="off">
                            <span>2 offers available</span>
                        </div>
                    </div>
                </div>
                <div class="quantity">
				    <label for="qty">Qty:</label>
				    <select id="qty" onchange="updatePrice()">
				        <option value="1">1</option>
				        <option value="2">2</option>
				        <option value="3">3</option>
				        <option value="3">4</option>
				        <option value="3">5</option>
				    </select>
				</div>
                <div class="p">
				    <p class="express-delivery">Express Delivery by tomorrow. <span class="strike">₹79</span> <span class="free">FREE</span></p>
				    <p class="bank-offers">Continue to the next page for Bank Offers</p>
				</div>
                <div class="price-details">
                    <h3>Price Details</h3>
				    <div class="row">
				        <span class="sp">Price (<span id="qty-display">1</span> item):</span>
				        <span id="price">₹299</span>
				    </div>
				    <div class="row discount">
				        <span class="sp">Discount:</span>
				        <span id="discount">- ₹45.85</span>
				    </div>
				    <div class="row">
				        <span class="sp">Platform Fee:</span>
				        <span id="fee">₹3</span>
				    </div>
				    <div class="row">
				        <span class="sp">Delivery Charges:</span>
				        <span><span style="font-size: 12px; text-decoration:line-through;">₹79</span> <span style="color: #00bcd4;">Free Delivery</span></span>
				    </div><hr>
				    <div class="row total">
				        <span class="sp">Total Amount:</span>
				        <span id="total">₹255</span>
				        <input type="hidden" name="price" value="255">
				        <input type="hidden" name="payment_method" value="Cash on Delivery">
				    </div>
                    <button class="order-btn" onclick="Openp()" type='submit'>Order</button>
                </div>
                </form>
            </div>
            <div class="image">
                <img src="https://www.pngkey.com/png/full/443-4432695_school-library-online-book-store.png" alt="">
            </div>
        </div>
        <div class="cont3">
           <div class="cont3-d">
            <h2>PAYMENT METHOD</h2>
            <span class="x" onclick="xx()" style="cursor: pointer;">X</span>
           </div>
            <!-- <div class="payment-option" onclick="selectPayment(this)">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/04/Visa.svg" alt="Visa">
                <span>VISA CARD</span>
            </div> -->
            
            <form>
			    <input type="hidden" name="payment" id="paymentInput">
			
			    <div class="payment-option" onclick="selectPayment(this)">
			        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Google_Pay_Logo.svg/768px-Google_Pay_Logo.svg.png" alt="GooglePay">
			        <span>Google Pay</span>
			    </div>
			
			 <!--    <div class="payment-option" onclick="selectPayment(this)">
			        <img src="https://upload.wikimedia.org/wikipedia/commons/2/2a/Mastercard-logo.svg" alt="MasterCard">
			        <span>MASTER CARD</span>
			    </div> -->
			    
			    <div class="payment-option" onclick="selectPayment(this)">
			        <img src="https://upload.wikimedia.org/wikipedia/commons/2/2a/Mastercard-logo.svg" alt="MasterCard">
			        <span>Case on delivery</span>
			    </div>
			
			    <!-- <div class="payment-option" onclick="selectPayment(this)">
			        <img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg" alt="PayPal">
			        <span>PAYPAL</span>
			    </div> -->
			
			    <button class="next-button" type="submit" onclick="openc()">Confirm →</button>
			</form>
        </div>
        <div class="conf">
            <h2>ORDER CONFIRM</h2>
            <span>✔</span>
        </div>
    </div>

    <script>
        function openc()
        {
            document.querySelector('.conf').style.display='block';
            document.querySelector('.cont3').style.display = 'none';
        }
        function selectPayment(selectedOption) {
            document.querySelectorAll('.payment-option').forEach(option => {
                option.classList.remove('selected');
            });
            selectedOption.classList.add('selected');
        }
        function xx(){
            document.querySelector('.cont3').style.display = 'none';
            document.querySelector('.container').style.filter = 'blur(0px)';
        }
        function Openp(){
            document.querySelector('.cont3').style.display = 'block';
            document.querySelector('.container').style.filter = 'blur(5px)';
        }
    </script>
    <script>
    function selectPayment(element) {
        const selected = element.querySelector('span').textContent;
        document.getElementById('paymentInput').value = selected;

        // Optional: Add a class to highlight selected payment option
        document.querySelectorAll('.payment-option').forEach(el => el.classList.remove('selected'));
        element.classList.add('selected');
    }
</script>

<!--     Handle for qty price here  -->
<script>
const basePrice = 299;
const baseDiscount = 45.85;
const platformFee = 3;

function updatePrice() {
    const qty = parseInt(document.getElementById("qty").value);
    document.getElementById("qty-display").innerText = qty;

    const price = basePrice * qty;
    const discount = baseDiscount * qty;
    const total = price - discount + platformFee;

    document.getElementById("price").innerText = "₹" + price.toFixed(2);
    document.getElementById("discount").innerText = "- ₹" + discount.toFixed(2);
    document.getElementById("total").innerText = "₹" + total.toFixed(2);
}
</script>
</body>
</html> 