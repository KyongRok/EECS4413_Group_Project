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
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Check Out</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/res/images/feee.jpg"
	type="image/x-icon" />


<!-- css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/core-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/cart.css" />
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const updateButtons = document.querySelectorAll(".update-button");

        updateButtons.forEach(button => {
            const input = button.parentElement.querySelector("input[type='number']");

            button.addEventListener("click", function () {
                if (button.classList.contains("minus-button")) {
                    if (input.value > 1) {
                        input.value = parseInt(input.value) - 1;
                        // Submit the form when "-" button is clicked
                        button.parentElement.submit();
                    }
                } else if (button.classList.contains("plus-button")) {
                    input.value = parseInt(input.value) + 1;
                    // Submit the form when "+" button is clicked
                    button.parentElement.submit();
                }
            });
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const updateButtons = document.querySelectorAll(".update-button");
        const quantityInputs = document.querySelectorAll("input[type='number']");

        updateButtons.forEach(button => {
            const input = button.parentElement.querySelector("input[type='number']");

            button.addEventListener("click", function () {
                updateQuantity(input);
            });
        });

        quantityInputs.forEach(input => {
            input.addEventListener("change", function () {
                updateQuantity(input);
            });
        });

        function updateQuantity(input) {
            const form = input.parentElement;
            form.submit();
        }
    });
</script>
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
									<li><a href="Home.html">Home</a></li>
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
				<div class="search-area">
					<form action="#" method="post">
						<input type="search" name="search" id="headerSearch"
							placeholder="Type for search" />
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true">.</i>
						</button>
					</form>
				</div>

				<div class="favourite-area">
					<a href="#"><img
						src="${pageContext.request.contextPath}/res/images/heart.svg"
						alt="" /></a>
				</div>

				<div class="user-login-info ">
					<a href="login"><img
						src="${pageContext.request.contextPath}/res/images/user.svg"
						alt="" /></a>
				</div>

				<div class="cart-area">
					<a href="#" id="essenceCartBtn"><img
						src="${pageContext.request.contextPath}/res/images/bag.svg" alt="" /><span></span></a>
				</div>
			</div>

		</div>
	</header>



	<div class="breadcumb_area bg-img"
		style="background-image: url(${pageContext.request.contextPath}/res/img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="page-title text-center">
						<h2>Checkout</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="checkout_area section-padding-80">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6">
					<div class="checkout_details_area mt-50 clearfix">

						<div class="cart-page-heading mb-30">
							<h5>Your Cart</h5>
						</div>

						<ul class="cart-items-list">
							<c:forEach items="${sessionScope.cart.cartItems}" var="cartItems">
								<li class="cart-item">
									<div class="cart-item-details">
										<div class="item-image">
											<img src="${cartItems.picture}" alt="${cartItems.itemName}" />
										</div>
										<div class="item-info">
											<span class="item-name">${cartItems.itemName}</span> <span
												class="item-price">$${cartItems.price}</span>
											<div class="item-quantity">
												<form action="UpdateCartItemServlet" method="post">
													<input type="hidden" name="itemId"
														value="${cartItems.itemId}" />
													<button type="button" class="update-button minus-button">-</button>
													<input type="number" name="quantity"
														value="${cartItems.quantity}" min="1" />
													<button type="submit" class="update-button plus-button">+</button>
												</form>
											</div>
											<div class="item-remove">
												<form action="RemoveCartItemServlet" method="post">
													<input type="hidden" name="itemId"
														value="${cartItems.itemId}" />
													<button type="submit" class="remove-button">Remove</button>
												</form>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
						<div class="cart-buttons">
							<a href="shop" class=".update-button">Continue Shopping</a>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
					<div class="order-details-confirmation">

						<div class="cart-page-heading">
							<h5>Your Order</h5>
							<p>The Details</p>
						</div>

						<ul class="order-details-form mb-4">
							<li><span>Product</span> <span>Total</span></li>
							<c:forEach items="${sessionScope.cart.cartItems}" var="cartItems">
								<li><span>${cartItems.itemName} , QTY:
										${cartItems.quantity}</span> <span>Price: $${cartItems.price}</span></li>

							</c:forEach>
							<li><span>Total</span> <span>${sessionScope.cart.total}</span></li>
						</ul>


						<a href="checkOut.jsp" class="btn essence-btn">Check out</a>
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
							<a href="Home"><img
								src="${pageContext.request.contextPath}/res/images/logo.png"
								alt="" /></a>
						</div>
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
						<script>document.write(new Date().getFullYear());</script>
						EECS4413 from <a href="https://colorlib.com"
							target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>

		</div>
	</footer>
	<script
		src="${pageContext.request.contextPath}/res/js/jquery/jquery-2.2.4.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/popper.min.js">;</script>
	<script
		src="${pageContext.request.contextPath}/res/js/bootstrap.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/plugins.js">;</script>
	<script
		src="${pageContext.request.contextPath}/res/js/classy-nav.min.js">;</script>
	<script src="${pageContext.request.contextPath}/res/js/active.js">;</script>

</body>
	</html>
</jsp:root>
