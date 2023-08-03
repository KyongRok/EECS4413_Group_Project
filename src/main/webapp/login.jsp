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
	src="${pageContext.request.contextPath}/res/js/regLogin.js">
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
		<section class="sign-in">
			<div class="container">
				<div class="signin-content" id="signin">
					<div class="signin-image">
						<figure>
							<img
								src="${pageContext.request.contextPath}/res/images/signin-image2.jpg"
								alt="Sign in image" />
						</figure>
						<a href="register.jsp" class="signup-image-link">Register</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="POST" class="register-form" id="login-form"
							onsubmit="return validateLoginForm();">
							<div class="form-group">

								<input type="text" name="username" id="username"
									placeholder="Username" />
							</div>
							<div class="form-group">

								<input type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<!-- Remember me? -->
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span>.<!-- content --></span></span>
									Remember me</label>
							</div>
							<div class="form-group form-button">

								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Login" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>
</body>
	</html>
</jsp:root>
