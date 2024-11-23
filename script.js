       // Show the appropriate modal
function openModal(formType) {
    closeModal(); // Close any open modals first
    if (formType === 'login') {
        document.getElementById('login-modal').style.display = 'flex';
    } else if (formType === 'signup') {
        document.getElementById('signup-modal').style.display = 'flex';
    }
}
function closeModal() {// Close the modal
    document.getElementById('login-modal').style.display = 'none';
    document.getElementById('signup-modal').style.display = 'none';
}
function validateForm() {// Validate the sign-up form
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm-password").value;
    var email = document.getElementById("email").value;
    var isValid = true;
    if (username.length < 3 || username.length > 25) {    // Username validation
        document.getElementById("username-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("username-error").style.display = "none";}
    var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {  // Email validation
        document.getElementById("email-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("email-error").style.display = "none";
    }
    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&*!])[A-Za-z\d@#$%^&*!]{8,}$/;
    if (!password.match(passwordRegex)) {    // Password validation
        document.getElementById("password-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("password-error").style.display = "none";
    }
    if (password !== confirmPassword) {   // Confirm password validation
        document.getElementById("confirm-password-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("confirm-password-error").style.display = "none";
    }
    if (isValid) {
        closeModal(); // Close the modal if valid
    }
     return isValid;}
function validateLoginForm() {// Validate the login form
    var email = document.getElementById("login-email").value;
    var password = document.getElementById("login-password").value;
     var isValid = true;   
    var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {// Email validation
        document.getElementById("login-email-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("login-email-error").style.display = "none";
    }
    if (password.length < 8) { // Password validation
        document.getElementById("login-password-error").style.display = "block";
        isValid = false;
    } else {
        document.getElementById("login-password-error").style.display = "none";
    }
    if (isValid) {
        closeModal(); // Close the modal if valid
    }

    return isValid;}
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



