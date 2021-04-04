<%@page import="com.ikonique.bean.Wishlist"%>
<%@page import="com.ikonique.bean.Offer"%>
<%@page import="com.ikonique.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
#form .indicator1
{
	position: absolute;
	top: 50px;
	left : 44rem;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid .indicator1
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid .indicator1
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator2
{
	position: absolute;
	top: 50px;
	left : 44rem;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid1 .indicator2
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid1 .indicator2
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator3
{
	position: absolute;
	top: 50px;
	left : 44rem;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid2 .indicator3
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid2 .indicator3
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator4
{
	position: absolute;
	top: 50px;
	left : 44rem;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid3 .indicator4
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid3 .indicator4
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator5
{
	position: absolute;
	top:20px;
	left:23rem;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid4 .indicator5
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid4 .indicator5
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
textarea {
    overflow: auto;
    resize: none;
}
.form-control1
{
	font-size: 1rem;
    border-radius: 0.55rem;
    box-shadow: inset 2px 2px 5px #b8b9be, inset -3px -3px 7px #ffffff;
    padding: 0.6rem 0.75rem;
}
.form-control2
{
	display: block;
    width: 100%;
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
.btn {
    position: relative;
    transition: all 0.2s ease;
    letter-spacing: 0.025em;
    font-size: 1rem;
    border-color: #D1D9E6;
    box-shadow: 3px 3px 6px #b8b9be, -3px -3px 6px #ffffff;  
    display: inline-block;
    font-weight: 400;
    color: #44476A;
    text-align: center;
    vertical-align: middle;
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 0.0625rem solid transparent;
    padding: 0.55rem 0.95rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.55rem;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.btn-primary1 {
    color: #31344b;
    background-color: #e6e7ee;
    border-color: #e6e7ee;
    box-shadow: inset 0 1px 0 rgb(236 240 243 / 15%), 0 1px 1px rgb(38 40 51 / 8%);
}

/* .btn:focus {  */
/*    outline: #D1D9E6 !important;   */
/*    box-shadow: none !important;    */
/*  }  */

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	height: 400px;
	width: 500px;
}

.wishlist {
	margin-left: 1000px !important;
	margin-top: -6rem !important;
}

.datepicker1 {
    border-radius: 4px;
    direction: ltr;
}
</style>
<meta charset="ISO-8859-1">
<title>Book Interior Designer</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />

<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css1/product.css">
<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">

</head>
<body style="background-color: #e6e7ee">
	<%@include file="customersidebar.jsp"%>
	<%@include file="customerheader.jsp"%>
	<div class="col-5 col-lg-11 ml-6 mt-7">
		<div class="card shadow-inset border-light p-3 ml-10"
			style="background-color: #e6e7ee;">
			<!-- Content -->
		<div class="card-body shadow-soft border border-light rounded p-4">
			<div class="ml-10 col-12 col-lg-6">
                <div class="card shadow-inset border-light p-3" style="background-color: #e6e7ee;">
                    <!-- Content -->
                    <div class="card-body shadow-soft border border-light rounded p-4">
                        <h4 class="mb-3">Book Me</h4>
                        <div class="d-flex mb-3"> 
                            <span class="h5 mb-0">$</span> 
                            <span class="price display-2 text-dark mb-0">199</span> 
                        </div>
                        <p class="mb-4">So, get Website Backup and stop worrying about data loss. Get back to doing what you do best – running your business and making money.</p>
                        <a href="#" type="button" class="btn col-lg-4 rounded-bottom">Back</a>
                        <button id="book" type="button" class="ml-7 btn col-lg-4 rounded-bottom">Book Me</button>
                    </div>
                    <!-- End Content -->
                </div>
            </div>
            <br><br>
            <form align="center" id="form" name="form">
            <h1>Enter Details</h1>
            <br>
					<div class="form-group mb-3 inputBox">
						<label for="fname">First Name</label><br><input type="text"
							name="fname" style="background-color: #e6e7ee;" class="form-control1 col-lg-5" id="fname" autocomplete="off"
							aria-describedby="emailHelp" onkeyup="validate1();"> <span
							class="indicator1"></span>
					</div>
					<div class="form-group mb-3 inputBox">
						<label for="lname">Last Name</label><br><input type="text"
							name="lname"  style="background-color: #e6e7ee;" class="form-control1 col-lg-5" id="lname" autocomplete="off"
							aria-describedby="emailHelp" onkeyup="validate2();"> <span
							class="indicator2"></span>
					</div>
					<div class="form-group mb-3 inputBox">
						<label for="add">Address</label><br>
						<textarea rows="5" name="address"  style="background-color: #e6e7ee;" class="form-control1 col-lg-5" id="add"
							autocomplete="off" aria-describedby="emailHelp"
							onkeyup="validate3();"></textarea>
						<span class="indicator3"></span>
					</div>
					<div class="form-group mb-3 inputBox">
						<label for="mobilenumber">Mobile Number</label><br><input type="text"
							name="mno"  style="background-color: #e6e7ee;" class="form-control1 col-lg-5" id="mno" autocomplete="off"
							aria-describedby="emailHelp" onkeyup="validate4();"
							maxLength="10" onkeypress="return onlyNumberKey(event)">
						<span class="indicator4"></span>
					</div>
					<div class="form-group col-lg-5 date" style="margin-left:300px;">
						<label class="h6" for="exampleInputDate1">Choose a date</label>
						<div class="input-group mb-4">
							<div class="input-group-prepend">
								<span class="input-group-text"><span
									class="far fa-calendar-alt"></span></span>
							</div>
							<input style="background-color: #e6e7ee; border-radius: 0.55rem;
   	 						box-shadow: inset 2px 2px 5px #b8b9be, inset -3px -3px 7px #ffffff;" 
   	 						class="form-control datepicker1" id="exampleInputDate1"
								placeholder="Select date" type="text"
								aria-label="Date with icon left" onkeyup="validate5();">
								<span class="indicator5"></span>
						</div>
					</div>
					<button type="button" class="btn col-lg-4 rounded-bottom">Pay Now</button>
				</form>
		</div>
			<!-- End Content -->
		</div>
	</div>
</body>
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
<script src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script
	src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="neuro/vendor/prismjs/prism.js"></script>

<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Neumorphism JS -->
<script src="neuro/assets/js/neumorphism.js"></script>
<%@include file="commonjs.jsp"%>
<script>
$(document).ready(function () {
	$("#form").hide();
});
$("#book").click(function(){
	$("#form").show();
});
</script>
</html>