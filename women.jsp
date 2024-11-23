
<%@page import="java.util.List"%>
<%@page import="util.ProductController"%>
<%@page import="util.Product"%>
<%@ page contentType="text/html; charset=UTF-8" %>
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
                    <button class="btn view-more" 
                         onclick="openPopup('<%= product.getImageUrl() %>', '<%= product.getName() %>', 
                        '<%= product.getPrice() %>', '<%= product.getSummary() %>', '<%= product.getReviews() %>')">
                        View More
                    </button>
                </div>
            </div>
        </div>
    <%
        }
    %>
</div>

<!-- Product Pop up -->
<div id="product-popup" class="product-popup">
    <div class="popup-content">
        <div class="popup-left">
            <img id="popup-image" src="" alt="Product Image">
        </div>
        <div class="popup-right">
            <h2 id="popup-name"></h2>
            <p id="popup-price"></p>
            <p id="popup-summary"></p>
            <p id="popup-reviews"></p>
            <button class="btn close-popup" onclick="closePopup()">Close</button>
        </div>
    </div>
</div>

   

    <script src="script.js"></script>
        <script>
       function openPopup(imageUrl, name, price, summary, reviews) {
    var popup = document.getElementById('product-popup');
    document.getElementById('popup-image').src = image;
    document.getElementById('popup-name').textContent = name;
    document.getElementById('popup-price').textContent = price;
    document.getElementById("popup-summary").innerText = summary;
    document.getElementById("popup-reviews").innerText = reviews;
    popup.style.display = 'flex';
}

function closePopup() {
    var popup = document.getElementById('product-popup');
    popup.style.display = 'none';
}

document.getElementById('product-popup').addEventListener('click', function (event) {
    if (event.target === this) {
        closePopup();
    }
});

    </script>
</body>
</html>
