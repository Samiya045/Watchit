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
 function openPopup(image, name, price, summary, discount) {
    var popup = document.getElementById('product-popup');

    // Set image and name
    document.getElementById('popup-image').src = image;
    document.getElementById('popup-name').textContent = name;

    // Update text content after the labels using string concatenation
    document.getElementById('popup-price').innerHTML = '<span class="popup-label">Price:</span> ' + price;
    document.getElementById('popup-summary').innerHTML = '<span class="popup-label">Summary:</span> ' + summary;
    document.getElementById('popup-reviews').innerHTML = '<span class="popup-label">Discount:</span> ' + discount;

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

//cart



var SHIPPING_FEE = 250;
var DISCOUNT = 1999;
var FREE_SHIPPING_THRESHOLD = 10000;


var subtotalEl = document.getElementById("subtotal");
var shippingFeeEl = document.getElementById("shipping-fee");
var discountEl = document.getElementById("discount");
var totalEl = document.getElementById("total");
var itemCountEl = document.getElementById("item-count");

function renderCart() {
    cartItemsContainer.innerHTML = "";
    var subtotal = 0;

    // Check if the cart is empty
    if (cart.length === 0) {
        cartItemsContainer.innerHTML = '<p class="empty-cart">Your cart is empty!</p>';
        subtotal = 0; // Ensure subtotal is 0 for empty cart
    } else {
        cart.forEach(function(item) {
            subtotal += item.price;

            cartItemsContainer.innerHTML += 
                '<div class="cart-item">' +
                    '<img src="' + item.image + '" alt="' + item.name + '">' +
                    '<div class="item-details">' +
                        '<h4>' + item.name + '</h4>' +
                        '<p>PKR ' + item.price + '</p>' +
                    '</div>' +
                    '<button class="remove-btn" onclick="removeItem(' + item.id + ')">Remove</button>' +
                '</div>';
        });
    }




    updateSummary(subtotal);
    itemCountEl.textContent = cart.length;
}

function updateSummary(subtotal) {
    var shippingFee = SHIPPING_FEE;
    var discount = 0;

    if (subtotal >= FREE_SHIPPING_THRESHOLD) {
        shippingFee = 0;
        discount = DISCOUNT;
    }

    var total = subtotal + shippingFee - discount;

subtotalEl.textContent = "PKR " + subtotal;
shippingFeeEl.textContent = "PKR " + shippingFee;
discountEl.textContent = "PKR " + discount;
totalEl.textContent = "PKR " + total;

}

function removeItem(id) {
    cart = cart.filter(item => item.id !== id);
    renderCart();
}

// Initialize cart
window.onload = renderCart;

// Add product to cart
function addToCart( name, price, imageUrl) {
    // Check if item is already in the cart
    var existingItem = cart.find(item => item.id === id);
    if (existingItem) {
        alert("This item is already in your cart!");
        return;
    }

    // Add new item to the cart
    cart.push({
        id: id,
        name: name,
        price: price,
        image: imageUrl
    });

    // Update cart UI
    renderCart();

    // Notify the user
    alert(name + " has been added to your cart!");
}









