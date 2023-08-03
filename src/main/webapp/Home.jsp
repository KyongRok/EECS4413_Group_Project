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
	    <meta charset="UTF-8"/>
    <meta name="description" content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

<title>Bloom -Fashion Store</title>



    <!-- css-->
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
					<span class="navbarToggler"><span><!-- content --></span><span><!-- content --></span><span><!-- content --></span></span>
				</div>
				<!-- Menu -->
				<div class="classy-menu">
				
					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"><!-- content --></span>
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
					<a href="login"><img src="${pageContext.request.contextPath}/res/images/user.svg" alt=""/></a>
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


	<div class="cart-bg-overlay"></div>

	<div class="right-side-cart-area">

		<!-- Cart Button -->
		<div class="cart-button">
			<a href="#" id="rightSideCart"><img src="${pageContext.request.contextPath}/res/images/bag.svg"
				alt=""/><span>2</span></a>
		</div>

		<div class="cart-content d-flex">

			<!-- Cart List Area -->
			<div class="cart-list">
				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="${pageContext.request.contextPath}/res/images/jeans.jpg" class="cart-thumb" alt=""/>
							
					<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"><!--  Some content -->.</i></span><span class="badge">Zara</span>
							<h6>Black Jeans</h6>
							<p class="price">$55.00</p>
							<p class="size">Size: L</p>
							<p class="color">Color: Black</p>
							
						</div>
					</a>
				</div>

				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="${pageContext.request.contextPath}/res/images/flr.jpg" class="cart-thumb" alt=""/>
							
					<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"><!--  Some content -->.</i></span> <span class="badge">Zara</span>
							<h6>Flower Bag</h6>
							<p class="price">$35.00</p>
							<p class="size">Size: M</p>
							<p class="color">Color: Yellow</p>
							
						</div>
					</a>
				</div>
			</div>

			<!-- Cart Summary -->
			<div class="cart-amount-summary">

				<h2>Summary</h2>
				<ul class="summary-table">
					<li><span>sub-total:</span> <span>$100.00</span></li>
					<li><span>discount:</span> <span>-10%</span></li>
					<li><span>total:</span> <span>$93.99</span></li>
				</ul>
				<div class="checkout-btn mt-100">
					<a href="checkOut.jsp" class="btn essence-btn">check out</a>
				</div>
			</div>
		</div>
	</div>

	<section class="welcome_area bg-img background-overlay"
		style="background-image: url(${pageContext.request.contextPath}/res/images/welcome.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="hero-content">
						<h6>Best Sellers</h6>
						<h2>Trending</h2>
						<a href="#" class="btn essence-btn">view collection</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="top_catagory_area section-padding-80 clearfix">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Single Catagory -->
				<div class="col-12 col-sm-6 col-md-4">
					<div
						class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
						style="background-image: url(${pageContext.request.contextPath}/res/images/casual.jpg);">
						<div class="catagory-content">
							<a href="#">Casual</a>
						</div>
					</div>
				</div>
				<!-- Single Catagory -->
				<div class="col-12 col-sm-6 col-md-4">
					<div
						class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
						style="background-image: url(${pageContext.request.contextPath}/res/images/formal.jpg);">
						<div class="catagory-content">
							<a href="#">Formal</a>
						</div>
					</div>
				</div>
				<!-- Single Catagory -->
				<div class="col-12 col-sm-6 col-md-4">
					<div
						class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
						style="background-image: url(${pageContext.request.contextPath}/res/images/street.jpg);">
						<div class="catagory-content">
							<a href="#">Street Style</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="cta-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="cta-content bg-img background-overlay"
						style="background-image: url(${pageContext.request.contextPath}/res/images/event.jpg);">
						<div class="h-100 d-flex align-items-center justify-content-end">
							<div class="cta--text">
								
								<h2>Big Events</h2>
								<a href="#" class="btn essence-btn">Buy Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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