<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath }" scope="session" />


<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from portotheme.com/html/porto_ecommerce/demo4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Mar 2024 13:53:56 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Porto - Bootstrap eCommerce Template</title>

<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Porto - Bootstrap eCommerce Template">
<meta name="author" content="SW-THEMES">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${contextPath}/users/assets/images/icons/favicon.png">


<script>
	WebFontConfig = {
		google : {
			families : [ 'Open+Sans:300,400,600,700,800',
					'Poppins:300,400,500,600,700,800',
					'Oswald:300,400,500,600,700,800' ]
		}
	};
	(function(d) {
		var wf = d.createElement('script'), s = d.scripts[0];
		wf.src = '${contextPath }/users/assets/js/webfont.js';
		wf.async = true;
		s.parentNode.insertBefore(wf, s);
	})(document);
</script>

<!-- Plugins CSS File -->
<link rel="stylesheet"
	href="${contextPath }/users/assets/css/bootstrap.min.css">

<!-- Main CSS File -->
<link rel="stylesheet"
	href="${contextPath }/users/assets/css/demo4.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/users/assets/vendor/fontawesome-free/css/all.min.css">
</head>

<body>
	<div class="page-wrapper">
		<div class="top-notice bg-primary text-white">
			<div class="container text-center">
				<h5 class="d-inline-block">
					Get Up to <b>40% OFF</b> New-Season Styles
				</h5>
				<a href="category.html" class="category">MEN</a> <a
					href="category.html" class="category ml-2 mr-3">WOMEN</a> <small>*
					Limited time only.</small>
				<button title="Close (Esc)" type="button" class="mfp-close">×</button>
			</div>
			<!-- End .container -->
		</div>
		<!-- End .top-notice -->

		<header class="header" style="position: relative;">
			<div class="header-top" style="position: relative;">
				<div class="container" style="position: static !important;">
					<div class="header-left d-none d-sm-block">
						<p class="top-message text-uppercase">FREE Returns. Standard
							Shipping Orders $99+</p>
					</div>
					<!-- End .header-left -->

					<div class="header-right header-dropdowns ml-0 ml-sm-auto w-sm-100">
						<div class="header-dropdown dropdown-expanded d-none d-lg-block">
							<a href="#">Links</a>
							<div class="header-menu">
								<ul>
									<li><a href="dashboard.html">My Account</a></li>
									<li><a href="about.html">About Us</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="wishlist.html">My Wishlist</a></li>
									<li><a href="${contextPath}/shopl">Cart</a></li>
									<li><a href="login.html" class="login-link">Log In</a></li>
								</ul>
							</div>
							<!-- End .header-menu -->
						</div>
						<!-- End .header-dropown -->

						<span class="separator"></span>

						<div class="header-dropdown">
							<a href="#"><i class="flag-us flag"></i>ENG</a>
							<div class="header-menu">
								<ul>
									<li><a href="#"><i class="flag-us flag mr-2"></i>ENG</a></li>
									<li><a href="#"><i class="flag-fr flag mr-2"></i>FRA</a></li>
								</ul>
							</div>
							<!-- End .header-menu -->
						</div>
						<!-- End .header-dropown -->

						<div class="header-dropdown mr-auto mr-sm-3 mr-md-0">
							<a href="#">USD</a>
							<div class="header-menu">
								<ul>
									<li><a href="#">EUR</a></li>
									<li><a href="#">USD</a></li>
								</ul>
							</div>
							<!-- End .header-menu -->
						</div>
						<!-- End .header-dropown -->

						<span class="separator"></span>

						<div class="social-icons">
							<a href="#" class="social-icon social-facebook icon-facebook"
								target="_blank"></a> <a href="#"
								class="social-icon social-twitter icon-twitter" target="_blank"></a>
							<a href="#" class="social-icon social-instagram icon-instagram"
								target="_blank"></a>
						</div>
						<!-- End .social-icons -->
					</div>

					<!-- End .header-right -->

				</div>

				<!-- End .container -->
				<c:choose>

					<c:when test="${name != null}">

						<li class="nav-item mr-2"
							style="top: 0; display: flex; align-items: center; position: absolute; right: 0">
						
							<div class=""
								style="border-radius: 15px; height: 50px; display: flex; align-items: center; justify-content: center">
								<a class=" dropdown-toggle" style="margin-right: 10px" href="#"
									role="button" id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <span>
										Hi: admin</span>

								</a> <span> <a class="" href="${contextPath}/thoat"> <i
										class="fa-solid fa-right-from-bracket"></i></a></span>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">


								</div>
							</div>
					</c:when>
				</c:choose>
			</div>
			<!-- End .header-top -->

			<div class="header-middle sticky-header"
				data-sticky-options="{'mobile': true}">
				<div class="container">
					<div class="header-left col-lg-2 w-auto pl-0">
						<button class="mobile-menu-toggler text-primary mr-2"
							type="button">
							<i class="fas fa-bars"></i>
						</button>
						<a href="demo4.html" class="logo"> <img
							src="${contextPath }/users/assets/images/logo.png" width="111"
							height="44" alt="Porto Logo">
						</a>
					</div>
					<!-- End .header-left -->

					<div class="header-right w-lg-max">
						<div
							class="header-icon header-search header-search-inline header-search-category w-lg-max text-right mt-0">
							<a href="#" class="search-toggle" role="button"><i
								class="icon-search-3"></i></a>
							<form action="#" method="get">
								<div class="header-search-wrapper">
									<input type="search" class="form-control" name="q" id="q"
										placeholder="Search..." required>

									<button class="btn icon-magnifier p-0" title="search"
										type="submit"></button>
								</div>
								<!-- End .header-search-wrapper -->
							</form>
						</div>
						<!-- End .header-search -->

						<div class="header-contact d-none d-lg-flex pl-4 pr-4">
							<img alt="phone"
								src="${contextPath }/users/assets/images/phone.png" width="30"
								height="30" class="pb-1">
							<h6>
								<span>Call us now</span><a href="tel:#" class="text-dark font1">+123
									5678 890</a>
							</h6>
						</div>

						<a href="${contextPath }/dang-nhap" class="header-icon" title="login"><i
							class="icon-user-2"></i></a> <a href="wishlist.html"
							class="header-icon" title="wishlist"><i
							class="icon-wishlist-2"></i></a>

						<div class="dropdown cart-dropdown">
							<a href="${contextPath}/cart" title="Cart"
								class="dropdown-toggle dropdown-arrow cart-toggle" role="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false" data-display="static"> <i
								class="minicart-icon"></i> <span class="cart-count badge-circle" id="cart_total"><jsp:include page="${contextPath}/countItems"></jsp:include></span>
						
							</a>

							<div class="cart-overlay"></div>

							<div class="dropdown-menu mobile-cart">
								<a href="#" title="Close (Esc)" class="btn-close">×</a>

								<div class="dropdownmenu-wrapper custom-scrollbar">
									<div class="dropdown-cart-header">Shopping Cart</div>
									<!-- End .dropdown-cart-header -->

									<div class="dropdown-cart-products">
										<div class="product">
											<div class="product-details">
												<h4 class="product-title">
													<a href="product.html">Ultimate 3D Bluetooth Speaker</a>
												</h4>

												<span class="cart-product-info"> <span
													class="cart-product-qty">1</span> × $99.00
												</span>
											</div>
											<!-- End .product-details -->

											<figure class="product-image-container">
												<a href="product.html" class="product-image"> <img
													src="${contextPath }/users/assets/images/products/product-1.jpg"
													alt="product" width="80" height="80">
												</a>

												<a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
											</figure>
										</div>
										<!-- End .product -->

										<div class="product">
											<div class="product-details">
												<h4 class="product-title">
													<a href="product.html">Brown Women Casual HandBag</a>
												</h4>

												<span class="cart-product-info"> <span
													class="cart-product-qty">1</span> × $35.00
												</span>
											</div>
											<!-- End .product-details -->

											<figure class="product-image-container">
												<a href="product.html" class="product-image"> <img
													src="${contextPath }/users/assets/images/products/product-2.jpg"
													alt="product" width="80" height="80">
												</a>

												<a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
											</figure>
										</div>
										<!-- End .product -->

										<div class="product">
											<div class="product-details">
												<h4 class="product-title">
													<a href="product.html">Circled Ultimate 3D Speaker</a>
												</h4>

												<span class="cart-product-info"> <span
													class="cart-product-qty">1</span> × $35.00
												</span>
											</div>
											<!-- End .product-details -->

											<figure class="product-image-container">
												<a href="product.html" class="product-image"> <img
													src="${contextPath }/users/assets/images/products/product-3.jpg"
													alt="product" width="80" height="80">
												</a>
												<a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
											</figure>
										</div>
										<!-- End .product -->
									</div>
									<!-- End .cart-product -->

									<div class="dropdown-cart-total">
										<span>SUBTOTAL:</span> <span
											class="cart-total-price float-right">$134.00</span>
									</div>
									<!-- End .dropdown-cart-total -->

									<div class="dropdown-cart-action">
										<a href="${contextPath}/cart"
											class="btn btn-gray btn-block view-cart">View Cart</a> <a
											href="checkout.html" class="btn btn-dark btn-block">Checkout</a>
									</div>
									<!-- End .dropdown-cart-total -->
								</div>
								<!-- End .dropdownmenu-wrapper -->
							</div>
							<!-- End .dropdown-menu -->
						</div>
						<!-- End .dropdown -->
					</div>
					<!-- End .header-right -->
				</div>
				<!-- End .container -->
			</div>
			<!-- End .header-middle -->

			<div class="header-bottom sticky-header d-none d-lg-block"
				data-sticky-options="{'mobile': false}">
				<div class="container">
					<nav class="main-nav w-100">
						<ul class="menu">
							<li class="active"><a href="${contextPath }/trang-chu">Home</a>
							</li>


							<li><a href="${contextPath }/san-pham">Products</a></li>
							<li><a href="#">Pages</a>
								<ul>
									
									<li><a href="${contextPath }/check-out">Checkout</a></li>
									<li><a href="${contextPath }/admin/">Admin</a></li>
									<li><a href="${contextPath }/gioi-thieu">About Us</a></li>
									<li><a href="${contextPath }/lien-he">Contact Us</a></li>
									<li><a href="${contextPath }/dang-nhap">Login</a></li>
									<li><a href="${contextPath }/dang-ky">Register</a></li>
								</ul></li>
							<li><a href="${contextPath }/tin-tuc">Blog</a>
							<li><a href="${contextPath }/lien-he">Contact Us</a></li>


						</ul>
					</nav>
				</div>
				<!-- End .container -->
			</div>
			<!-- End .header-bottom -->
		</header>
		<!-- End .header -->

		<main class="main">

			<c:if test="${!empty page}">
				<jsp:include page="users/${page}.jsp"></jsp:include>
			</c:if>

		</main>


		<!-- End .main -->

		<footer class="footer bg-dark">
			<div class="footer-middle">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-sm-6">
							<div class="widget">
								<h4 class="widget-title">Contact Info</h4>
								<ul class="contact-info">
									<li><span class="contact-info-label">Address:</span>123
										Street Name, City, England</li>
									<li><span class="contact-info-label">Phone:</span><a
										href="tel:">(123) 456-7890</a></li>
									<li><span class="contact-info-label">Email:</span> <a
										href="https://portotheme.com/cdn-cgi/l/email-protection#1578747c7955706d74786579703b767a78"><span
											class="__cf_email__"
											data-cfemail="7c111d15103c19041d110c1019521f1311">[email&#160;protected]</span></a>
									</li>
									<li><span class="contact-info-label">Working
											Days/Hours:</span> Mon - Sun / 9:00 AM - 8:00 PM</li>
								</ul>
								<div class="social-icons">
									<a href="#" class="social-icon social-facebook icon-facebook"
										target="_blank" title="Facebook"></a> <a href="#"
										class="social-icon social-twitter icon-twitter"
										target="_blank" title="Twitter"></a> <a href="#"
										class="social-icon social-instagram icon-instagram"
										target="_blank" title="Instagram"></a>
								</div>
								<!-- End .social-icons -->
							</div>
							<!-- End .widget -->
						</div>
						<!-- End .col-lg-3 -->

						<div class="col-lg-3 col-sm-6">
							<div class="widget">
								<h4 class="widget-title">Customer Service</h4>

								<ul class="links">
									<li><a href="#">Help & FAQs</a></li>
									<li><a href="#">Order Tracking</a></li>
									<li><a href="#">Shipping & Delivery</a></li>
									<li><a href="#">Orders History</a></li>
									<li><a href="#">Advanced Search</a></li>
									<li><a href="dashboard.html">My Account</a></li>
									<li><a href="#">Careers</a></li>
									<li><a href="about.html">About Us</a></li>
									<li><a href="#">Corporate Sales</a></li>
									<li><a href="#">Privacy</a></li>
								</ul>
							</div>
							<!-- End .widget -->
						</div>
						<!-- End .col-lg-3 -->

						<div class="col-lg-3 col-sm-6">
							<div class="widget">
								<h4 class="widget-title">Popular Tags</h4>

								<div class="tagcloud">
									<a href="#">Bag</a> <a href="#">Black</a> <a href="#">Blue</a>
									<a href="#">Clothes</a> <a href="#">Fashion</a> <a href="#">Hub</a>
									<a href="#">Shirt</a> <a href="#">Shoes</a> <a href="#">Skirt</a>
									<a href="#">Sports</a> <a href="#">Sweater</a>
								</div>
							</div>
							<!-- End .widget -->
						</div>
						<!-- End .col-lg-3 -->

						<div class="col-lg-3 col-sm-6">
							<div class="widget widget-newsletter">
								<h4 class="widget-title">Subscribe newsletter</h4>
								<p>Get all the latest information on events, sales and
									offers. Sign up for newsletter:</p>
								<form action="#" class="mb-0">
									<input type="email" class="form-control m-b-3"
										placeholder="Email address" required> <input
										type="submit" class="btn btn-primary shadow-none"
										value="Subscribe">
								</form>
							</div>
							<!-- End .widget -->
						</div>
						<!-- End .col-lg-3 -->
					</div>
					<!-- End .row -->
				</div>
				<!-- End .container -->
			</div>
			<!-- End .footer-middle -->

			<div class="container">
				<div class="footer-bottom">
					<div class="container d-sm-flex align-items-center">
						<div class="footer-left">
							<span class="footer-copyright">© Porto eCommerce. 2021.
								All Rights Reserved</span>
						</div>

						<div class="footer-right ml-auto mt-1 mt-sm-0">
							<div class="payment-icons">
								<span class="payment-icon visa"
									style="background-image: url(${contextPath }/users/assets/images/payments/payment-visa.svg)"></span>
								<span class="payment-icon paypal"
									style="background-image: url(${contextPath }/users/assets/images/payments/payment-paypal.svg)"></span>
								<span class="payment-icon stripe"
									style="background-image: url(${contextPath }/users/assets/images/payments/payment-stripe.png)"></span>
								<span class="payment-icon verisign"
									style="background-image:  url(${contextPath }/users/assets/images/payments/payment-verisign.svg)"></span>
							</div>
						</div>
					</div>
				</div>
				<!-- End .footer-bottom -->
			</div>
			<!-- End .container -->
		</footer>
		<!-- End .footer -->
	</div>
	<!-- End .page-wrapper -->

	<div class="mobile-menu-overlay"></div>
	<!-- End .mobil-menu-overlay -->

	<div class="mobile-menu-container">
		<div class="mobile-menu-wrapper">
			<span class="mobile-menu-close"><i class="fa fa-times"></i></span>
			<nav class="mobile-nav">
				<ul class="mobile-menu">
					<li><a href="">Home</a></li>
					<li><a href="category.html">Categories</a>
						<ul>
							<li><a href="category.html">Full Width Banner</a></li>
							<li><a href="category-banner-boxed-slider.html">Boxed
									Slider Banner</a></li>
							<li><a href="category-banner-boxed-image.html">Boxed
									Image Banner</a></li>
							<li><a
								href="https://www.portotheme.com/html/porto_ecommerce/category-sidebar-left.html">Left
									Sidebar</a></li>
							<li><a href="category-sidebar-right.html">Right Sidebar</a></li>
							<li><a href="category-off-canvas.html">Off Canvas Filter</a></li>
							<li><a href="category-horizontal-filter1.html">Horizontal
									Filter 1</a></li>
							<li><a href="category-horizontal-filter2.html">Horizontal
									Filter 2</a></li>
							<li><a href="#">List Types</a></li>
							<li><a href="category-infinite-scroll.html">Ajax
									Infinite Scroll<span class="tip tip-new">New</span>
							</a></li>
							<li><a href="category.html">3 Columns Products</a></li>
							<li><a href="category-4col.html">4 Columns Products</a></li>
							<li><a href="category-5col.html">5 Columns Products</a></li>
							<li><a href="category-6col.html">6 Columns Products</a></li>
							<li><a href="category-7col.html">7 Columns Products</a></li>
							<li><a href="category-8col.html">8 Columns Products</a></li>
						</ul></li>
					<li><a href="product.html">Products</a>
						<ul>
							<li><a href="#" class="nolink">PRODUCT PAGES</a>
								<ul>
									<li><a href="product.html">SIMPLE PRODUCT</a></li>
									<li><a href="product-variable.html">VARIABLE PRODUCT</a></li>
									<li><a href="product.html">SALE PRODUCT</a></li>
									<li><a href="product.html">FEATURED & ON SALE</a></li>
									<li><a href="product-sticky-info.html">WIDTH CUSTOM
											TAB</a></li>
									<li><a href="product-sidebar-left.html">WITH LEFT
											SIDEBAR</a></li>
									<li><a href="product-sidebar-right.html">WITH RIGHT
											SIDEBAR</a></li>
									<li><a href="product-addcart-sticky.html">ADD CART
											STICKY</a></li>
								</ul></li>
							<li><a href="#" class="nolink">PRODUCT LAYOUTS</a>
								<ul>
									<li><a href="product-extended-layout.html">EXTENDED
											LAYOUT</a></li>
									<li><a href="product-grid-layout.html">GRID IMAGE</a></li>
									<li><a href="product-full-width.html">FULL WIDTH
											LAYOUT</a></li>
									<li><a href="product-sticky-info.html">STICKY INFO</a></li>
									<li><a href="product-sticky-both.html">LEFT & RIGHT
											STICKY</a></li>
									<li><a href="product-transparent-image.html">TRANSPARENT
											IMAGE</a></li>
									<li><a href="product-center-vertical.html">CENTER
											VERTICAL</a></li>
									<li><a href="#">BUILD YOUR OWN</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#">Pages<span class="tip tip-hot">Hot!</span></a>
						<ul>
							<li><a href="wishlist.html">Wishlist</a></li>
							<li><a href="cart.html">Shopping Cart</a></li>
							<li><a href="checkout.html">Checkout</a></li>
							<li><a href="dashboard.html">Dashboard</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="forgot-password.html">Forgot Password</a></li>
						</ul></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="#">Elements</a>
						<ul class="custom-scrollbar">
							<li><a href="element-accordions.html">Accordion</a></li>
							<li><a href="element-alerts.html">Alerts</a></li>
							<li><a href="element-animations.html">Animations</a></li>
							<li><a href="element-banners.html">Banners</a></li>
							<li><a href="element-buttons.html">Buttons</a></li>
							<li><a href="element-call-to-action.html">Call to Action</a></li>
							<li><a href="element-countdown.html">Count Down</a></li>
							<li><a href="element-counters.html">Counters</a></li>
							<li><a href="element-headings.html">Headings</a></li>
							<li><a href="element-icons.html">Icons</a></li>
							<li><a href="element-info-box.html">Info box</a></li>
							<li><a href="element-posts.html">Posts</a></li>
							<li><a href="element-products.html">Products</a></li>
							<li><a href="element-product-categories.html">Product
									Categories</a></li>
							<li><a href="element-tabs.html">Tabs</a></li>
							<li><a href="element-testimonial.html">Testimonials</a></li>
						</ul></li>
				</ul>

				<ul class="mobile-menu mt-2 mb-2">
					<li class="border-0"><a href="#"> Special Offer! </a></li>
					<li class="border-0"><a href="#" target="_blank"> Buy
							Porto! <span class="tip tip-hot">Hot</span>
					</a></li>
				</ul>

				<ul class="mobile-menu">
					<li><a href="login.html">My Account</a></li>
					<li><a href="contact.html">Contact Us</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="wishlist.html">My Wishlist</a></li>
					<li><a href="cart.html">Cart</a></li>
					<li><a href="login.html" class="login-link">Log In</a></li>
				</ul>
			</nav>
			<!-- End .mobile-nav -->

			<form class="search-wrapper mb-2" action="#">
				<input type="text" class="form-control mb-0" placeholder="Search..."
					required />
				<button class="btn icon-search text-white bg-transparent p-0"
					type="submit"></button>
			</form>

			<div class="social-icons">
				<a href="#" class="social-icon social-facebook icon-facebook"
					target="_blank"> </a> <a href="#"
					class="social-icon social-twitter icon-twitter" target="_blank">
				</a> <a href="#" class="social-icon social-instagram icon-instagram"
					target="_blank"> </a>
			</div>
		</div>
		<!-- End .mobile-menu-wrapper -->
	</div>
	<!-- End .mobile-menu-container -->

	<div class="sticky-navbar">
		<div class="sticky-info">
			<a href="demo4.html"> <i class="icon-home"></i>Home
			</a>
		</div>
		<div class="sticky-info">
			<a href="category.html" class=""> <i class="icon-bars"></i>Categories
			</a>
		</div>
		<div class="sticky-info">
			<a href="wishlist.html" class=""> <i class="icon-wishlist-2"></i>Wishlist
			</a>
		</div>
		<div class="sticky-info">
			<a href="login.html" class=""> <i class="icon-user-2"></i>Account
			</a>
		</div>
		<div class="sticky-info">
			<a href="${contextPath}/shop" class=""> <i
				class="icon-shopping-cart position-relative"> <span
					class="cart-count badge-circle">3</span>
			</i>Cart
			</a>
		</div>
	</div>



	<a id="scroll-top" href="#top" title="Top" role="button"><i
		class="icon-angle-up"></i></a>

	<!-- Plugins JS File -->
	<script src="${contextPath }/users/assets/js/jquery.min.js"></script>
	<script src="${contextPath }/users/assets/js/bootstrap.bundle.min.js"></script>
	<script
		src="${contextPath }/users/assets/js/optional/isotope.pkgd.min.js"></script>
	<script src="${contextPath }/users/assets/js/plugins.min.js"></script>
	<script src="${contextPath }/users/assets/js/jquery.appear.min.js"></script>

	<!-- Main JS File -->
	<script src="${contextPath }/users/assets/js/main.min.js"></script>


	<script>
		var path = '${pageContext.servletContext.contextPath}';
	</script>
	<script type="text/javascript">
		//Document ready thì show loại sách và số lượng trong giỏ hàng (jquery ajax)
		$(function() {
			
			$.get(path + "/countItems", function(data) {
				$('#cart_total').html(data);
			});
		});
		//hàm xử lý add 1 sách vào giỏ hàng (jquery ajax)
		function addCart(id) {
			$.get(path + "/addItem/" + id, function(data) {
				$('#cart_total').html(data);
				window.scrollTo({
					top : 0,
					behavior : 'smooth'
				});
			});
		}
		
		
		//hàm xử lý cập nhật lại số lượng trong giỏ hàng (jquery ajax)
		function updateCart(id, value) {
			$.get(path + "/updateCart/" + id + "/" + value, function() {
				window.location.reload();
			});
		}
		//hàm xử lý xóa 1 sách trong giỏ hàng (jquery ajax)
		function removeItem(id) {
			if (confirm('Bạn có muốn xóa không?')) {
				$.get(path + "/removeItem/" + id, function() {
					window.location.reload();
				});
			}
		}
	</script>
</body>


<!-- Mirrored from portotheme.com/html/porto_ecommerce/demo4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Mar 2024 13:54:33 GMT -->
</html>