<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath }" scope="session" />
<main class="main">
	<div class="container">
		<nav aria-label="breadcrumb" class="breadcrumb-nav">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${contextPath}/trang-chu"><i
						class="icon-home"></i></a></li>
				<li class="breadcrumb-item"><a href="${contextPath}/san-pham">Products</a></li>
			</ol>
		</nav>
		<div class="product-single-container product-single-default">
			<div class="cart-message d-none">
				<strong class="single-cart-notice">${Product.name }</strong> <span>has
					been added to your cart.</span>
			</div>

			<div class="row">
				<div class="col-lg-5 col-md-6 product-single-gallery">
					<div class="product-slider-container">
						<div class="label-group">
							<div class="product-label label-hot">HOT</div>
							<!---->
							<div class="product-label label-sale">-16%</div>
						</div>

						<div
							class="product-single-carousel owl-carousel owl-theme show-nav-hover">
							<div class="product-item">
								<img class="product-single-image"
									src="${contextPath}/images/${Product.image}" />
							</div>

						</div>
						<!-- End .product-single-carousel -->
						<span class="prod-full-screen"> <i class="icon-plus"></i>
						</span>
					</div>


				</div>
				<!-- End .product-single-gallery -->

				<div class="col-lg-7 col-md-6 product-single-details">
					<h1 class="product-title">${Product.name}</h1>

					<div class="product-nav">
						<div class="product-prev">
							<a href="#"> <span class="product-link"></span> <span
								class="product-popup"> <span class="box-content">
										<img alt="product" width="150" height="150"
										src="${contextPath }/users/assets/images/products/product-3.jpg"
										style="padding-top: 0px;"> <span>Circled Ultimate
											3D Speaker</span>
								</span>
							</span>
							</a>
						</div>

						<div class="product-next">
							<a href="#"> <span class="product-link"></span> <span
								class="product-popup"> <span class="box-content">
										<img alt="product" width="150" height="150"
										src="${contextPath }/users/assets/images/products/product-4.jpg"
										style="padding-top: 0px;"> <span>Blue Backpack
											for the Young</span>
								</span>
							</span>
							</a>
						</div>
					</div>

					<div class="ratings-container">
						<div class="product-ratings">
							<span class="ratings" style="width: 60%"></span>
							<!-- End .ratings -->
							<span class="tooltiptext tooltip-top"></span>
						</div>
						<!-- End .product-ratings -->

						<a href="#" class="rating-link">( 6 Reviews )</a>
					</div>
					<!-- End .ratings-container -->

					<hr class="short-divider">

					<div class="price-box">

						<span class="new-price">${Product.price}</span>
					</div>
					<!-- End .price-box -->

					<div class="product-desc">
						<p>${Product.description}</p>
					</div>
					<!-- End .product-desc -->



					<div class="product-filters-container">

						<div class="product-action">

							<div class="product-single-qty">
								<input class="horizontal-quantity form-control" type="text">
							</div>
							<!-- End .product-single-qty -->
							<c:choose>

								<c:when test="${name != null}">

									<button onclick="addCart('${Product.id}')"
								class="btn btn-primary">Mua</button>
								</c:when>
							</c:choose>




						</div>
						<!-- End .product-action -->

						<hr class="divider mb-0 mt-0">

						<div class="product-single-share mb-2">
							<label class="sr-only">Share:</label>

							<div class="social-icons mr-2">
								<a href="#" class="social-icon social-facebook icon-facebook"
									target="_blank" title="Facebook"></a> <a href="#"
									class="social-icon social-twitter icon-twitter" target="_blank"
									title="Twitter"></a> <a href="#"
									class="social-icon social-linkedin fab fa-linkedin-in"
									target="_blank" title="Linkedin"></a> <a href="#"
									class="social-icon social-gplus fab fa-google-plus-g"
									target="_blank" title="Google +"></a> <a href="#"
									class="social-icon social-mail icon-mail-alt" target="_blank"
									title="Mail"></a>
							</div>
							<!-- End .social-icons -->

							<a href="wishlist.html" class="btn-icon-wish add-wishlist"
								title="Add to Wishlist"><i class="icon-wishlist-2"></i><span>Add
									to Wishlist</span></a>
						</div>
						<!-- End .product single-share -->
					</div>
					<!-- End .product-single-details -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .product-single-container -->

			<div class="product-single-tabs">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="product-tab-desc" data-toggle="tab"
						href="#product-desc-content" role="tab"
						aria-controls="product-desc-content" aria-selected="true">Description</a>
					</li>

					<li class="nav-item"><a class="nav-link" id="product-tab-size"
						data-toggle="tab" href="#product-size-content" role="tab"
						aria-controls="product-size-content" aria-selected="true">Size
							Guide</a></li>

					<li class="nav-item"><a class="nav-link" id="product-tab-tags"
						data-toggle="tab" href="#product-tags-content" role="tab"
						aria-controls="product-tags-content" aria-selected="false">Additional
							Information</a></li>

					<li class="nav-item"><a class="nav-link"
						id="product-tab-reviews" data-toggle="tab"
						href="#product-reviews-content" role="tab"
						aria-controls="product-reviews-content" aria-selected="false">Reviews
							(1)</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane fade show active" id="product-desc-content"
						role="tabpanel" aria-labelledby="product-tab-desc">
						<div class="product-desc-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, nostrud ipsum consectetur sed
								do, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
								ea commodo consequat. Duis aute irure dolor in reprehenderit in
								voluptate velit esse cillum dolore eu fugiat nulla pariatur.
								Excepteur sint occaecat.</p>
							<ul>
								<li>Any Product types that You want - Simple, Configurable
								</li>
								<li>Downloadable/Digital Products, Virtual Products</li>
								<li>Inventory Management with Backordered items</li>
							</ul>
							<p>Sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
						<!-- End .product-desc-content -->
					</div>
					<!-- End .tab-pane -->

					<div class="tab-pane fade" id="product-size-content"
						role="tabpanel" aria-labelledby="product-tab-size">
						<div class="product-size-content">
							<div class="row">
								<div class="col-md-4">
									<img
										src="${contextPath }/users/assets/images/products/single/body-shape.png"
										alt="body shape" width="217" height="398">
								</div>
								<!-- End .col-md-4 -->

								<div class="col-md-8">
									<table class="table table-size">
										<thead>
											<tr>
												<th>SIZE</th>
												<th>CHEST (in.)</th>
												<th>WAIST (in.)</th>
												<th>HIPS (in.)</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>XS</td>
												<td>34-36</td>
												<td>27-29</td>
												<td>34.5-36.5</td>
											</tr>
											<tr>
												<td>S</td>
												<td>36-38</td>
												<td>29-31</td>
												<td>36.5-38.5</td>
											</tr>
											<tr>
												<td>M</td>
												<td>38-40</td>
												<td>31-33</td>
												<td>38.5-40.5</td>
											</tr>
											<tr>
												<td>L</td>
												<td>40-42</td>
												<td>33-36</td>
												<td>40.5-43.5</td>
											</tr>
											<tr>
												<td>XL</td>
												<td>42-45</td>
												<td>36-40</td>
												<td>43.5-47.5</td>
											</tr>
											<tr>
												<td>XLL</td>
												<td>45-48</td>
												<td>40-44</td>
												<td>47.5-51.5</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- End .row -->
						</div>
						<!-- End .product-size-content -->
					</div>
					<!-- End .tab-pane -->

					<div class="tab-pane fade" id="product-tags-content"
						role="tabpanel" aria-labelledby="product-tab-tags">
						<table class="table table-striped mt-2">
							<tbody>
								<tr>
									<th>Weight</th>
									<td>23 kg</td>
								</tr>

								<tr>
									<th>Dimensions</th>
									<td>12 × 24 × 35 cm</td>
								</tr>

								<tr>
									<th>Color</th>
									<td>Black, Green, Indigo</td>
								</tr>

								<tr>
									<th>Size</th>
									<td>Large, Medium, Small</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- End .tab-pane -->

					<div class="tab-pane fade" id="product-reviews-content"
						role="tabpanel" aria-labelledby="product-tab-reviews">
						<div class="product-reviews-content">
							<h3 class="reviews-title">1 review for Men Black Sports
								Shoes</h3>

							<div class="comment-list">
								<div class="comments">
									<figure class="img-thumbnail">
										<img src="${contextPath }/users/assets/images/blog/author.jpg"
											alt="author" width="80" height="80">
									</figure>

									<div class="comment-block">
										<div class="comment-header">
											<div class="comment-arrow"></div>

											<div class="ratings-container float-sm-right">
												<div class="product-ratings">
													<span class="ratings" style="width: 60%"></span>
													<!-- End .ratings -->
													<span class="tooltiptext tooltip-top"></span>
												</div>
												<!-- End .product-ratings -->
											</div>

											<span class="comment-by"> <strong>Joe Doe</strong> –
												April 12, 2018
											</span>
										</div>

										<div class="comment-content">
											<p>Excellent.</p>
										</div>
									</div>
								</div>
							</div>

							<div class="divider"></div>

							<div class="add-product-review">
								<h3 class="review-title">Add a review</h3>

								<form action="#" class="comment-form m-0">
									<div class="rating-form">
										<label for="rating">Your rating <span class="required">*</span></label>
										<span class="rating-stars"> <a class="star-1" href="#">1</a>
											<a class="star-2" href="#">2</a> <a class="star-3" href="#">3</a>
											<a class="star-4" href="#">4</a> <a class="star-5" href="#">5</a>
										</span> <select name="rating" id="rating" required=""
											style="display: none;">
											<option value="">Rate…</option>
											<option value="5">Perfect</option>
											<option value="4">Good</option>
											<option value="3">Average</option>
											<option value="2">Not that bad</option>
											<option value="1">Very poor</option>
										</select>
									</div>

									<div class="form-group">
										<label>Your review <span class="required">*</span></label>
										<textarea cols="5" rows="6"
											class="form-control form-control-sm"></textarea>
									</div>
									<!-- End .form-group -->


									<div class="row">
										<div class="col-md-6 col-xl-12">
											<div class="form-group">
												<label>Name <span class="required">*</span></label> <input
													type="text" class="form-control form-control-sm" required>
											</div>
											<!-- End .form-group -->
										</div>

										<div class="col-md-6 col-xl-12">
											<div class="form-group">
												<label>Email <span class="required">*</span></label> <input
													type="text" class="form-control form-control-sm" required>
											</div>
											<!-- End .form-group -->
										</div>

										<div class="col-md-12">
											<div class=" custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="save-name" /> <label class="custom-control-label mb-0"
													for="save-name">Save my name, email, and website in
													this browser for the next time I comment.</label>
											</div>
										</div>
									</div>

									<input type="submit" class="btn btn-primary" value="Submit">
								</form>
							</div>
							<!-- End .add-product-review -->
						</div>
						<!-- End .product-reviews-content -->
					</div>
					<!-- End .tab-pane -->
				</div>
				<!-- End .tab-content -->
			</div>
			<!-- End .product-single-tabs -->

			<div class="products-section pt-0">
				<h2 class="section-title">Related Products</h2>

				<div
					class="products-slider 5col owl-carousel owl-theme dots-top dots-small">
					<div class="product-default inner-quickview inner-icon">
						<figure class="img-effect">
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-1.jpg"
								width="205" height="205" alt="product"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-1-2.jpg"
								width="205" height="205" alt="product">
							</a>
							<div class="label-group">
								<div class="product-label label-hot">HOT</div>
								<div class="product-label label-sale">-20%</div>
							</div>
							<div class="btn-icon-group">
								<a href="#" class="btn-icon btn-add-cart product-type-simple"><i
									class="icon-shopping-cart"></i></a>
							</div>
							<a href="ajax/product-quick-view.html" class="btn-quickview"
								title="Quick View">Quick View</a>

							<div class="product-countdown-container">
								<span class="product-countdown-title">offer ends in:</span>
								<div class="product-countdown countdown-compact"
									data-until="2021, 10, 5" data-compact="true"></div>
								<!-- End .product-countdown -->
							</div>
							<!-- End .product-countdown-container -->
						</figure>
						<div class="product-details">
							<div class="category-wrap">
								<div class="category-list">
									<a href="demo1-shop.html" class="product-category">category</a>
								</div>
								<a href="wishlist.html" title="Wishlist" class="btn-icon-wish"><i
									class="icon-heart"></i></a>
							</div>
							<h3 class="product-title">
								<a href="demo1-product.html">Black Grey Headset</a>
							</h3>
							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->
							<div class="price-box">
								<span class="product-price">$9.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
					<div class="product-default inner-quickview inner-icon">
						<figure class="img-effect">
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-2.jpg"
								width="205" height="205" alt="product" />
							</a>
							<div class="btn-icon-group">
								<a href="demo1-product.html" class="btn-icon btn-add-cart"><i
									class="fa fa-arrow-right"></i> </a>
							</div>
							<a href="ajax/product-quick-view.html" class="btn-quickview"
								title="Quick View">Quick View</a>
						</figure>
						<div class="product-details">
							<div class="category-wrap">
								<div class="category-list">
									<a href="demo1-shop.html" class="product-category">category</a>
								</div>
								<a href="wishlist.html" title="Wishlist" class="btn-icon-wish"><i
									class="icon-heart"></i></a>
							</div>
							<h3 class="product-title">
								<a href="demo1-product.html">Battery Charger</a>
							</h3>
							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->
							<div class="price-box">
								<span class="product-price">$9.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
					<div class="product-default inner-quickview inner-icon">
						<figure class="img-effect">
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-3.jpg"
								width="205" height="205" alt="product"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-3-2.jpg"
								width="205" height="205" alt="product">
							</a>
							<div class="btn-icon-group">
								<a href="#" class="btn-icon btn-add-cart product-type-simple"><i
									class="icon-shopping-cart"></i></a>
							</div>
							<a href="ajax/product-quick-view.html" class="btn-quickview"
								title="Quick View">Quick View</a>
						</figure>
						<div class="product-details">
							<div class="category-wrap">
								<div class="category-list">
									<a href="demo1-shop.html" class="product-category">category</a>
								</div>
								<a href="wishlist.html" title="Wishlist" class="btn-icon-wish"><i
									class="icon-heart"></i></a>
							</div>
							<h3 class="product-title">
								<a href="demo1-product.html">Brown Bag</a>
							</h3>
							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->
							<div class="price-box">
								<span class="product-price">$9.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
					<div class="product-default inner-quickview inner-icon">
						<figure class="img-effect">
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-4.jpg"
								width="205" height="205" alt="product"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-4-2.jpg"
								width="205" height="205" alt="product">
							</a>
							<div class="btn-icon-group">
								<a href="#" class="btn-icon btn-add-cart product-type-simple"><i
									class="icon-shopping-cart"></i></a>
							</div>
							<a href="ajax/product-quick-view.html" class="btn-quickview"
								title="Quick View">Quick View</a>
						</figure>
						<div class="product-details">
							<div class="category-wrap">
								<div class="category-list">
									<a href="demo1-shop.html" class="product-category">category</a>
								</div>
								<a href="wishlist.html" title="Wishlist" class="btn-icon-wish"><i
									class="icon-heart"></i></a>
							</div>
							<h3 class="product-title">
								<a href="demo1-product.html">Casual Note Bag</a>
							</h3>
							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->
							<div class="price-box">
								<span class="product-price">$9.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
					<div class="product-default inner-quickview inner-icon">
						<figure class="img-effect">
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-5.jpg"
								width="205" height="205" alt="product"> <img
								src="${contextPath }/users/assets/images/demoes/demo1/products/product-5-2.jpg"
								width="205" height="205" alt="product">
							</a>
							<div class="btn-icon-group">
								<a href="demo1-product.html" class="btn-icon btn-add-cart"><i
									class="fa fa-arrow-right"></i> </a>
							</div>
							<a href="ajax/product-quick-view.html" class="btn-quickview"
								title="Quick View">Quick View</a>
						</figure>
						<div class="product-details">
							<div class="category-wrap">
								<div class="category-list">
									<a href="demo1-shop.html" class="product-category">category</a>
								</div>
								<a href="wishlist.html" title="Wishlist" class="btn-icon-wish"><i
									class="icon-heart"></i></a>
							</div>
							<h3 class="product-title">
								<a href="demo1-product.html">Porto Extended Camera</a>
							</h3>
							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->
							<div class="price-box">
								<span class="product-price">$9.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
				</div>
				<!-- End .products-slider -->
			</div>
			<!-- End .products-section -->

			<hr class="mt-0 m-b-5" />

			<div class="product-widgets-container row pb-2">
				<div class="col-lg-3 col-sm-6 pb-5 pb-md-0">
					<h4 class="section-sub-title">Featured Products</h4>
					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-1.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-1-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Ultimate 3D Bluetooth Speaker</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-2.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-2-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Brown Women Casual HandBag</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top">5.00</span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-3.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-3-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Circled Ultimate 3D Speaker</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
				</div>

				<div class="col-lg-3 col-sm-6 pb-5 pb-md-0">
					<h4 class="section-sub-title">Best Selling Products</h4>
					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-4.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-4-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Blue Backpack for the Young - S</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top">5.00</span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-5.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-5-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Casual Spring Blue Shoes</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-6.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-6-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Men Black Gentle Belt</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top">5.00</span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
				</div>

				<div class="col-lg-3 col-sm-6 pb-5 pb-md-0">
					<h4 class="section-sub-title">Latest Products</h4>
					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-7.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-7-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Brown-Black Men Casual Glasses</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-8.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-8-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Brown-Black Men Casual Glasses</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top">5.00</span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-9.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-9-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Black Men Casual Glasses</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
				</div>

				<div class="col-lg-3 col-sm-6 pb-5 pb-md-0">
					<h4 class="section-sub-title">Top Rated Products</h4>
					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-10.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-10-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Basketball Sports Blue Shoes</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-11.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-11-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Men Sports Travel Bag</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top">5.00</span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>

					<div class="product-default left-details product-widget">
						<figure>
							<a href="demo1-product.html"> <img
								src="${contextPath }/users/assets/images/products/small/product-12.jpg"
								width="74" height="74" alt="product"> <img
								src="${contextPath }/users/assets/images/products/small/product-12-2.jpg"
								width="74" height="74" alt="product">
							</a>
						</figure>

						<div class="product-details">
							<h3 class="product-title">
								<a href="demo1-product.html">Brown HandBag</a>
							</h3>

							<div class="ratings-container">
								<div class="product-ratings">
									<span class="ratings" style="width: 100%"></span>
									<!-- End .ratings -->
									<span class="tooltiptext tooltip-top"></span>
								</div>
								<!-- End .product-ratings -->
							</div>
							<!-- End .product-container -->

							<div class="price-box">
								<span class="product-price">$49.00</span>
							</div>
							<!-- End .price-box -->
						</div>
						<!-- End .product-details -->
					</div>
				</div>
			</div>
			<!-- End .row -->
		</div>
		<!-- End .container -->
</main>