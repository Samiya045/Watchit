
<%@ include file="modal.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Men's Collection</title>
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
        <h4>Men's Collection</h4>
    </div>

    <div class="product-catalog">
        <%
            String[][] products = {
                {"img1.jpg", "Black Chronograph", "$99.99"},
                {"img2.jpeg", "Classic Blue Dia", "$89.99"},
                {"img3.jpeg", "Golden Mesh Strap", "$59.99"},
                {"img4.jpeg", "Luxury Silver Dial", "$49.99"},
                {"img5.jpeg", "Golden Classic", "$99.99"},
                {"img6.jpeg", "Elegant ck Leather", "$89.99"},
                {"img7.jpg", "Blue Dive Watch", "$79.99"},
                {"img8.jpeg", "Futuristic Blue Digital", "$49.99"},
                {"G2.jpeg", "Rose Gold Minimalist", "$49.99"},
                {"G2.jpeg", "Product 10", "$49.99"}
            };

            for(int i = 0; i < products.length; i++) {
        %>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="<%= products[i][0] %>" alt="<%= products[i][1] %>" class="product-image">
                    <div class="product-info">
                        <div class="product-name"><%= products[i][1] %></div>
                        <div class="product-price"><%= products[i][2] %></div>
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
        <% } %>
    </div>

    <script src="script.js"></script>
</body>
</html>
