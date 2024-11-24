
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

    <!-- Text Section -->
    <div class="text-section" id="text-section">
        <div class="text-container">
            <p>Your Watch, Your Statement<br>Show the World Who You Are!</p>
            <pre>at WatchIt we believes that every timepiece<br>tells a unique story—crafted with<br>precision, infused with style, and<br>designed to express your individuality.</pre>
            <a href="men.jsp" class="view-more" style="text-decoration: none;">
                  <button class="view-more">View More</button></a>
        </div>
    </div>      
    <script src="script.js"></script>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        // Check if there are URL parameters
        const urlParams = new URLSearchParams(window.location.search);

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
