/**
 * 
 */
function validateRegistrationForm() {
    console.log("Validating registration form...");
    
    var username = document.getElementById('username').value;
    var firstName = document.getElementById('fname').value;
    var lastName = document.getElementById('lname').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password_reg').value;
    if (!username.trim()) {
        alert("username cannot be blank");
        return false;
    }
    if (!firstName.trim()) {
        alert("First Name can't be blank");
        return false;
    }
    if (!lastName.trim()) {
        alert("Last Name can't be blank");
        return false;
    }
    if (!email.trim()) {
        alert("Email can't be blank");
        return false;
    }
    

    if (password.length < 8) {
        alert("Password must be at least 8 characters long.");
        return false;
    }
    // Assuming registration is successful, redirect to Home.jsp
    //window.location.href = "Home.jsp";

    // Return false to prevent form submission (since we're redirecting manually)
    return false;
}
