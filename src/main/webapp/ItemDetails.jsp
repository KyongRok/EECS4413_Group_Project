<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.List, model.Item"%>
<%@ page session="false"%>
<%@ page trimDirectiveWhitespaces="true"%>

<html>
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Bloom - Category</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/res/images/feee.jpg"
	type="image/x-icon" />


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/core-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/details.css" />

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
										<li><a
											href="${pageContext.request.contextPath}/itemsByBrand?brand=Boss">Boss</a></li>
										<li><a
											href="${pageContext.request.contextPath}/itemsByBrand?brand=Nike">Nike</a></li>
										<li><a
											href="${pageContext.request.contextPath}/itemsByBrand?brand=Zara">Zara</a></li>
										<li><a
											href="${pageContext.request.contextPath}/itemsByBrand?brand=Adidas">Adidas</a></li>
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
				
				<div class="user-login-info">
					
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


	<!-- Display item details here -->
	<br><br>
	<div class="product-details">
		<div class="product-image">
			<img src="${item.picture}" alt="${item.itemName}" />
		</div>
		<div class="product-description">
			<h2 class="product-name">${item.itemName}</h2>
			<p class="product-brand">${item.brand}</p>
			<p class="product-price">$${item.price}</p>
			<p>${item.description}</p>
			        <form method="post" action="CartServlet">
            <input type="hidden" name="item_id" value="${item.itemId}">
            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
        </form>
		</div>
		
	</div>
	<a href="Home.jsp">Back to Home</a>
<br> <br>
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
									<i class="fa fa-long-arrow-right" aria-hidden="true"> .
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
								aria-hidden="true"> .
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
