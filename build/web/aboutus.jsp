<%@ include file="modal.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
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
  

<div class="container">
        <div class="center">
            <img src="b3.JPG" alt="banner"/>
        </div>
        <br>
        <div class="text-container-aboutus">

            <div class="text-container-aboutus">
                <h2>
                    ABOUT US
                </h2>
                <p>Welcome to Watchit, where elegance meets functionality. Our mission is to provide you with the finest collection of luxury and affordable timepieces, carefully curated to suit every taste and occasion. At Watchit, we believe in the timeless value of precision and style, ensuring that every watch we offer represents the perfect blend of craftsmanship and innovation.
<br>
Each of our timepiece is a testament to meticulous design, reflecting both contemporary trends and timeless aesthetics. We are committed to offering unparalleled quality and an exceptional customer experience, making it easy for you to find the perfect watch for yourself or a loved one. With Watchit, every moment is an opportunity to express your individuality and embrace the art of horology 
             .</p>
            </div>
        </div>
    </div>

          <!-- Information Section -->
        <div class="info-section">
            <div class="info-box">
                <h3>Our Mission</h3>
                <p>Deliver exceptional timepiece that blend style, quality, and affordability for every occasion.</p>
            </div>
            <div class="info-box">
                <h3>Our Services</h3>
                <p>Providing exclusive collections, personalized customer service, and fast delivery worldwide.</p>
            </div>
            <div class="info-box">
                <h3>Our Achievements</h3>
                <p>Over 10,000 satisfied customers and partnerships with leading watch brands globally.</p>
            </div>
        </div>
 </body>

</html>