<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Profile</title>
<jsp:include page="../css/styles.jsp" />

</head>
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="categories.jsp"></jsp:include>

		<p class="display-4 text-center text-primary">
			<strong>${CATEGORY.name }</strong>
		</p>

		<!-- Main -->
		<section class="section-content padding-y bg">
			<div class="container">
				<div class="row">
					<aside class="col-md-3">
						<!--   SIDEBAR   -->
						<ul class="list-group">
							<a class="list-group-item active" href="#"> My order history
							</a>
							<a class="list-group-item" href="#"> Transactions </a>
							<a class="list-group-item" href="#"> Return and refunds </a>
							<a class="list-group-item" href="#">Settings </a>
							<a class="list-group-item" href="#"> My Selling Items </a>
							<a class="list-group-item" href="#"> Received orders </a>
						</ul>
						<br> <a class="btn btn-light btn-block" href="#"> <i
							class="fa fa-power-off"></i> <span class="text">Log out</span>
						</a>
						<!--   SIDEBAR .//END   -->
					</aside>
					<main class="col-md-9">
						<article class="card">
							<header class="card-header">
								<strong class="d-inline-block mr-3">Order ID:
									6123456789</strong> <span>Order Date: 16 December 2018</span>
							</header>
							<div class="card-body">
								<div class="row">
									<div class="col-md-8">
										<h6 class="text-muted">Delivery to</h6>
										<p>
											Michael Jackson <br> Phone +1234567890 Email:
											myname@pixsellz.com <br> Location: Home number, Building
											name, Street 123, Tashkent, UZB <br> P.O. Box: 100123
										</p>
									</div>
									<div class="col-md-4">
										<h6 class="text-muted">Payment</h6>
										<span class="text-success"> <i
											class="fab fa-lg fa-cc-visa"></i> Visa **** 4216
										</span>
										<p>
											Subtotal: $356 <br> Shipping fee: $56 <br> <span
												class="b">Total: $456 </span>
										</p>
									</div>
								</div>
								<!-- row.// -->
							</div>
							<!-- card-body .// -->
							<div class="table-responsive">
								<table class="table table-hover">
									<tbody>
										<tr>
											<td width="65"><img
												src="bootstrap-ecommerce-html/images/items/1.jpg"
												class="img-xs border"></td>
											<td>
												<p class="title mb-0">Product name goes here</p> <var
													class="price text-muted">USD 145</var>
											</td>
											<td>Seller <br> Nike clothing
											</td>
											<td width="250"><a href="#"
												class="btn btn-outline-primary">Track order</a> <a href="#"
												class="btn btn-light"> Details </a></td>
										</tr>
										<tr>
											<td><img
												src="bootstrap-ecommerce-html/images/items/2.jpg"
												class="img-xs border"></td>
											<td>
												<p class="title mb-0">Another name goes here</p> <var
													class="price text-muted">USD 15</var>
											</td>
											<td>Seller <br> ABC shop
											</td>
											<td><a href="#" class="btn btn-outline-primary">Track
													order</a> <a href="#" class="btn btn-light"> Details </a></td>
										</tr>
										<tr>
											<td><img
												src="bootstrap-ecommerce-html/images/items/3.jpg"
												class="img-xs border"></td>
											<td>
												<p class="title mb-0">The name of the product goes here
												</p> <var class="price text-muted">USD 145</var>
											</td>
											<td>Seller <br> Wallmart
											</td>
											<td><a href="#" class="btn btn-outline-primary">Track
													order</a> <a href="#" class="btn btn-light"> Details </a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- table-responsive .end// -->
						</article>
						<!-- order-group.// -->
					</main>
				</div>
				<!-- row.// -->
			</div>
			<!-- container .//  -->
		</section>
		<!-- End Main -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>