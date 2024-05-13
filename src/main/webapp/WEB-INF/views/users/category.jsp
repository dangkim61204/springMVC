<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath }" scope="session" />
<main class="main">
	<div class="category-banner-container bg-gray">
		<div class="category-banner banner text-uppercase"
			style="background: no-repeat 60%/cover url('${contextPath}/users/assets/images/banners/banner-top.jpg');">
			<div class="container position-relative">
				<div class="row">
					<div
						class="pl-lg-5 pb-5 pb-md-0 col-md-5 col-xl-4 col-lg-4 offset-1">
						<h3>
							Electronic<br>Deals
						</h3>
						<a href="category.html" class="btn btn-dark">Get Yours!</a>
					</div>
					<div class="pl-lg-3 col-md-4 offset-md-0 offset-1 pt-3">
						<div class="coupon-sale-content">
							<h4 class="m-b-1 coupon-sale-text bg-white text-transform-none">Exclusive
								COUPON</h4>
							<h5 class="mb-2 coupon-sale-text d-block ls-10 p-0">
								<i class="ls-0">UP TO</i><b class="text-dark">$100</b> OFF
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<nav aria-label="breadcrumb" class="breadcrumb-nav">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${contextPath}/trang-chu"><i
						class="icon-home"></i></a></li>
				<li class="breadcrumb-item"><a href="${contextPath}/trang-chu">Home</a></li>
				
			</ol>
		</nav>

		<div class="row">
			<div class="col-lg-9 main-content">
				<nav class="toolbox sticky-header"
					data-sticky-options="{'mobile': true}">
					<div class="toolbox-left">
						<a href="#" class="sidebar-toggle"><svg data-name="Layer 3"
								id="Layer_3" viewBox="0 0 32 32"
								xmlns="http://www.w3.org/2000/svg">
										<line x1="15" x2="26" y1="9" y2="9" class="cls-1"></line>
										<line x1="6" x2="9" y1="9" y2="9" class="cls-1"></line>
										<line x1="23" x2="26" y1="16" y2="16" class="cls-1"></line>
										<line x1="6" x2="17" y1="16" y2="16" class="cls-1"></line>
										<line x1="17" x2="26" y1="23" y2="23" class="cls-1"></line>
										<line x1="6" x2="11" y1="23" y2="23" class="cls-1"></line>
										<path
									d="M14.5,8.92A2.6,2.6,0,0,1,12,11.5,2.6,2.6,0,0,1,9.5,8.92a2.5,2.5,0,0,1,5,0Z"
									class="cls-2"></path>
										<path d="M22.5,15.92a2.5,2.5,0,1,1-5,0,2.5,2.5,0,0,1,5,0Z"
									class="cls-2"></path>
										<path d="M21,16a1,1,0,1,1-2,0,1,1,0,0,1,2,0Z" class="cls-3"></path>
										<path
									d="M16.5,22.92A2.6,2.6,0,0,1,14,25.5a2.6,2.6,0,0,1-2.5-2.58,2.5,2.5,0,0,1,5,0Z"
									class="cls-2"></path>
									</svg> <span>Filter</span> </a>

						<div class="toolbox-item toolbox-sort">


							<div class="">
								<form action="${contextPath}/tim-theo-ten" method="post">
									<input type="text" name="searchname"
										placeholder="Nhập tên cần tìm" value="${search}" /> <span>
										<button style="padding: 5px 23px;" class="btn btn-primary">Search</button></span>
								</form>

							</div>
							<!-- End .select-custom -->


						</div>
						<!-- End .toolbox-item -->
					</div>
					<!-- End .toolbox-left -->

					<div class="toolbox-right">
						<div class="toolbox-item toolbox-show">
							<label>Show:</label>

							<div class="select-custom">
								<select name="count" class="form-control">
									<option value="12">12</option>
									<option value="24">24</option>
									<option value="36">36</option>
								</select>
							</div>
							<!-- End .select-custom -->
						</div>
						<!-- End .toolbox-item -->

						<div class="toolbox-item layout-modes">
							<a href="category.html" class="layout-btn btn-grid active"
								title="Grid"> <i class="icon-mode-grid"></i>
							</a> <a href="category-list.html" class="layout-btn btn-list"
								title="List"> <i class="icon-mode-list"></i>
							</a>
						</div>
						<!-- End .layout-modes -->
					</div>
					<!-- End .toolbox-right -->
				</nav>

				<div class="row">
					<c:forEach items="${Products}" var="p">
						<div class="col-6 col-sm-4 col-md-3">
							<div class="product-default">
								<figure>
									<a href="${contextPath}/chi-tiet-san-pham/${p.id}"> <img
										src="${contextPath}/images/${p.image}" width="280"
										height="280" alt="product" />

									</a>

									<div class="label-group">
										<div class="product-label label-hot">HOT</div>
										<div class="product-label label-sale">-20%</div>
									</div>
								</figure>

								<div class="product-details">

									<div class="category-wrap">
										<div class="category-list">
											<a href="category.html" class="product-category">category</a>
										</div>
									</div>

									<h3 class="product-title">
										<a href="${contextPath}/chi-tiet-san-pham/${p.id}">${p.name}</a>
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

										<span class="product-price">${p.price }</span>
									</div>
									<!-- End .price-box -->

									<div class="product-action">
										<a href="wishlist.html" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a> <a
											href="${contextPath}/chi-tiet-san-pham/${p.id}"
											class="btn-icon btn-add-cart"><i
											class="fa fa-arrow-right"></i><span>SELECT OPTIONS</span></a> <a
											href="ajax/product-quick-view.html" class="btn-quickview"
											title="Quick View"><i class="fas fa-external-link-alt"></i></a>
									</div>
								</div>
								<!-- End .product-details -->
							</div>
						</div>
					</c:forEach>


				</div>
				<!-- End .row -->

				
			</div>
			<!-- End .col-lg-9 -->

			<div class="sidebar-overlay"></div>
			<aside class="sidebar-shop col-lg-3 order-lg-first mobile-sidebar">
				<div class="sidebar-wrapper">
					<div class="widget">
						<h3 class="widget-title">
							<a data-toggle="collapse" href="#widget-body-2" role="button"
								aria-expanded="true" aria-controls="widget-body-2">Categories</a>
						</h3>

						<div class="collapse show" id="widget-body-2">
							<div class="widget-body">
								<ul class="cat-list">

									<c:forEach items="${Categorys}" var="c">
										<li><a href="#">${c.name}</a><span class="products-count"></span></li>
									</c:forEach>

								</ul>
							</div>
							<!-- End .widget-body -->
						</div>
						<!-- End .collapse -->
					</div>
					<!-- End .widget -->

					<div class="widget">
						<h3 class="widget-title">
							<a data-toggle="collapse" href="#widget-body-3" role="button"
								aria-expanded="true" aria-controls="widget-body-3">Price</a>
						</h3>



						<div class="collapse show" id="widget-body-3">
							<div class="widget-body pb-0">
								<form action="${contextPath}/tim-theo-gia">
									<input type="text" name="fromPrice" value="${formPrice}" placeholder="giá từ..."> <input
										type="text" name="toPrice" value="${toPrice}" placeholder="đến...">
									<button style="  margin-top: 15px; padding: 15px 60px;" type="submit" class="btn btn-primary">Filter</button>
									
									<!-- End .filter-price-action -->
								</form>
							</div>
							<!-- End .widget-body -->
						</div>
						<!-- End .collapse -->
					</div>
					<!-- End .widget -->



					<div class="widget widget-featured">
						<h3 class="widget-title">Featured</h3>

						<div class="widget-body">
							<div class="owl-carousel widget-featured-products">
								<div class="featured-col">
									<div class="product-default left-details product-widget">
										<figure>
											<a href="product.html"> <img
												src="${contextPath}/users/assets/images/products/small/product-4.jpg"
												width="75" height="75" alt="product" /> <img
												src="${contextPath}/users/assets/images/products/small/product-4-2.jpg"
												width="75" height="75" alt="product" />
											</a>
										</figure>
										<div class="product-details">
											<h3 class="product-title">
												<a href="product.html">Blue Backpack for the Young - S</a>
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
											<a href="product.html"> <img
												src="${contextPath}/users/assets/images/products/small/product-5.jpg"
												width="75" height="75" alt="product" /> <img
												src="${contextPath}/users/assets/images/products/small/product-5-2.jpg"
												width="75" height="75" alt="product" />
											</a>
										</figure>
										<div class="product-details">
											<h3 class="product-title">
												<a href="product.html">Casual Spring Blue Shoes</a>
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
											<a href="product.html"> <img
												src="${contextPath}/users/assets/images/products/small/product-6.jpg"
												width="75" height="75" alt="product" /> <img
												src="${contextPath}/users/assets/images/products/small/product-6-2.jpg"
												width="75" height="75" alt="product" />
											</a>
										</figure>
										<div class="product-details">
											<h3 class="product-title">
												<a href="product.html">Men Black Gentle Belt</a>
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
								<!-- End .featured-col -->

								<div class="featured-col">
									<div class="product-default left-details product-widget">
										<figure>
											<a href="product.html"> <img
												src="${contextPath}/users/assets/images/products/small/product-1.jpg"
												width="75" height="75" alt="product" /> <img
												src="${contextPath}/users/assets/images/products/small/product-1-2.jpg"
												width="75" height="75" alt="product" />
											</a>
										</figure>
										<div class="product-details">
											<h3 class="product-title">
												<a href="product.html">Ultimate 3D Bluetooth Speaker</a>
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
											<a href="product.html"> <img
												src="${contextPath}/users/assets/images/products/small/product-2.jpg"
												width="75" height="75" alt="product" /> <img
												src="${contextPath}/users/assets/images/products/small/product-2-2.jpg"
												width="75" height="75" alt="product" />
											</a>
										</figure>
										<div class="product-details">
											<h3 class="product-title">
												<a href="product.html">Brown Women Casual HandBag</a>
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
											<a href="product.html"> <img
												src="${contextPath}/users/assets/images/products/small/product-3.jpg"
												width="75" height="75" alt="product" /> <img
												src="${contextPath}/users/assets/images/products/small/product-3-2.jpg"
												width="75" height="75" alt="product" />
											</a>
										</figure>
										<div class="product-details">
											<h3 class="product-title">
												<a href="product.html">Circled Ultimate 3D Speaker</a>
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
								<!-- End .featured-col -->
							</div>
							<!-- End .widget-featured-slider -->
						</div>
						<!-- End .widget-body -->
					</div>
					<!-- End .widget -->

					<div class="widget widget-block">
						<h3 class="widget-title">Custom HTML Block</h3>
						<h5>This is a custom sub-title.</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Cras non placerat mi. Etiam non tellus</p>
					</div>
					<!-- End .widget -->
				</div>
				<!-- End .sidebar-wrapper -->
			</aside>
			<!-- End .col-lg-3 -->
		</div>
		<!-- End .row -->
	</div>
	<!-- End .container -->

	<div class="mb-4"></div>
	<!-- margin -->
</main>