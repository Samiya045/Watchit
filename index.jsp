<%@ include file="modal.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Watchit-HOME</title>
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
    .    </div>
    </header>

    <!-- Text Section -->
    <div class="text-section" id="text-section">
        <div class="text-container">
            <p><h1>Your <em>Watch</em>, Your Statement</h1></p>
        
           <p><h1>Show the World, Who You Are!</h1></p>
          <pre>At Watchit,We make sure to match your style<br>with timeless elegance.</pre>
            <a href="men.jsp" class="View-more-main" >
                  <button class="View-more-main">View More</button></a>
        </div>
    </div>      
    <script src="script.js"></script>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        // Check if there are URL parameters
        var urlParams = new URLSearchParams(window.location.search);

        // Display success or failure messages based on the parameters
        if (urlParams.get("loginSuccess") === "true") {
            alert("Signed in successfully!");
            // Clear the URL parameters after displaying the message
            window.history.replaceState({}, document.title, window.location.pathname);
        } else if (urlParams.get("loginSuccess") === "false") {
            alert("User not found. Please sign up for a new account.");
            // Clear the URL parameters after displaying the message
            window.history.replaceState({}, document.title, window.location.pathname);
        }
    });
</script>

    
      <footer>
    <pp>&copy; 2024 Watch Store. All rights reserved.</pp>
  </footer>
    
    </body>
</html>
