<?xml version="1.0" encoding="ISO-8859-1" ?>

<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:fn="http://java.sun.com/jsp/jstl/functions"
	xmlns:f="http://java.sun.com/jsp/jstl/fmt" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1" session="false" />
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Login - Bloom</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/res/js/register.js">
	;
</script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/fonts/material-icon/css/material-design-iconic-font.min.css" />
<link rel="StyleSheet"
	href="${pageContext.request.contextPath}/res/css/regLogin.css"
	type="text/css" title="4413" media="screen, print" />
</head>
<body>
	<div class="main">

		<section class="signup">
			<div class="container">
				<div class="signup-content" id="signup">
					<div class="signup-form">
						<h2 class="form-title">Create an Account</h2>

						<form method="POST" class="register-form" id="register-form"
							onsubmit="return validateRegistrationForm();">
							<div class="form-group">
								<input type="text" name="fname" id="fname"
									placeholder="First Name" />
							</div>
							<div class="form-group">
								<input type="text" name="lname" id="lname"
									placeholder="Last Name" />
							</div>
							<div class="form-group">
								<input type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="form-group">

								<input type="text" name="username" id="username"
									placeholder="Username" />
							</div>
							<div class="form-group">
								<input type="password" name="password" id="password_reg"
									placeholder="Password" />
							</div>
							<div class="form-group form-button">
								
								<input type="submit" name="signup" class="form-submit"
									value="Register"  />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img
								src="${pageContext.request.contextPath}/res/images/signin-image.jpg"
								alt="Sign up image" />
						</figure>
						<a href="login.jsp" class="signup-image-link">Already a member -
							Login</a>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
	</html>
</jsp:root>
