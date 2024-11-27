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


//product pop up
 function openPopup(image, name, price, summary, reviews) {
    var popup = document.getElementById('product-popup');

    // Set image and name
    document.getElementById('popup-image').src = image;
    document.getElementById('popup-name').textContent = name;

    // Update text content after the labels using string concatenation
    document.getElementById('popup-price').innerHTML = '<span class="popup-label">Price:</span> ' + price;
    document.getElementById('popup-summary').innerHTML = '<span class="popup-label">Summary:</span> ' + summary;
    document.getElementById('popup-reviews').innerHTML = '<span class="popup-label">Reviews:</span> ' + reviews;

    // Display the popup
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






