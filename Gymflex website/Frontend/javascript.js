// ================================
// FitZone Gym - JavaScript
// ================================


// Navbar scroll effect
window.addEventListener("scroll", function () {

    const header = document.querySelector("header");

    if (window.scrollY > 50) {
        header.classList.add("scrolled");
    } else {
        header.classList.remove("scrolled");
    }

});


// Join Now button
const joinButton = document.querySelector(".hero button");

joinButton.addEventListener("click", function () {

    document.querySelector("#membership").scrollIntoView({
        behavior: "smooth"
    });

});


// Membership buttons
const membershipButtons = document.querySelectorAll(
    "#membership .card button"
);

membershipButtons.forEach(function (button) {

    button.addEventListener("click", function () {

        const planName =
            button.parentElement.querySelector("h3").textContent;

        alert(
            "You selected the " +
            planName +
            " membership plan!"
        );

    });

});


// Product buttons
const productButtons = document.querySelectorAll(
    "#products .card button"
);

productButtons.forEach(function (button) {

    button.addEventListener("click", function () {

        const productName =
            button.parentElement.querySelector("h3").textContent;

        alert(
            productName +
            " has been added to your cart!"
        );

    });

});


// Contact message
console.log("Welcome to FitZone Gym!");