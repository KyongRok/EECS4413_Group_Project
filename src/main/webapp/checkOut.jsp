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
	    <meta charset="UTF-8"/>
    <meta name="description" content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Check Out</title>



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
    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(${pageContext.request.contextPath}/res/img/bg-img/breadcumb.jpg);">
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
    <!-- ##### Breadcumb Area End ##### -->
    <!-- ##### Checkout Area Start ##### -->
    <div class="checkout_area section-padding-80">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading mb-30">
                            <h5>Billing Address</h5>
                        </div>

                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="first_name">First Name <span>*</span></label>
                                    <input type="text" class="form-control" id="first_name" value="" required="required"/>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="last_name">Last Name <span>*</span></label>
                                    <input type="text" class="form-control" id="last_name" value="" required="required"/>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="company">Company Name</label>
                                    <input type="text" class="form-control" id="company" value=""/>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="country">Country <span>*</span></label>
                                    <select class="w-100" id="country">
                                    <option value="canada">Canada</option>
                                        <option value="United States">United States</option>
                                        <option value="uk">United Kingdom</option>
                                        <option value="germany">Germany</option>
                                        <option value="india">India</option>
                                        
                                    </select>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="street_address">Address <span>*</span></label>
                                    <input type="text" class="form-control mb-3" id="street_address" value=""/>
                                    <input type="text" class="form-control" id="street_address2" value=""/>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="postcode">ZIP <span></span></label>
                                    <input type="text" class="form-control" id="postcode" value=""/>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="city">City<span>*</span></label>
                                    <input type="text" class="form-control" id="city" value=""/>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="phone_number">Phone<span>*</span></label>
                                    <input type="number" class="form-control" id="phone_number" min="0" value=""/>
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="email_address">Email <span>*</span></label>
                                    <input type="email" class="form-control" id="email_address" value=""/>
                                </div>

                                <div class="col-12">
                                    <div class="custom-control custom-checkbox d-block mb-2">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1"/>
                                        <label class="custom-control-label" for="customCheck1">Agree to Terms</label>
                                    </div>
                                   
                                    
                                </div>
                            </div>
                        </form>
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
                            <li><span>${cartItems.itemName} , ${cartItems.quantity}</span> <span>${cartItems.price}</span></li>
                            
                            </c:forEach>
                            <li><span>Total</span> <span>${sessionScope.cart.total}</span></li>
                        </ul>

                        <div id="accordion" role="tablist" class="mb-4">
                            <div class="card">
                                <div class="card-header" role="tab" id="headingOne">
                                    <h6 class="mb-0">
                                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"><i class="fa fa-circle-o mr-3"><!--  Some content -->.</i>Paypal</a>
                                    </h6>
                                </div>

                                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                    
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-circle-o mr-3"><!--  Some content -->.</i>cash on delievery</a>
                                    </h6>
                                </div>
                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                   
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-circle-o mr-3"><!--  Some content -->.</i>credit card</a>
                                    </h6>
                                </div>
                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingFour">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour"><i class="fa fa-circle-o mr-3"><!--  Some content -->.</i>direct bank transfer</a>
                                    </h6>
                                </div>
                                <div id="collapseFour" class="collapse show" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    
                                </div>
                            </div>
                        </div>

                        <a href="#" class="btn essence-btn">Place Order</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Checkout Area End ##### -->
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