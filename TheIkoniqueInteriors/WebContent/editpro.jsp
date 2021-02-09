<%@page import="com.ikonique.bean.User"%>
<%@page import="com.ikonique.bean.Area"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
#form .indicator1 {
	position: absolute;
	top: 50px;
	right: -150px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid .indicator1 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid .indicator1 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator2 {
	position: absolute;
	top: 50px;
	right: -150px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid1 .indicator2 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid1 .indicator2 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator3 {
	position: absolute;
	top: 50px;
	right: -150px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid2 .indicator3 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid2 .indicator3 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator4 {
	position: absolute;
	top: 50px;
	right: -150px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid3 .indicator4 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid3 .indicator4 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator5 {
	position: absolute;
	top: 50px;
	right: -150px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid4 .indicator5 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid4 .indicator5 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator6 {
	position: absolute;
	top: 50px;
	right: -150px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid5 .indicator6 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid5 .indicator6 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

#form .indicator8 {
	position: absolute;
	top: 20px;
	right: 26px;
	width: 10px;
	height: 10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid6 .indicator8 {
	background: #f00;
	box-shadow: 0 0 5px #f00, 0 0 10px #f00, 0 0 20px #f00, 0 0 40px #f00;
}

#form.valid6 .indicator8 {
	background: #0f0;
	box-shadow: 0 0 5px #0f0, 0 0 10px #0f0, 0 0 20px #0f0, 0 0 40px #0f0;
}

.form-control1 {
	font-size: 1rem;
	border-radius: 0.55rem;
	box-shadow: inset 2px 2px 5px #b8b9be, inset -3px -3px 7px #ffffff;
}

.form-control1 {
	display: block;
	width: 150%;
	height: calc(1.5em + 1.2rem + 0.0625rem);
	padding: 0.6rem 0.75rem;
	font-size: 1rem;
	font-weight: 300;
	line-height: 1.5;
	color: #44476A;
	background-color: #e6e7ee;
	background-clip: padding-box;
	border: 0.0625rem solid #D1D9E6;
	border-radius: 0.55rem;
	box-shadow: inset 2px 2px 5px #b8b9be, inset -3px -3px 7px #ffffff;
	transition: all 0.3s ease-in-out;
}

textarea.form-control1 {
	height: auto;
}

textarea.form-control1:hover {
	border: hidden;
}

.profile-image1 {
	width: 25rem;
	height: 25rem;
}

.ml-11, .mx-1 {
	margin-left: -10.25rem !important;
	margin-top: -9.25rem !important;
}

.custom-file {
	margin-left: -7.25rem !important;
}

.margin2 {
	margin-left: 80.25rem !important;
	margin-top: 0.25rem !important;
}

.margin1 {
	margin-left: 5.25rem !important;
}

.margin {
	margin-top: -30rem !important;
}

.margin4 {
	margin-left: 80.25rem !important;
	margin-top: -0.25rem !important;
}

.size {
	width: 10%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Edit Profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<!-- <link type="text/css" href="css/login1css.css" rel="stylesheet"> -->

<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">


<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>
<%
HttpSession httpSession = request.getSession(false);
User user = null;
if (null != httpSession) {
	user = (User) httpSession.getAttribute("loginBean");
}
%>
<jsp:include page="/AreaRegistration" />
<%
	List<Area> area = (List) request.getAttribute("area");
%>
<jsp:include page="/AreaName" />
<body class="animsition">
	<div class="page-wrapper">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%-- 		<%@include file="customersidebar.jsp"%> --%>
		<%-- 		<%@include file="customerheader.jsp"%> --%>
		<div class="page-container">
			<div class="main-content">
				<h1 align="center" style="margin-top: 50px;">Edit Profile</h1>

				<hr class="my-5" style="background-color: #d4d4d4;">
				<a href="login.jsp" type="submit" name="submit"
					class="btn form-group size btn-primary margin2">Logout</a> <a
					href="contactus.jsp" type="submit" name="submit"
					class="btn form-group size btn-primary margin4">Contact Us</a>
				<div class="section section-lg pt-4">
					<div class="container">
						<form action="UpdateUserDetails" class="box" class="form" id="form" method="post"
							enctype="multipart/form-data" onsubmit="return login()">
							<input type="hidden" name="user_id"
								value="<%=String.valueOf(user.getUser_id())%>">
							<div>


								<div
									class="profile-image1 bg-primary shadow-inset border border-light rounded ml-11 p-3 ">
									<img src="data:image/jpg;base64,<%=user.getUserProfilepicString() %>" height="150px" width="150px" 
										class="card-img-top rounded" alt="Leos Portrait">
								</div>
								<br>
								<div class="custom-file mr-1 col-lg-3 col-sm-6">
									<input type="file" class="custom-file-input" id="customFile"
										aria-label="File upload" name="photo"> <label
										class="custom-file-label" for="customFile">Choose file</label>
								</div>

								<div class="col-lg-5 col-sm-6 ml-10 ml-5 margin">
									<!-- Form -->

									
									<div class="form-group mb-4 margin1 inputbox">

										<label for="validationServer01">First name</label> <input
											type="text" class="form-control1" id="fname"
											 value="<%=user.getFirstname()%>"
											autocomplete="off" name="fname" onkeyup="validate1();"> <span class="indicator1"></span>
									</div>
									<!-- End of Form -->
									<!-- Form -->
									<div class="form-group mb-4 margin1">
										<label for="validationServerUsername">Lastname</label> <input
											type="text" class="form-control1" id="lname"
											 value="<%=user.getLastname()%>"
											autocomplete="off" name="lname" onkeyup="validate2();"> <span class="indicator2"></span>
									</div>
									<div class="form-group mb-4 margin1">
										<label for="validationServerUsername">Email</label> <input
											type="text" class="form-control1" id="email" 
											 value="<%=user.getEmail()%>"
											autocomplete="off" readonly name="email" onkeyup="validate3();"><span class="indicator3"></span>
									</div>
									<div class="form-group mb-4 margin1">
										<label for="validationServerUsername">Address</label>
										<textarea class="form-control1" id="address"
											 rows="5" autocomplete="off" name="address" onkeyup="validate5();"><%=user.getAddress()%></textarea>
										<span class="indicator5"></span>
									</div>
									<div class="dropdown">
										<div class="form-group ml-6" style="width: 530px">
											<select class="form-control" name="area" id="area" onchange="validate7()">
											<option value="0" selected >select Area</option>
												<%
																			for (Area place : area) {
																		%>
												<%
																			if (user.getArea_id() == place.getArea_id()) {
																		%>
												<option value="<%=place.getArea_id()%>" selected><%=place.getArea_name()%></option>
												<%
																			} else {
																		%>
												<option value="<%=place.getArea_id()%>"><%=place.getArea_name()%></option>
												<%
																			}
																		%>


												<%--  <option value="<%=place.getArea_id()%>"><%=place.getArea_name()%></option> --%>

												<%
																			}
																		%>
											</select><span class="indicator8"></span>
										</div>
									</div>


									<div class="form-group mb-4 margin1">
										<label for="validationServerUsername">Contact No.</label> <input
											value="<%=user.getMobileno()%>" type="text"
											class="form-control1" id="cno" 
											 maxlength="10" autocomplete="off" name="contactno" onkeyup="validate6();">
										<span class="indicator6"></span>
									</div>
									<div class="form-group mb-3  inputBox margin1">
										Gender<br>
										<%
										if (user.getGender().equals("Male") ){
								     %>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="exampleRadios" id="exampleRadios1" value="Male"
												checked> <label class="form-check-label"
												for="exampleRadios1"> Male </label> <input
												class="form-check-input" type="radio" name="exampleRadios"
												id="exampleRadios2" value="Female"> <label
												class="form-check-label" for="exampleRadios2">
												Female </label>
												</div>
											<%
										} else {
									%>
										    <div class="form-check">
											<input class="form-check-input" type="radio"
												name="exampleRadios" id="exampleRadios1" value="Male"
												> <label class="form-check-label"
												for="exampleRadios1"> Male </label> <input
												class="form-check-input" type="radio" name="exampleRadios"
												id="exampleRadios2" value="Female" checked> <label
												class="form-check-label" for="exampleRadios2">
												Female </label>
												</div>
											<%
												}
										    %>
										
									</div>

									<!-- End of Form -->
									<!-- Form -->

									<button type="submit" name="submit"
										class="btn form-group btn-primary mt-5 ml-10 margin1">Save
										Changes</button>
									<!-- End of Form -->
								</div>
							</div>
						</form>


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


	<script>
function validate1() {
	const form = document.getElementById('form');
	const fname = document.getElementById('fname').value;
	

	if (fname != " ") {
		form.classList.add('valid')
		form.classList.remove('invalid')
	} else {
		form.classList.add('invalid')
		form.classList.remove('valid')
	}
	if (fname == "") {
		form.classList.remove('invalid')
		form.classList.remove('valid')
	}
}
function validate2() {
	const form = document.getElementById('form');
	const lname = document.getElementById('lname').value;
	

	if (lname != " ") {
		form.classList.add('valid1')
		form.classList.remove('invalid1')
	} else {
		form.classList.add('invalid1')
		form.classList.remove('valid1')
	}
	if (lname == "") {
		form.classList.remove('invalid1')
		form.classList.remove('valid1')
	}
}
function validate3() {
	const form = document.getElementById('form');
	const email = document.getElementById('email').value;
	const pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/

	if (email.match(pattern)) {
		form.classList.add('valid2')
		form.classList.remove('invalid2')
	} else {
		form.classList.add('invalid2')
		form.classList.remove('valid2')
	}
	if (email == "") {
		form.classList.remove('invalid2')
		form.classList.remove('valid2')
	}
}

function validate5() {
	const form = document.getElementById('form');
	const address = document.getElementById('address').value;
	

	if (address !=" ") {
		form.classList.add('valid4')
		form.classList.remove('invalid4')
	} else {
		form.classList.add('invalid4')
		form.classList.remove('valid4')
	}
	if (address == "") {
		form.classList.remove('invalid4')
		form.classList.remove('valid4')
	}
}

function validate6() {
	const form = document.getElementById('form');
	const cno = document.getElementById('cno').value;
	const pattern = /(7|8|9)\d{9}/

	if (cno.match(pattern)) {
		form.classList.add('valid5')
		form.classList.remove('invalid5')
	} else {
		form.classList.add('invalid5')
		form.classList.remove('valid5')
	}
	if (cno == "") {
		form.classList.remove('invalid5')
		form.classList.remove('valid5')
	}
}

function validate7() {

	const form = document.getElementById('form');
	var e=document.getElementById('area');
	var value=e.options[e.selectedIndex].value;
	
	if (value!='0') 
	{
		form.classList.add('valid6')
		form.classList.remove('invalid6')
	} 
	else
	{
		form.classList.add('invalid6')
		form.classList.remove('valid6')
	}

	
}

function login(){
	const form = document.getElementById('form');
	const fname = document.getElementById('fname').value;
	const lname = document.getElementById('lname').value;
	const email = document.getElementById('email').value;
	const pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/
	const area = document.getElementById('area').value;
	const address = document.getElementById('address').value;
	const cno = document.getElementById('cno').value;
	const pattern1 = /(7|8|9)\d{9}/
	var e=document.getElementById('area');
	var value=e.options[e.selectedIndex].value;
		
	if(fname!=" " && lname!=" " && email.match(pattern) && value!='0' && address!=" " && cno.match(pattern1)){
		return true;
	}
	else{
		return false;
	}
	
	
	
}
</script>
</body>
</html>