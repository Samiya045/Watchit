
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
            String[][] products = {
                {"G10.jpeg", "Elegant Black Leather", "$99.99"},
                {"G9.jpeg", "Classic Rose Gold", "$89.99"},
                {"G3.jpeg", "Silver-Toned Bracelet", "$59.99"},
                {"G4.jpeg", "Minimalist Black Dial", "$49.99"},
                {"G5.jpeg", " Ruby Red Glamour ", "$99.99"},
                {"G6.jpeg", " Midnight Star ", "$89.99"},
                {"G1.jpeg", " Crystal Accent Silver", "$79.99"},
                {"G2.jpeg", "Product 10", "$49.99"},
                {"G2.jpeg", "Product 10", "$49.99"},
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
