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

<title>Bloom - Fashion Store</title>

    <link rel="icon" href="${pageContext.request.contextPath}/res/images/feee.jpg" type="image/x-icon" />


<!-- css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/core-style.css" />

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
					src="${pageContext.request.contextPath}/res/images/logo.png" alt="" /></a>

				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span> <!-- content -->
					</span><span> <!-- content -->
					</span><span> <!-- content -->
					</span></span>
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
										<!-- Pass the gender parameter with value "womens" -->
										<li><a
											href="${pageContext.request.contextPath}/category?gender=women&amp;category=casual">Casual</a></li>
										<li><a
											href="${pageContext.request.contextPath}/category?gender=women&amp;category=formal">Formal</a></li>
										<li><a
											href="${pageContext.request.contextPath}/category?gender=women&amp;category=street">Street
												Style</a></li>
										<!-- Other items for Women's collection -->
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
										<!-- Other items for Men's collection -->
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title">Brands</li>
										<li><a href="#">Zara</a></li>
										<li><a href="#">Boss</a></li>
										<li><a href="#">Nike</a></li>
										<li><a href="#">Adidas</a></li>
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
							placeholder="Type for search" />
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"> <!--  Some content -->.
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
					<!-- Hidden form for sending a POST request to ProfileServlet -->
					<form id="profileForm"
						action="${pageContext.request.contextPath}/ProfileServlet"
						method="post">
						<!-- You can add any necessary hidden inputs here -->
					</form>

					<!-- Profile icon that triggers the form submission -->
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
				<!-- Cart Area -->
				<div class="cart-area">
					<a href="#" id="essenceCartBtn"><img
						src="${pageContext.request.contextPath}/res/images/bag.svg" alt="" /><span>2</span></a>
				</div>
			</div>

		</div>
	</header>



	<div class="cart-bg-overlay"></div>

	<div class="right-side-cart-area">

		<!-- Cart Button -->
		<div class="cart-button">
			<a href="#" id="rightSideCart"><img
				src="${pageContext.request.contextPath}/res/images/bag.svg" alt="" /><span>2</span></a>
		</div>

		<div class="cart-content d-flex">

			<!-- Cart List Area -->
			<div class="cart-list">
				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="${pageContext.request.contextPath}/res/images/jeans.jpg"
						class="cart-thumb" alt="" />

						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"> <!--  Some content -->.
							</i></span><span class="badge">Zara</span>
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
						src="${pageContext.request.contextPath}/res/images/flr.jpg"
						class="cart-thumb" alt="" />

						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"> <!--  Some content -->.
							</i></span> <span class="badge">Zara</span>
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

	<h1>Shop</h1>
	<form id="sortForm" action="${pageContext.request.contextPath}/shop"
		method="get">
		<select name="sort" id="sort"
			onchange="document.getElementById('sortForm').submit()">
			<option value="sort">sort</option>
			<option value="nameAToZ">Name A to Z</option>
			<option value="nameZToA">Name Z to A</option>
			<option value="priceLowToHigh">Price Low to High</option>
			<option value="priceHighToLow">Price High to Low</option>
		</select>
	</form>
	<br>
	<br>
	<br>
    <ul class="item-grid">
        <% List<Item> items = (List<Item>) request.getAttribute("items"); %>
        <% for (Item item : items) { %>
            <li class="item">
                <a href="#">
                    <img src="<%= item.getPicture() %>" alt="<%= item.getItemName() %>" width="200" height="200" />
                </a>
                <div class="item-details">
                    <h3><%= item.getItemName() %></h3>
                    <p class="item-price"><%= item.getPrice() %> CAD</p>
                    <button type="submit">Add to Cart</button>
                </div>
            </li>
        <% } %>
    </ul>
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
									<i class="fa fa-long-arrow-right" aria-hidden="true"> <!--  Some content -->.
									</i>
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
