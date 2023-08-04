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
    <title>Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/core-style.css"/>
</head>
<body>
   	<!-- Start -->
	<header class="header_area">
		<div
			class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
			<!-- Classy Menu -->
			<nav class="classy-navbar" id="essenceNav">
				<!-- Logo -->
				<a class="nav-brand" href="Home.jsp"><img
					src="${pageContext.request.contextPath}/res/images/logo.png" alt=""/></a>
			
				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>
				<!-- Menu -->
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
										<li><a href="shop.html">Dresses</a></li>
										<li><a href="shop.html">Shirts</a></li>
										<li><a href="shop.html">Jackets</a></li>
										<li><a href="shop.html">Bags</a></li>
										<li><a href="shop.html">Accessories</a></li>
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title">Men's</li>
										<li><a href="shop.html">T-Shirts</a></li>
										<li><a href="shop.html">Long sleeve Shirts</a></li>
										<li><a href="shop.html">Shirts</a></li>
										<li><a href="shop.html">Jackets</a></li>
										<li><a href="shop.html">Accessories</a></li>
									</ul>
									<div class="single-mega cn-col-4">
										<img src="${pageContext.request.contextPath}/res/images/bag.jpg" alt=""/>
									</div>
								</div></li>
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a href="Home.html">Home</a></li>
									<li><a href="shop.html">Shop</a></li>
									<li><a href="single-product-details.html">Product
											Details</a></li>
									<li><a href="checkOut.jsp">Checkout</a></li>
									
								</ul></li>
							
							<li><a>Help</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="header-meta d-flex clearfix justify-content-end">
				<!-- Search Area -->
				<div class="search-area">
					<form action="#" method="post">
						<input type="search" name="search" id="headerSearch"
							placeholder="Type for search"/>
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"><!--  Some content -->.</i>
						</button>
					</form>
				</div>

				<div class="favourite-area">
					<a href="#"><img src="${pageContext.request.contextPath}/res/images/heart.svg" alt=""/></a>
				</div>
				<!-- User Login Info -->
				<!--                <div class="classynav">-->
				<div class="user-login-info ">               
					<a href="login"><img src="${pageContext.request.contextPath}/res/images/user.svg" alt=""/><!-- content --></a>
				</div>
				<!--                </div>-->
				<!-- Cart Area -->
				<div class="cart-area">
					<a href="#" id="essenceCartBtn"><img src="${pageContext.request.contextPath}/res/images/bag.svg"
						alt=""/><span>2</span><!-- content --></a>
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
                        <p>First Name: ${sessionScope.firstName}</p>
                        <p>Last Name: ${sessionScope.lastName}</p>
                        <p>Email: ${sessionScope.email}</p>
                        <p>Username(ID): ${sessionScope.username}</p>
                        <p><a href="Home.jsp">Back to Home</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Area -->
    <footer class="footer_area clearfix">
		<div class="container">
			<div class="row">
				<!-- Single Widget Area -->
				<div class="col-12 col-md-6">
					<div class="single_widget_area d-flex mb-30">
						<!-- Logo -->
						<div class="footer-logo mr-50">
							<a href="#"><img src="${pageContext.request.contextPath}/res/images/logo.png" alt=""/></a>
						</div>
						<!-- Footer Menu -->
						<div class="footer_menu">
							<ul>
								<li><a href="shop.html">Shop</a></li>
								<li><a>Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Single Widget Area -->
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
				<!-- Single Widget Area -->
				<div class="col-12 col-md-6">
					<div class="single_widget_area">
						<div class="footer_heading mb-30">
							<h6>Subscribe</h6>
						</div>
						<div class="subscribtion_form">
							<form action="#" method="post">
								<input type="email" name="mail" class="mail"
									placeholder="Your email here"/>
								<button type="submit" class="submit">
									<i class="fa fa-long-arrow-right" aria-hidden="true"><!--  Some content -->.</i>
								</button>
							</form>
						</div>
					</div>
				</div>
				<!-- Single Widget Area -->
				<div class="col-12 col-md-6">
					<div class="single_widget_area">
						<div class="footer_social_area">
							<a href="#" data-toggle="tooltip" data-placement="top"
								title="Facebook"><i class="fa fa-facebook"
								aria-hidden="true"><!--  Some content -->.</i></a> <a href="#" data-toggle="tooltip"
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
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &#169;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | EECS4413 from <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>

		</div>
	</footer>
	<script src="${pageContext.request.contextPath}/res/js/jquery/jquery-2.2.4.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/popper.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/plugins.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/classy-nav.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/active.js">;</script>

</body>
	</html>
</jsp:root>