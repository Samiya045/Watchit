<%@page import="java.util.List"%>
<%@ page import="util.ProductController, util.Product" %>
<%@ include file="modal.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Women's Collection</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo">
            <h1>Watchit</h1>
        </div>
        <nav class="navigation">
            <a href="index.jsp">Home</a>
            <a href="men.jsp">For Men</a>
            <a href="women.jsp">For Women</a>
            <a href="contactus.jsp">Contact Us</a>
            <a href="Cart.jsp">Cart</a>
        </nav>
        <div class="signin">
            <button id="signin-btn" onclick="openModal('login')">Sign In</button>
        </div>
    </header>

    <div class="main_heading">
        <h4>Women's Collection</h4>
    </div>

    <div class="product-catalog">
        <%
            ProductController controller = new ProductController();
            List<Product> products = controller.getWomenProducts();
            for (Product product : products) {
        %>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="<%= product.getImageUrl() %>" alt="<%= product.getName() %>" class="product-image">
                    <div class="product-info">
                        <div class="product-name"><%= product.getName() %></div>
                        <div class="product-price"><%= product.getPrice() %></div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                        <button class="btn cart">Add to Cart</button>
                        <button class="btn order">Order Now</button>
                    </div>
                </div>
            </div>
        <%
            }
        %>
    </div>

    <script src="script.js"></script>
</body>
</html>
