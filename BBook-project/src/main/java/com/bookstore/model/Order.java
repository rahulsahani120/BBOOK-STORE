package com.bookstore.model;

import java.sql.Timestamp;

public class Order {
    private int id;
    private int userId;
    private String bookTitle;
    private String bookImage;
    private int quantity;
    private double price;
    private double discount;
    private double totalAmount;
    private String paymentMethod;
    private Timestamp orderDate;
    
    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    
    public String getBookTitle() { return bookTitle; }
    public void setBookTitle(String bookTitle) { this.bookTitle = bookTitle; }
    
    public String getBookImage() { return bookImage; }
    public void setBookImage(String bookImage) { this.bookImage = bookImage; }
    
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    
    public double getDiscount() { return discount; }
    public void setDiscount(double discount) { this.discount = discount; }
    
    public double getTotalAmount() { return totalAmount; }
    public void setTotalAmount(double totalAmount) { this.totalAmount = totalAmount; }
    
    public String getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(String paymentMethod) { this.paymentMethod = paymentMethod; }
    
    public Timestamp getOrderDate() { return orderDate; }
    public void setOrderDate(Timestamp orderDate) { this.orderDate = orderDate; }
}