<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>

<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>
</head>
<body class="animsition">
	<div class="page-wrapper">

		<%@include file="customermobilesidebar.jsp"%>

		<%@include file="customersidebar.jsp"%>
		<div class="page-container">
			<%@include file="customerheader.jsp"%>
			<link href="css/table.css" rel="stylesheet" media="all">
			<link href="js/table.js" rel="stylesheet" media="all">
			<div class="main-content">
			
			
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row m-t-30">
							<div class="col-md-12">
								<div class="container">
									<div class="heading">
										<h1>
											<span class="shopper">s</span> Shopping Cart
										</h1>

										<a href="#" class="visibility-cart transition is-open">X</a>
									</div>

									<div class="cart transition is-open">

										<a href="#" class="btn btn-update">Update cart</a>


										<div class="table">

											<div class="layout-inline row th">
												<div class="col col-pro">Product</div>
												<div class="col col-price align-center ">Price</div>
												<div class="col col-qty align-center">QTY</div>
												<div class="col">VAT</div>
												<div class="col">Total</div>
											</div>

											<div class="layout-inline row">

												<div class="col col-pro layout-inline">
													<img
														src="images/icon/avatar-01.jpg"
														alt="kitten" />
													<p>Happy Little Critter</p>
												</div>

												<div class="col col-price col-numeric align-center ">
													<p>£59.99</p>
												</div>

												<div class="col col-qty layout-inline">
													<a href="#" class="qty qty-minus">-</a> <input
														type="numeric" value="3" /> <a href="#"
														class="qty qty-plus">+</a>
												</div>

												<div class="col col-vat col-numeric">
													<p>£2.95</p>
												</div>
												<div class="col col-total col-numeric">
													<p>£182.95</p>
												</div>
											</div>

											<div class="layout-inline row row-bg2">

												<div class="col col-pro layout-inline">
													<img
														src="images/icon/avatar-01.jpg"
														alt="kitten" />
													<p>Scared Little Kittie</p>
												</div>

												<div class="col col-price col-numeric align-center ">
													<p>£23.99</p>
												</div>

												<div class="col col-qty  layout-inline">
													<a href="#" class="qty qty-minus ">-</a> <input
														type="numeric" value="1" /> <a href="#"
														class="qty qty-plus">+</a>
												</div>

												<div class="col col-vat col-numeric">
													<p>£1.95</p>
												</div>
												<div class="col col-total col-numeric">
													<p>£25.94</p>
												</div>

											</div>

											<div class="layout-inline row">

												<div class="col col-pro layout-inline">
													<img
														src="images/icon/avatar-01.jpg"
														alt="kitten" />
													<p>Curious Little Begger</p>
												</div>

												<div class="col col-price col-numeric align-center ">
													<p>£59.99</p>
												</div>

												<div class="col col-qty layout-inline">
													<a href="#" class="qty qty-minus">-</a> <input
														type="numeric" value="3" /> <a href="#"
														class="qty qty-plus">+</a>
												</div>

												<div class="col col-vat col-numeric">
													<p>£2.95</p>
												</div>
												<div class="col col-total col-numeric">
													<p>£182.95</p>
												</div>
											</div>

											<div class="tf">
												<div class="row layout-inline">
													<div class="col">
														<p>VAT</p>
													</div>
													<div class="col"></div>
												</div>
												<div class="row layout-inline">
													<div class="col">
														<p>Shipping</p>
													</div>
													<div class="col"></div>
												</div>
												<div class="row layout-inline">
													<div class="col">
														<p>Total</p>
													</div>
													<div class="col"></div>
												</div>
											</div>
										</div>

										<a href="#" class="btn btn-update">Update cart</a>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="commonjs.jsp"%>
</body>
</html>