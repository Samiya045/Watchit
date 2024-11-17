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