
<%@page import="java.util.List"%>
<%@page import="util.ProductController"%>
<%@page import="util.Product"%>
<%@ page contentType="text/html; charset=UTF-8" %>
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
        <h4>Men's Collection</h4>
    </div>

    <div class="product-catalog">
        <%
            ProductController controller = new ProductController();
            List<Product> products = controller.getMenProducts();
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
                          onclick="openPopup('<%= product.getImageUrl() %>', 
                                             '<%= product.getName() %>', 
                                             '<%= product.getPrice() %>', 
                                             '<%= product.getSummary() %>', 
                                             '<%= product.getReviews() %>')">View More
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
        <button class="close-popup" onclick="closePopup()">&times;</button> <!-- Close button -->
        <div class="popup-left">
            <img id="popup-image" src="" alt="Product Image">
        </div>
        <div class="popup-right">
            <h2 id="popup-name"></h2>
            <p id="popup-price"><span class="popup-label">Price:</span> </p>
            <p id="popup-summary"><span class="popup-label">Summary:</span></p>
            <p id="popup-reviews"><span class="popup-label">Reviews:</span></p>
        </div>
    </div>
</div>
    <script src="script.js"></script>

</body>
</html>
