<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <title>Address</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background-color: #090324;
            color: white;
            transition: filter 0.3s;
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
        .form-group{
            margin: 15px 0;
        }
        .form-group1{
            margin: 15px 0;
        }
        .form-group1 input{
            height: 60px;
        }
        .form-group label{
            font-size: 20px;
            color: #0dc1d4;
        }
        .form-group1 label{
            font-size: 20px;
            color: #0dc1d4;
        }
        input {
            width: 590px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            font-size: 16px;
        }
        .submit-btn {
            background-color: #00b4d8;
            color: white;
            padding: 10px;
            width: 30%;
            border: none;
            border-radius: 15px;
            font-size: 16px;
            cursor: pointer;
            margin: 20px 0px;
        }
        .image img{
            margin: 90px 110px;
            width: 80%;
            height: 50%;  
        }

        /*                            scc design for payment section        */
        /* .modal {
            width: 30%;
            height: 40%;
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            padding: 15px;
            transform: translate(-50%, -50%);
            background-color:#393257;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            z-index: 2;
        }
        .modal span{
            color: white;
            font-size: 20px;
        }
        .close {
            cursor: pointer;
            float: right;
            font-size: 20px;
            font-weight: bold;
            color:white;
        }
        .blur {
            filter: blur(5px);
        }

        .pay {
            margin-top: 15px;
            background: #393257;
            border-radius: 10px;
            color: white;
            font-size: 18px;
        }
        .pay span {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        .pay ul {
            list-style: none;
            padding: 0;
        }
        .pay ul li {
            margin: 5px 0;
            display: flex;
            align-items: center;
            gap: 1px;
        }
        .pay input[type="radio"], .pay input[type="checkbox"] {
            accent-color: #00b4d8;
            transform: scale(1.2);
        } */
    </style>
</head>
<body>
    <div class="main">
        <nav class="navbar">
            <div class="logo">
                <span class="book "><span class="B">B</span>BOOK <i class="fa-solid fa-book-open-reader"></i></span>
            </div>
           <a href="DashBoard.jsp">
			  <i class="fa-solid fa-house"></i>
			</a>
 
        </nav>
        <div class="container">
        <div class="cont">
            <div class="header">
                <a href="BuyBook.jsp"><i class="fa-solid fa-arrow-left"></i></a><span> Address Summary</span>
            </div>
            <form action="address" method="post">
                <div class="form-group">
                    <label for="Fname">Full Name:</label>
                    <input type="text" id="Fname" name="Fname" placeholder="Full Name" required minlength="3">
                </div>
                
                <div class="form-group1">
                    <label for="address">Address:</label>
                    <textarea name="address" id="address" cols="81" rows="5" required></textarea>
                </div>
                
                <div class="form-group">
                    <label for="building">Building House Number:</label>
                    <input type="text" id="building" name="building" placeholder="Building House Number" required>
                </div>
                
                <div class="form-group">
                    <label for="state">State:</label>
                    <input type="text" id="state" name="state" placeholder="State" required>
                </div>
                
                <div class="form-group">
                    <label for="mobile">Mobile Number:</label>
                    <input type="tel" id="mobile" name="mobile" placeholder="Mobile Number" required pattern="[0-9]{10}" title="Enter a 10-digit mobile number">
                </div>
                
                <button class="submit-btn" type="submit">Submit</button>
            </form>
        </div>
    </div>
    </div>

    <!--                               html structure model for payment section           -->
    <!-- <div class="modal" id="popupBox">
        <span class="close" onclick="closeModal()">&times;</span>
        <span>Choose payemnt method</span>
        <div class="pay">
            <span>1.online paymeny</span>
            <ul>
                <li><input type="radio">Gpay</li>
                <li><input type="radio">PhonePay</li>
                <li><input type="radio">Amazone Pay</li>
                <li><input type="radio">PayPal</li>
            </ul>
            <ul><li><input type="checkbox" name="" id="">2.Case on Delivery</li></ul>
            <ul><li><input type="checkbox" name="" id="">3.Net Banking</li></ul>
        </div>
    </div> -->
</body>
</html>