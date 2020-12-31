
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />

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
<%-- 		<%@include file="customersidebar.jsp"%> --%>
<%-- 		<%@include file="customerheader.jsp"%> --%>
		<div class="page-container">
			<div class="main-content">
			<h1 align="center">Login</h1>
				<form action="customer.jsp" class="w-50 ml-10" class="box" class="form" id="form" method="post">
				
					<div class="form-group mb-3 ml-10">
						<label for="email">Email address</label> 
						<input type="text" name="email" class="form-control" id="email" autocomplete="off" aria-describedby="emailHelp">
					</div>
					
					<div class="form-group mb-3 ml-10">
						<label for="password">Password</label> 
						<input type="password" name="password" class="form-control" id="pass">
					</div>
					
					<div class="form-check square-check mb-3 ml-10">
						<input class="form-check-input" type="checkbox" value=""
							id="remember"> <label class="form-check-label"
							for="remember"> Remember me </label>
					</div>
					
					<div align="center" class="forget ml-10">
				<h6> <a class="color" id="forget" href="forget-pass.jsp">Forgotten Password?</a> </h6><br>
				</div>
					<div align="center" >
					
					<button type="submit" class="btn btn-primary form-group ml-10">Submit</button>
					</div>
					
				<div class="register-link ml-10" align="center">
                                <h6>
                                  <a href="visitor.jsp" class="color">Skip Login</a>
                                  <br><br>
                                    Don't you have account?
                                    <a clas="color" href="register1.jsp">Sign Up Here</a>
                                    
                                </h6>
                </div>
				
				</form>
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