
<!DOCTYPE html>
<%@page import="com.ikonique.bean.Product"%>
<%@page import="com.ikonique.bean.Cart"%>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Cart</title>
<style>
.cart{
	background-color: #e6e7ee;
}
$quantity-btn-color: #95d7fc;
.product {
	width: 30%;
	margin: 30px;
}
.form-group {
	width: 30%;
	margin: 30px;
	.glyphicon {
		color: $quantity-btn-color;
	}
}
</style>
<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>
<jsp:include page="/SelectCartDetails"/>
<%List <Cart> cartList =(List)request.getAttribute("cartList"); %> 
<%List <Integer> cartint =(List)request.getAttribute("cartint"); %>
<jsp:include page="/SelectProductDetails"/>
<%List <Product> productList =(List)request.getAttribute("productList"); %>
<body>
<div class="page-wrapper">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%@include file="customersidebar.jsp"%>
		<%@include file="customerheader.jsp"%>
		<div class="page-container">
			<div class="main-content">
				<div class="row mr-0 ml-0" style="background-color: #e6e7ee;">
				<%for(Product product : productList){ %>
					<%if(cartint.contains(product.getProduct_id())){ %>
					<div class="col-12">
						<div class="card shadow-soft border-light p-4 mb-5" style="background-color: #e6e7ee;">
							<div class="row align-items-center">
								<div class="col-3">
									<a href="#"> <img src="data:image/jpg;base64,<%=product.getProductpicString()%>">
									</a>
								</div>
								<div class="col">
									<div class="d-flex mb-2 font-weight-bold">
										<a class="h5" href="#"><%=product.getProduct_name() %></a> <span
											class="h5 ml-auto"><%=product.getProduct_price() %></span>
									</div>
									<ul class="pl-3">
										<li class="small"><%=product.getProduct_desc() %></li>
									</ul>
									<br>
									<div class="d-flex align-items-center">
										<button id="down" class="btn" onclick=" down('1')">
											<i class="fas fa-minus"></i>
										</button>
										<input style="width:50px; background-color:#e6e7ee;" type="text" id="myNumber"
											class="form-control input-number" value="1" />
										<button id="up" class="btn" onclick="up('20')">
											<i class="fas fa-plus"></i>
										</button>
										</div>
										<div style="margin-left:47rem;">
											<a class="btn-link text-dark" href="DeleteCartDetail?productid=<%=product.getProduct_id()%>"><span
												class="far fa-trash-alt mr-2"></span>Remove</a>
										</div>
										<div style="margin-left:47rem;" class="mt-3">
											<a class="btn-link text-dark" href="#"><span
												class="fa fa-shopping-bag mr-2"></span>Buy Now</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>
						<%} %>
					</div>
				</div>
		</div>
	</div>
</body>
<!-- Core -->
				<script src="neuro/vendor/jquery/dist/jquery.min.js"></script>
				<script src="neuro/vendor/popper.js/dist/umd/popper.min.js"></script>
				<script src="neuro/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
				<script src="neuro/vendor/headroom.js/dist/headroom.min.js"></script>

				<!-- Vendor JS -->
				<script src="neuro/vendor/onscreen/dist/on-screen.umd.min.js"></script>
				<script src="neuro/vendor/nouislider/distribute/nouislider.min.js"></script>
				<script
					src="neuro/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
				<script src="neuro/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
				<script src="neuro/vendor/jarallax/dist/jarallax.min.js"></script>
				<script src="neuro/vendor/jquery.counterup/jquery.counterup.min.js"></script>
				<script
					src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
				<script
					src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
				<script src="neuro/vendor/prismjs/prism.js"></script>

				<script async defer src="https://buttons.github.io/buttons.js"></script>

				<!-- Neumorphism JS -->
				<script src="neuro/assets/js/neumorphism.js"></script>
				<%@include file="commonjs.jsp"%>
				<script>
				function up(max) {
				    document.getElementById("myNumber").value = parseInt(document.getElementById("myNumber").value) + 1;
				    if (document.getElementById("myNumber").value >= parseInt(max)) {
				        document.getElementById("myNumber").value = max;
				    }
				}
				function down(min) {
				    document.getElementById("myNumber").value = parseInt(document.getElementById("myNumber").value) - 1;
				    if (document.getElementById("myNumber").value <= parseInt(min)) {
				        document.getElementById("myNumber").value = min;
				    }
				}
				</script>
</html>