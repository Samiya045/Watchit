<%-- 
    Document   : men
    Created on : Oct 15, 2024, 8:57:06 PM
    Author     : bisma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        <style>
            * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    background-image: url(Capture1.jpg);
    background-size: cover;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

header {
    width: 100%;
    margin-bottom: 120px;
    top: 0;
    right: 0;
    background-color: none;
    padding: 10px 20px;
    display: flex;
    position: fixed; /* Makes the header stay fixed at the top */
    justify-content: flex-end;
    align-items: center;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    z-index: 1000; /* Ensures header stays above other content */
}

.logo {
    margin-right: auto;
}

.logo h1 {
    color: #eedfdf;
    font-size: 24px;
}

.signin {
    margin-right: 20px;
    margin-left: 40px;
}

.signin button {
    padding: 8px 16px;
    background-color: #d8570d;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.5s;
}

.signin button:hover {
    background-color: #ac4509;
}

/* Modal Styling */
.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(39, 38, 38, 0.5);
    justify-content: center;
    align-items: center;
}

.modal-content {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 350px;
    text-align: center;
}

h2 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #d8570d;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    text-align: left;
    margin-bottom: 8px;
    color: #333;
}

input {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #0c0c0c;
    border-radius: 4px;
}

button {
    padding: 10px;
    background-color: #d8570d;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: color 0.5s;
}

button:hover {
    background-color: #ac4509;
}

small {
    color: red;
    display: none;
    text-align: left;
}

.switch-form {
    margin-top: 15px;
}

.switch-form a {
    color: #d8570d;
    text-decoration: none;
    cursor: pointer;
    transition: text-decoration 0.5s;
}

.switch-form a:hover {
    text-decoration: underline;
}

/* Close Button Styling */
.close {
    position: absolute;
    top: 10px;
    right: 20px;
    font-size: 24px;
    cursor: pointer;
    color: #ccc;
}

.navigation a {
    position: relative;
    font-size: 0.5cm;
    text-decoration: none;
    color: rgb(243, 235, 235);
    font-weight: 200;
    margin-left: 40px;  
    transition: color 0.5s, text-decoration 0.5s;
}

.navigation a:hover {
    color: #d8570d;
    text-decoration: underline;
}

/* Text Section */
.text-section {
    position: absolute;
    top: 50%;
    left: 30px; /* Adjust this value as needed */
    transform: translateY(-30%);
    color: white; /* Change to match your design */
    text-align: left; /* Align text to the left */
}

.text-container {
    padding-left: 5%;
    font-size: 1.7em; /* Adjust font size as needed */
}
.text-container  pre
{ 
    font-size: 14px; /* Smaller size */
    font-weight: 300;
    text-align: justify;

}                           
.view-more {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #d8570d;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.5s;
}

.view-more:hover {
    background-color: #ac4509;
}

/* Product Catalog Styling */
.product-catalog {
    margin-top: 20px; /* Adds space below the header */
    display: flex;
    flex-direction: column;
    align-items: center;
}

.product-catalog {
   
    display: flex;
    flex-direction: column;
    align-items: center;
}

.product-boxes1 {
    margin-top: 350px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}
