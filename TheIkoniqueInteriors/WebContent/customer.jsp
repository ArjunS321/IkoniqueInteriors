<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="animsition">
	<div class="page-wrapper" style="background-color: #e6e7ee;">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%@include file="customersidebar.jsp"%>
		<%@include file="customerheader.jsp"%>
		<div class="page-container">
			<div class="main-content pt-4">
				<div id="Carousel2"
					class="carousel slide shadow-soft border border-light p-4 rounded"
					data-ride="carousel">
					<div class="carousel-inner rounded">
						<div class="carousel-item active">
							<img class="d-block w-150 h-50"
								src="assets/img/tables/001 (1).jpg" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-150 h-50"
								src="assets/img/tables/002.jpg" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-150 h-50"
								src="assets/img/tables/003.jpg" alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#Carousel2" role="button"
						data-slide="prev"> <span class="carousel-control-prev-icon"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#Carousel2" role="button"
						data-slide="next"> <span class="carousel-control-next-icon"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
				</div>
				<%-- 								<%@include file="slideshow.jsp" %> --%>
				<%@include file="product.jsp"%>
			</div>
		</div>
	</div>
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
</body>
</html>