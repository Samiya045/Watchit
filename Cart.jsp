<%@ include file="modal.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cart - WATCHIT</title>
        <link rel="stylesheet" href="style.css"> <!-- Your existing CSS -->
        
    </head>
    
<body>
    <!-- Header section -->
    <header>
        <div class="logo">
            <h1>Watchit</h1>
        </div>
        <nav class="navigation">
            <a href="index.jsp" class="<%= request.getServletPath().equals("/index.jsp") ? "active-link" : "" %>">Home</a>
            <a href="men.jsp" class="<%= request.getServletPath().equals("/men.jsp") ? "active-link" : "" %>">For Men</a>
            <a href="women.jsp" class="<%= request.getServletPath().equals("/women.jsp") ? "active-link" : "" %>">For Women</a>
            <a href="aboutus.jsp" class="<%= request.getServletPath().equals("/aboutus.jsp") ? "active-link" : "" %>">About Us</a>
            <a href="Cart.jsp" class="<%= request.getServletPath().equals("/Cart.jsp") ? "active-link" : "" %>">Cart</a>
        </nav>
        <div class="signin">
            <button id="signin-btn" onclick="openModal('login')">Sign In</button>
        </div>
    </header>

    <!-- Cart Section -->
    <div class="cart-container">
        <h1>Cart (<span id="item-count">0</span>)</h1>
        <div class="cart-items" id="cart-items">
            <!-- Cart items dynamically added here -->
        </div>
        <div class="summary">
            <h2>Summary</h2>
            <p>Subtotal: <span id="subtotal">PKR 0</span></p>
            <p>Shipping fee: <span id="shipping-fee">PKR 250</span></p>
            <p>Discount: <span id="discount">PKR 0</span></p>
            <h3>Total: <span id="total">PKR 0</span></h3>
            <button class="checkout-btn">Checkout</button>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Watch Store. All rights reserved.</p>
    </footer>
    <script src="script.js"></script>
</body>
</html>