.product-boxes2 {
    margin-top: 20px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

.product-box {
    width: 150px;
    height: 250px; /* Increased height to accommodate additional content */
    border: 1px solid #0c0c0c;
    border-radius: 5px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: bold;
    color: #333;
    overflow: hidden; /* Hide overflow content */
}

.product-wrapper {
    background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
    backdrop-filter: blur(5px); /* Blur effect */
    padding: 10px;
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
}

.product-image {
    width: 100%; /* Full width */
    height: auto; /* Maintain aspect ratio */
}

.product-info {
    text-align: center;
    margin-top: 5px; /* Space between image and info */
}

.product-name {
    font-weight: bold;
}

.product-price {
    color: #d8570d; /* Price color */
}

.product-quantity {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 5px; /* Space between price and quantity */
}

.quantity-btn {
    background-color: #d8570d;
    color: white;
    border: none;
    border-radius: 3px;
    padding: 5px 10px;
    cursor: pointer;
    margin: 0 5px; /* Space between buttons */
}

.quantity {
    margin: 0 10px; /* Space between quantity number and buttons */
}
h1
{
    margin-bottom: 20px;
    font-size: 24px;
    color: white;
}
            
        </style>
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
            <a href="#">Contact Us</a>
            <a href="#">Cart</a>
        </nav>
        <div class="signin">
            <button id="signin-btn" onclick="openModal('login')">Sign In</button>
        </div>
    </header>
         
          <!-- Product Catalog Section -->
    <div class="product-catalog" id="product-catalog" >
      
        <div class="product-boxes1">
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img1.jpeg" alt="Product 1" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 1</div>
                        <div class="product-price">$99.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img2.jpeg" alt="Product 2" class="product-image">
                    <div class="product-info">
                        <div class="product-name">name:Product 2</div>
                        <div class="product-price">$89.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img3.jpeg" alt="Product 3" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 3</div>
                        <div class="product-price">$79.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img4.jpeg" alt="Product 4" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 4</div>
                        <div class="product-price">$69.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img5.jpeg" alt="Product 5" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 5</div>
                        <div class="product-price">$59.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img6.jpeg" alt="Product 6" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 6</div>
                        <div class="product-price">$49.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

       <div class="product-catalog" id="product-catalog" >
        <div class="product-boxes2">
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img1.jpeg" alt="Product 1" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 1</div>
                        <div class="product-price">$99.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img2.jpeg" alt="Product 2" class="product-image">
                    <div class="product-info">
                        <div class="product-name">name:Product 2</div>
                        <div class="product-price">$89.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img3.jpeg" alt="Product 3" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 3</div>
                        <div class="product-price">$79.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img4.jpeg" alt="Product 4" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 4</div>
                        <div class="product-price">$69.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img5.jpeg" alt="Product 5" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 5</div>
                        <div class="product-price">$59.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img6.jpeg" alt="Product 6" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 6</div>
                        <div class="product-price">$49.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="product-catalog" id="product-catalog" >
        
        <div class="product-boxes2">
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img1.jpeg" alt="Product 1" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 1</div>
                        <div class="product-price">$99.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img2.jpeg" alt="Product 2" class="product-image">
                    <div class="product-info">
                        <div class="product-name">name:Product 2</div>
                        <div class="product-price">$89.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img3.jpeg" alt="Product 3" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 3</div>
                        <div class="product-price">$79.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img4.jpeg" alt="Product 4" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 4</div>
                        <div class="product-price">$69.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img5.jpeg" alt="Product 5" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 5</div>
                        <div class="product-price">$59.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="product-wrapper">
                    <img src="img6.jpeg" alt="Product 6" class="product-image">
                    <div class="product-info">
                        <div class="product-name">Product 6</div>
                        <div class="product-price">$49.99</div>
                        <div class="product-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(this, -1)">-</button>
                            <span class="quantity">1</span>
                            <button class="quantity-btn" onclick="updateQuantity(this, 1)">+</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
           
            <!-- Modal Sections -->
    <div class="modal" id="signup-modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Sign Up</h2>
            <form id="signup" onsubmit="return validateForm()">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" placeholder="Enter username">
                <small id="username-error">Username must be between 3 and 25 characters.</small>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="xyz@gmail.com">
                <small id="email-error">Please enter a valid email.</small>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter password">
                <small id="password-error">Password must have at least 8 characters, 1 uppercase letter, 1 number, and 1 special character.</small>

                <label for="confirm-password">Confirm Password:</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Reenter your password">
                <small id="confirm-password-error">Passwords do not match.</small>

                <button type="submit">SIGN UP</button>
            </form>
            <p class="switch-form">
                Have an account? <a href="#" onclick="openModal('login')">Sign In</a>
            </p>
        </div>
    </div>

    <!-- Login Modal -->
    <div class="modal" id="login-modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Login</h2>
            <form id="login" onsubmit="return validateLoginForm()">
                <label for="login-email">Email:</label>
                <input type="email" id="login-email" name="login-email" placeholder="Enter your email">
                <small id="login-email-error">Please enter a valid email.</small>

                <label for="login-password">Password:</label>
                <input type="password" id="login-password" name="login-password" placeholder="Enter password">
                <small id="login-password-error">Password must be at least 8 characters long.</small>

                <button type="submit">LOGIN</button>
            </form>
            <p class="switch-form">
                Don't have an account? <a href="#" onclick="openModal('signup')">Sign Up</a>
            </p>
        </div>
    </div>
    <script >
   // Show the appropriate modal
function openModal(formType) {
    closeModal(); // Close any open modals first
    if (formType === 'login') {
        document.getElementById('login-modal').style.display = 'flex';
    } else if (formType === 'signup') {
        document.getElementById('signup-modal').style.display = 'flex';
    }
}

// Close the modal
function closeModal() {
    document.getElementById('login-modal').style.display = 'none';
    document.getElementById('signup-modal').style.display = 'none';
}

// Validate the sign-up form
function validateForm() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm-password").value;
    var email = document.getElementById("email").value;

    var isValid = true;

    // Username validation
    if (username.length < 3 || username.length > 25) {
        document.getElementById("username-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("username-error").style.display = "none";
    }

    // Email validation
    var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {
        document.getElementById("email-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("email-error").style.display = "none";
    }

    // Password validation
    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&*!])[A-Za-z\d@#$%^&*!]{8,}$/;
    if (!password.match(passwordRegex)) {
        document.getElementById("password-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("password-error").style.display = "none";
    }

    // Confirm password validation
    if (password !== confirmPassword) {
        document.getElementById("confirm-password-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("confirm-password-error").style.display = "none";
    }

    if (isValid) {
        closeModal(); // Close the modal if valid
    }

    return isValid;
}

// Validate the login form
function validateLoginForm() {
    var email = document.getElementById("login-email").value;
    var password = document.getElementById("login-password").value;

    var isValid = true;

    // Email validation
    var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {
        document.getElementById("login-email-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("login-email-error").style.display = "none";
    }

    // Password validation
    if (password.length < 8) {
        document.getElementById("login-password-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("login-password-error").style.display = "none";
    }

    if (isValid) {
        closeModal(); // Close the modal if valid
    }

    return isValid;
}
function showProducts() {
    // Hide the text section and show the product catalog
    document.getElementById("text-section").style.display = "none";
    document.getElementById("product-catalog").style.display = "block";
}

function showHome() {
    // Show the text section and hide the product catalog
    document.getElementById("text-section").style.display = "block";
    document.getElementById("product-catalog").style.display = "none";
}

function showProducts() {
    // Hide the text section and show the product catalog
    document.getElementById("text-section").style.display = "none";
    document.getElementById("product-catalog").style.display = "block";
}

function updateQuantity(button, change) {
    const quantitySpan = button.parentElement.querySelector('.quantity');
    let quantity = parseInt(quantitySpan.innerText);
    quantity += change;

    // Ensure quantity doesn't go below 1
    if (quantity < 1) {
        quantity = 1;
    }
    quantitySpan.innerText = quantity;
}
    </script>


    
    
    
    </body>
</html>
