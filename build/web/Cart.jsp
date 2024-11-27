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
     <div class="main_heading">
        
    </div>
     <footer>
    <pp>&copy; 2024 Watch Store. All rights reserved.</pp>
  </footer>
    </body>
</html>
