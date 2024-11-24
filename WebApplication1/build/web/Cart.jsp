<%@ include file="modal.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="style.css">
    </head>
    
<body>
    <!-- Header section -->
    <header>
        <div class="logo">
            <h1>Watchit</h1>
        </div>
        <nav class="navigation">
             <a href="index.jsp" >Home</a>
            <a href="men.jsp">For Men</a>
            <a href="women.jsp">For Women</a>
            <a href="contactus.jsp">Contact Us</a>
            <a href="Cart.jsp">Cart</a>
        </nav>
        <div class="signin">
            <button id="signin-btn" onclick="openModal('login')">Sign In</button>
        </div>
    </header>
    
     <footer>
    <pp>&copy; 2024 Watch Store. All rights reserved.</pp>
  </footer>
    </body>
</html>
