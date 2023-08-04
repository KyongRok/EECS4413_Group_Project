/**
 * 
 */

function validateLoginForm() {
    console.log("Validating login form...");
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    if (!email.trim()) {
        alert("Email cannot be blank");
        return false;
    }
    if (!password.trim()) {
        alert("Password cannot be blank");
        return false;
    }

    // Assuming login is successful, redirect to Home.jsp
//    window.location.href = "Home.jsp";

    // Return false to prevent form submission (since we're redirecting manually)
    return true;
}
