
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Watchit</title>
    </head>
    
    <body>
              
            <!-- Modal Sections -->
            
    <div class="modal" id="signup-modal">
        <div class="modal-content">
           <button class="Close2" onclick="closeModal()">&times;</button>
            <h2>Sign Up</h2>
            <form  action="data.jsp" method="get"  ACACaaid="signup" onsubmit="return validateForm()">
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
             <button class="Close1" onclick="closeModal()">&times;</button>
            <h2>Login</h2>
           <form id="login" action="login.jsp" method="post" onsubmit="return validateLoginForm()">
             <label for="login-email">Email:</label>
             <input type="email" id="login-email" name="login-email" placeholder="Enter your email">
             <small id="login-email-error">Please enter a valid email.</small>
             <br>

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
    <script src="script.js"></script>
   
    </body>
</html>
