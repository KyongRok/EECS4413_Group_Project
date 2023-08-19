<?xml version="1.0" encoding="ISO-8859-1" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:fn="http://java.sun.com/jsp/jstl/functions"
	xmlns:f="http://java.sun.com/jsp/jstl/fmt" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1" session="true" />
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
	<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="icon"
	href="${pageContext.request.contextPath}/res/images/feee.jpg"
	type="image/x-icon" />

<title>Profile</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/core-style.css" />
</head>
<body>
	<header class="header_area">
		<div
			class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
			<nav class="classy-navbar" id="essenceNav">
				<a class="nav-brand" href="Home.jsp"><img
					src="${pageContext.request.contextPath}/res/images/logo.png" alt="" /></a>

				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>
				<div class="classy-menu">

					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"></span>
						</div>
					</div>

					<div class="classynav">
						<ul>
							<li><a href="#">Shop</a>
								<div class="megamenu">
									<ul class="single-mega cn-col-4">
										<li class="title">Women's</li>
										<!-- Pass the gender parameter with value "womens" -->
										<li><a
											href="${pageContext.request.contextPath}/category?gender=women&amp;category=casual">Casual</a></li>
										<li><a
											href="${pageContext.request.contextPath}/category?gender=women&amp;category=formal">Formal</a></li>
										<li><a
											href="${pageContext.request.contextPath}/category?gender=women&amp;category=street">Street
												Style</a></li>
									</ul>
									<!-- Men's Collection -->
									<ul class="single-mega cn-col-4">
										<li class="title">Men's</li>
										<!-- Pass the gender parameter with value "mens" -->
										<li><a
											href="${pageContext.request.contextPath}/category?gender=men&amp;category=casual">Casual</a></li>
										<li><a
											href="${pageContext.request.contextPath}/category?gender=men&amp;category=formal">Formal</a></li>
										<li><a
											href="${pageContext.request.contextPath}/category?gender=men&amp;category=street">Street
												Style</a></li>
									</ul>
									<div class="single-mega cn-col-4">
										<img
											src="${pageContext.request.contextPath}/res/images/bag.jpg"
											alt="" />
									</div>
								</div></li>

							<li><a>Help</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="header-meta d-flex clearfix justify-content-end">

				<div class="user-login-info ">
					<a href="${pageContext.request.contextPath}/LogoutServlet"><img
						src="${pageContext.request.contextPath}/res/images/logout.png"
						alt="" /></a>
				</div>
			</div>

		</div>
	</header>



	<!-- Profile Content -->
	<div class="checkout_area section-padding-80">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6">
					<div class="checkout_details_area mt-50 clearfix">
						<div class="cart-page-heading mb-30">
							<h5>Profile Details</h5>
						</div>
						<p>First Name: ${sessionScope.user.firstName}</p>
						<p>Last Name: ${sessionScope.user.lastName}</p>
						<p>Email: ${sessionScope.user.email}</p>
						<p>(ID): ${sessionScope.user.userId}</p>
						<p>
							<a href="Home.jsp">Back to Home</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6">
					<div class="single_widget_area d-flex mb-30">
						<div class="footer-logo mr-50">
							<a href="#"><img
								src="${pageContext.request.contextPath}/res/images/logo.png"
								alt="" /></a>
						</div>
						<div class="footer_menu">
							<ul>
								<li><a href="shop.html">Shop</a></li>
								<li><a>Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="single_widget_area mb-30">
						<ul class="footer_widget_menu">
							<li><a href="#">Order Status</a></li>
							<li><a href="#">Shipping and Delivery</a></li>
							<li><a href="#">Return and Exchange policy</a></li>
							<li><a href="#">Cancellation Policy</a></li>
							<li><a href="#">Terms</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="row align-items-end">
				<div class="col-12 col-md-6">
					<div class="single_widget_area">
						<div class="footer_heading mb-30">
							<h6>Subscribe</h6>
						</div>
						<div class="subscribtion_form">
							<form action="#" method="post">
								<input type="email" name="mail" class="mail"
									placeholder="Your email here" />
								<button type="submit" class="submit">
									<i class="fa fa-long-arrow-right" aria-hidden="true">
										<!--  Some content -->.
									</i>
								</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="single_widget_area">
						<div class="footer_social_area">
							<a href="#" data-toggle="tooltip" data-placement="top"
								title="Facebook"><i class="fa fa-facebook"
								aria-hidden="true">.</i></a> <a href="#" data-toggle="tooltip"
								data-placement="top" title="Instagram"><i
								class="fa fa-instagram" aria-hidden="true">.</i></a> <a href="#"
								data-toggle="tooltip" data-placement="top" title="Twitter"><i
								class="fa fa-twitter" aria-hidden="true">.</i></a> <a href="#"
								data-toggle="tooltip" data-placement="top" title="Pinterest"><i
								class="fa fa-pinterest" aria-hidden="true">.</i></a> <a href="#"
								data-toggle="tooltip" data-placement="top" title="Youtube"><i
								class="fa fa-youtube-play" aria-hidden="true">.</i></a>
						</div>
					</div>
				</div>
			</div>

			<div class="row mt-5">
				<div class="col-md-12 text-center">
					<p>
						Copyright &#169;
						<script>
							document.write(new Date().getFullYear());
						</script>
						EECS4413 from <a href="https://colorlib.com" target="_blank">Colorlib</a>
					</p>
				</div>
			</div>

		</div>
	</footer>
	<script
		src="${pageContext.request.contextPath}/res/js/jquery/jquery-2.2.4.min.js">
		;
	</script>
	<script src="${pageContext.request.contextPath}/res/js/popper.min.js">
		;
	</script>
	<script
		src="${pageContext.request.contextPath}/res/js/bootstrap.min.js">
		;
	</script>
	<script src="${pageContext.request.contextPath}/res/js/plugins.js">
		;
	</script>
	<script
		src="${pageContext.request.contextPath}/res/js/classy-nav.min.js">
		;
	</script>
	<script src="${pageContext.request.contextPath}/res/js/active.js">
		;
	</script>

</body>
	</html>
</jsp:root>
