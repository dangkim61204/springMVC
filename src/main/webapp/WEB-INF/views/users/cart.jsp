<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath }" scope="session" />

<main class="main">
	<div class="container">
		<ul
			class="checkout-progress-bar d-flex justify-content-center flex-wrap">
			<li class="active"><a href="cart.html">Shopping Cart</a></li>
			<li><a href="checkout.html">Checkout</a></li>
			<li class="disabled"><a href="cart.html">Order Complete</a></li>
			<li>${session.getAttribute("cart") }</li>
		</ul>

		<div class="row">
			<div class="col-lg-8">
				<div class="cart-table-container">
					<table class="table table-cart">
						<thead>
							<tr>
								<th class="thumbnail-col"></th>
								<th class="product-col">Product</th>
								<th class="price-col">Price</th>
								<th class="qty-col">Quantity</th>
								<th class="text-right">Subtotal</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${cart}" var="car">
								<tr class="product-row">
									<td>
										<figure class="product-image-container">
											<a href="product.html" class="product-image"> <img
												src="${contextPath}/images/${car.image}" alt="product">
											</a>

											<a href="#" class="btn-remove icon-cancel"
												title="Remove Product"></a>
										</figure>
									</td>
									<td class="product-col">
										<h5 class="product-title">
											<a href="product.html">${car.name}</a>
										</h5>
									</td>
									<td><fmt:formatNumber> ${car.price}</fmt:formatNumber></td>
									<td>
										<div class="product-single-qty">
											<input type="number" style="width: 60px"
												onchange="updateCart('${car.id}',this.value)"
												value="${car.quantity}" min="1" max="100" />
										</div> <!-- End .product-single-qty -->
									</td>
									<td class="text-right"><span class="subtotal-price"><fmt:formatNumber>${car.price*car.quantity}</fmt:formatNumber>
									</span></td>
									<c:set var="total" value="${total+car.price*car.quantity}" />
									<td><a href="#" class="btn btn-danger"
										onclick="removeItem('${car.id}')">Xóa</a></td>
								</tr>
							</c:forEach>



						</tbody>


						<tfoot>
							<tr>
								<td colspan="5" class="clearfix">
									<div class="float-left">
										<div class="cart-discount">
											<form action="#">
												<div class="input-group">
													<input type="text" class="form-control form-control-sm"
														placeholder="Coupon Code" required>
													<div class="input-group-append">
														<button class="btn btn-sm" type="submit">Apply
															Coupon</button>
													</div>
												</div>
												<!-- End .input-group -->
											</form>
										</div>
									</div> <!-- End .float-left -->


								</td>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- End .cart-table-container -->
			</div>
			<!-- End .col-lg-8 -->

			<div class="col-lg-4">
				<div class="cart-summary">
					<h3>CART TOTALS</h3>

					<table class="table table-totals">
						<tbody>
							<tr>
								<td>Tổng tiền:</td>
								<td><fmt:formatNumber value="${total}" /></td>
							</tr>

							<tr>
								<td colspan="2" class="text-left">
									<h4>Shipping</h4>
									<form action="${contextPath}/dat-hang" method="post">
										<div class="form-group form-group-sm">
											<input type="text" name="name"
												class="form-control form-control-sm" placeholder="Name">
										</div>

										<div class="form-group form-group-sm">
											<%
											String email = (String) session.getAttribute("email");
										
											%>
											<input type="text" name="email" value="${email}"
												class="form-control form-control-sm" placeholder="Email"
												readonly="readonly">
										</div>

										<div class="form-group form-group-sm">
											<input type="text" name="address"
												class="form-control form-control-sm" placeholder="Address">
										</div>

										<div class="form-group form-group-sm">
											<input type="text" name="phone"
												class="form-control form-control-sm" placeholder="phone">
										</div>

										<div class="checkout-methods">
											<button type="submit" class="btn btn-block btn-dark">Đặt
												Hàng</button>
										</div>

									</form>
								</td>
							</tr>
						</tbody>


					</table>


				</div>
				<!-- End .cart-summary -->
			</div>
			<!-- End .col-lg-4 -->
		</div>
		<!-- End .row -->
	</div>
	<!-- End .container -->

	<div class="mb-6"></div>
	<!-- margin -->
</main>
<!-- End .main -->