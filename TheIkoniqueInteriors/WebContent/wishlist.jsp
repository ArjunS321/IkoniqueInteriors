
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Neumorphism UI</title>
<style>
.cart{
	background-color: #e6e7ee;
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

<body class="animsition">
<div class="page-wrapper">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%@include file="customersidebar.jsp"%>
		<%@include file="customerheader.jsp"%>
		<div class="page-container">
			<div class="main-content">
				<div class="row mr-0 ml-0">
					<div class="col-12">
						<div class="card shadow-soft border-light p-4 mb-5">
							<div class="row align-items-center">
								<div class="col-3">
									<a href="#"> <img src="assets/img/tables/table.jpg"
										alt="apple watch series">
									</a>
								</div>
								<div class="col">
									<div class="d-flex mb-2 font-weight-bold">
										<a class="h5" href="#">Apple Watch Series 3</a> <span
											class="h5 ml-auto">$199.00</span>
									</div>
									<ul class="pl-3">
										<li class="small">Transport: Free transport</li>
										<li class="small">Moneyback: 1 month</li>
										<li class="small">Warranty: 24 months</li>
									</ul>
									<div class="d-flex align-items-center">
										<!-- Form -->
										<div class="form-group">
											<label class="h6" for="inlineFormCustomSelectPref3">Qty</label>
											<select class="custom-select w-auto"
												id="inlineFormCustomSelectPref3">
												<option selected>1</option>
												<option value="1">2</option>
												<option value="2">3</option>
												<option value="3">4</option>
											</select>
										</div>
										<!-- End of Form -->
										<div class="ml-auto">
											<a class="btn-link text-dark" href="#"><span
												class="far fa-trash-alt mr-2"></span>Remove </a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card shadow-soft border-light p-4 mb-5">
							<div class="row align-items-center">
								<div class="col-3">
									<a href="#"> <img src="assets/img/tables/table.jpg"
										alt="big speakers">
									</a>
								</div>
								<div class="col">
									<div class="d-flex mb-2 font-weight-bold">
										<a class="h5" href="#">Black Beats Pill</a> <span
											class="h5 ml-auto">$199.00</span>
									</div>
									<ul class="pl-3">
										<li class="small">Transport: Free transport</li>
										<li class="small">Moneyback: 1 month</li>
										<li class="small">Warranty: 12 months</li>
									</ul>
									<div class="d-flex align-items-center">
										<!-- Form -->
										<div class="form-group">
											<label class="h6" for="inlineFormCustomSelectPref4">Qty</label>
											<select class="custom-select w-auto"
												id="inlineFormCustomSelectPref4">
												<option selected>1</option>
												<option value="1">2</option>
												<option value="2">3</option>
												<option value="3">4</option>
											</select>
										</div>
										<!-- End of Form -->
										<div class="ml-auto">
											<a class="btn-link text-dark" href="#"><span
												class="far fa-trash-alt mr-2"></span>Remove </a>
										</div>
									</div>
								</div>
							</div>
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
		</div>
		</div>
		</div>
</body>

</html>