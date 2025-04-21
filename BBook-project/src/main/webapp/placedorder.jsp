<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Placed Order</title>
    <style>
        body {
            background-color: #191326;
            color: white;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin:6% 23%;
            background-color: #221B38;
            padding: 20px;
            border-radius: 10px;
  
        }
        h2 {
            margin-bottom: 20px;
        }
        .book-details {
            display: flex;
            gap: 15px;
        }
        .book-image img {
            width: 100px;
            height: auto;
            border-radius: 5px;
        }
        .book-info {
            flex: 1;
        }
        .price {
            color: #f8b400;
        }
        .order-status {
            margin: 20px 0;
        }
        .button-group {
            display: flex;
            gap: 10px;
        }
        button {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .edit {
            background-color: #4CAF50;
            color: white;
        }
        .cancel {
            background-color: #FF3B30;
            color: white;
        }
        .close{
        display: flex;
        justify-content: space-between;
        }
        .x{
        color: aqua;
        font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
 		<div class="close">
 			<h2>Placed Order</h2>
        <a href="Profile.jsp"><span class="x" onclick="xx()">X</span></a>
 		</div>
 		
        <div class="book-details">
            <div class="book-image">
                <img src="image2/b1.jpg" alt="Adiyogi Book">
            </div>
            <div class="book-info">
                <h3>Adiyogi: The Source Of Yoga</h3>
                <p>by Sadhguru, Arundhathi Subramaniam</p>
                <p class="price">💰 <del>₹299</del> ₹255 (15% off)</p>
                <label for="quantity">Qty: </label>
                <select id="quantity">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                </select>
            </div>
        </div>
        <div class="order-status">
            <p>📦 Order Confirmed</p>
            <p>🚚 Shipped</p>
            <p>🛵 Out for Delivery</p>
            <p>✅ Delivered</p>
        </div>
        <div class="button-group">
            <button class="edit">Edit Order</button>
            <button class="cancel">Cancel Order</button>
        </div>
    </div>
</body>
</html>
