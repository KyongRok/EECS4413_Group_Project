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
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Bloom -Fashion Store</title>

    <link rel="icon" href="${pageContext.request.contextPath}/res/images/feee.jpg" type="image/x-icon" />


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
					<span class="navbarToggler"><span> 
					</span><span> 
					</span><span>
					</span></span>
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
									<ul class="single-mega cn-col-4">
										<li class="title">Brands</li>
										<li><a href="${pageContext.request.contextPath}/itemsByBrand?brand=Boss">Boss</a></li>
										<li><a href="${pageContext.request.contextPath}/itemsByBrand?brand=Nike">Nike</a></li>
										<li><a href="${pageContext.request.contextPath}/itemsByBrand?brand=Zara">Zara</a></li>
										<li><a href="${pageContext.request.contextPath}/itemsByBrand?brand=Adidas">Adidas</a></li>
									</ul>
									<div class="single-mega cn-col-4">
										<img
											src="${pageContext.request.contextPath}/res/images/bag.jpg"
											alt="" />
									</div>
								</div></li>
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a href="Home.jsp">Home</a></li>
									<li><a href="shop">Shop</a></li>
									<li><a href="ShowCart.jsp">Cart</a></li>
									<li><a href="checkOut.jsp">Checkout</a></li>

								</ul></li>

							<li><a>Help</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="header-meta d-flex clearfix justify-content-end">
				<div class="search-area">
					<form action="category" method="get">
						<input type="text" name="search" id="headerSearch"
							placeholder="Type for search" />
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"> .
							</i>
						</button>
					</form>
				</div>

				<div class="favourite-area">
					<a href="#"><img
						src="${pageContext.request.contextPath}/res/images/heart.svg"
						alt="" /></a>
				</div>
				<div class="user-login-info">
					<form id="profileForm"
						action="${pageContext.request.contextPath}/ProfileServlet"
						method="post">
					</form>

					<a href="#"
						onclick="document.getElementById('profileForm').submit();"> <img
						src="${pageContext.request.contextPath}/res/images/user.svg"
						alt="" />
					</a>
				</div>
				<div class="user-login-info ">
					<a href="${pageContext.request.contextPath}/LogoutServlet"><img
						src="${pageContext.request.contextPath}/res/images/logout.png"
						alt="" /></a>
				</div>
				
				<div class="cart-area">
					<a href="ShowCart.jsp" id="essenceCartBtn"><img
						src="${pageContext.request.contextPath}/res/images/bag.svg" alt="" /><span></span></a>
				</div>
			</div>

		</div>
	</header>

	<section class="welcome_area bg-img background-overlay"
		style="background-image: url(${pageContext.request.contextPath}/res/images/welcome.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="hero-content">
						<h6>Best Sellers</h6>
						<h2>Trending</h2>
						<a href="shop" class="btn essence-btn">view collection</a>
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
							<a
								href="${pageContext.request.contextPath}/category?category=casual">Casual</a>
						</div>
					</div>
				</div>
				<!-- Single Catagory -->
				<div class="col-12 col-sm-6 col-md-4">
					<div
						class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
						style="background-image: url(${pageContext.request.contextPath}/res/images/formal.jpg);">
						<div class="catagory-content">
							<a
								href="${pageContext.request.contextPath}/category?category=formal">Formal</a>
						</div>
					</div>
				</div>
				<!-- Single Catagory -->
				<div class="col-12 col-sm-6 col-md-4">
					<div
						class="single_catagory_area d-flex align-items-center justify-content-center bg-img"
						style="background-image: url(${pageContext.request.contextPath}/res/images/street.jpg);">
						<div class="catagory-content">
							<a
								href="${pageContext.request.contextPath}/category?category=street">Street
								Style</a>
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
	<section class="brands-area section-padding-80">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading text-center">
						<h2>Brands</h2>
					</div>
				</div>
			</div>
			<div class="row">

				<!-- Single Brand Area -->
				<div class="col-6 col-sm-4 col-md-3">
					<div class="single-brand-area">
						<a href="${pageContext.request.contextPath}/itemsByBrand?brand=Zara"> <img
							src="${pageContext.request.contextPath}/res/images/zara.png"
							alt="Zara" />
						</a>
					</div>
				</div>

				<!-- Add more brand elements for Boss, Nike, Adidas, Mango, etc. -->
				<!-- Single Brand Area -->
				<div class="col-6 col-sm-4 col-md-3">
					<div class="single-brand-area">
						<a href="${pageContext.request.contextPath}/itemsByBrand?brand=Boss"> <img
							src="${pageContext.request.contextPath}/res/images/boss.png"
							alt="Boss" />
						</a>
					</div>
				</div>

				<!-- Single Brand Area -->
				<div class="col-6 col-sm-4 col-md-3">
					<div class="single-brand-area">
						<a href="${pageContext.request.contextPath}/itemsByBrand?brand=Nike"> <img
							src="${pageContext.request.contextPath}/res/images/nike.png"
							alt="Nike" />
						</a>
					</div>
				</div>

				<!-- Single Brand Area -->
				<div class="col-6 col-sm-4 col-md-3">
					<div class="single-brand-area">
						<a href="${pageContext.request.contextPath}/itemsByBrand?brand=Adidas"> <img
							src="${pageContext.request.contextPath}/res/images/adidas.png"
							alt="Adidas" />
						</a>
					</div>
				</div>

			</div>
		</div>
	</section>
	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row">
				<!-- Single Widget Area -->
				<div class="col-12 col-md-6">
					<div class="single_widget_area d-flex mb-30">
						<!-- Logo -->
						<div class="footer-logo mr-50">
							<a href="#"><img
								src="${pageContext.request.contextPath}/res/images/logo.png"
								alt="" /></a>
						</div>
						<!-- Footer Menu -->
						<div class="footer_menu">
							<ul>
								<li><a href="shop">Shop</a></li>
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
									placeholder="Your email here" />
								<button type="submit" class="submit">
									<i class="fa fa-long-arrow-right" aria-hidden="true">.</i>
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
								aria-hidden="true"> <!--  Some content -->.
							</i></a> <a href="#" data-toggle="tooltip" data-placement="top"
								title="Instagram"><i class="fa fa-instagram"
								aria-hidden="true">.</i></a> <a href="#" data-toggle="tooltip"
								data-placement="top" title="Twitter"><i
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
						<a href="https://colorlib.com" target="_blank">Colorlib</a>
					
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
