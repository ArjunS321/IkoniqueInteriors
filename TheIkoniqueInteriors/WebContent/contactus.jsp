<%@page import="com.ikonique.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
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
 <%HttpSession httpSession = request.getSession(false);  
		  	User user = null;    
		  	if(null!=httpSession){ 
		  	   user = (User)httpSession.getAttribute("loginBean"); 
		     } 	
		  	%>
</head>
<body>
    <main>
        <!-- Section -->         
        <section class="section section-lg">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                <h1>Contact Us</h1>
                    <div class="col-md-12 col-lg-12 mb-5">
                        <!-- Contact Card -->
                        
                        <div class="card bg-primary shadow-soft border-light p-2 p-md-3 p-lg-5">
                      
                            <div class="card-header">
                                <div class="row justify-content-center">
                                    <div class="col-12">
                                        <div class="shadow-inset p-4 mb-5 rounded">
                                            <iframe class="map rounded" id="gmap_canvas" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15194.02192506155!2d72.54305455459047!3d23.081011715955118!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1830938a555e979b!2sIQONIQE%20ARCHITECTS%20%26%20INTERIORS!5e0!3m2!1sen!2sin!4v1612590626432!5m2!1sen!2sin"></iframe>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-8 text-center mb-5">
                                        <h1 class="display-2 mb-3">Get in touch today</h1>
                                        <p class="lead">Have a new project in mind? Need help with an ongoing one? Drop us a line about your project needs, we answer same day.</p>
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-4 col-lg-4 text-center">
                                        <!-- Visit Box -->
                                        <div class="icon-box mb-4">
                                            <div class="icon icon-shape shadow-soft border-light rounded-circle mb-4">
                                                <span class="fas fa-map-marker-alt"></span>
                                            </div>
                                            <h2 class="h5 icon-box-title">Visit us</h2>
                                            <span>
                                                302,Agman Complex
                                                <br>
                                                Helmet House, Mithakhali Six Road
                                                <br>
                                                Ahmedabad, Gujrat.
                                            </span>
                                        </div>
                                        <!-- End of Visit Box -->
                                    </div>
                                    <div class="col-md-4 col-lg-4 text-center">
                                        <!-- Call Box -->
                                        <div class="icon-box mb-4">
                                            <div class="icon icon-shape shadow-soft border-light rounded-circle mb-4">
                                                <span class="fas fa-headphones-alt"></span>
                                            </div>
                                            <h2 class="h5 icon-box-title">Call</h2>
                                            <span>+91-7623849580
                                            <br>
                                            +91-8488850142
                                            <br>
                                            +91-9898927073
                                            </span>
                                            <div class="text-small text-gray">
                                                Mon - Fri, 8am - 4pm
                                            </div>
                                        </div>
                                        <!-- End of Call Box -->
                                    </div>
                                    <div class="col-md-4 col-lg-4 text-center">
                                        <!-- Email Box -->
                                        <div class="icon-box mb-4">
                                            <div class="icon icon-shape shadow-soft border-light rounded-circle mb-4">
                                                <span class="far fa-paper-plane"></span>
                                            </div>
                                            <h2 class="h5 icon-box-title">Email</h2>
                                            <a href="#">ikoniqueinteriors@gmail.com</a>
                                        </div>
                                        <!-- End of Email Box -->
                                    </div>
                                </div>
                            </div>
                            <form action="SendEnquiry" id="form" method="post" onsubmit="return validate()" class="col-12 col-md-8 mx-auto">
								<div
									class="alert alert-success alert-dismissible shadow-soft fade"
									role="alert" id="model">
									<span class="alert-inner--icon"><span
										class="far fa-thumbs-up"></span></span> <span
										class="alert-inner--text"><strong>Well done!</strong>
										You successfully read this important alert message.</span>
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<!-- Form -->
                                <div class="form-group">
                                    <label for="nameInputIcon2">Your Name</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="far fa-user-circle"></span></span>
                                        </div>
                                        <input name="customername" class="form-control" id="customername" onkeyup="validate1();" placeholder="e.g. Bonnie Green" type="text" aria-label="contact name input">
                                        
                                    </div>
                                    <span class="small validate" id="p"></span>
                                </div>
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="emailInputIcon2">Your Email</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="far fa-envelope"></span></span>
                                        </div>
                                        <input name="emailid" class="form-control" id="emailid" onkeyup="validate2();" placeholder="example@company.com" type="email" aria-label="contact email input">
                                         
                                    </div>
                                    <span class="small validate" id="p1"></span>
                                </div>
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea2">Your Message...</label>
                                    <textarea name="message" class="form-control" onkeyup="validate3();" placeholder="Enter your message..." id="message" rows="4"></textarea>
                                     <span class="small validate" id="p2"></span>
                                </div>
                                <!-- End of Form -->
                           
                            <div class="card-footer px-0 ml-10">
                                <button type="submit" id="submit" class="btn btn-primary">Send message</button>
                            </div>
                             </form>
                            <br>
                            <div class="card-footer px-0" style="margin-left:29rem;">
                            <%if(user.getRole_id()==1) {%>
                                <button onclick="window.location.href='customer.jsp'" class="btn btn-primary">Home</button>
                            <%}else if(user.getRole_id()==2){ %>
                            	<button onclick="window.location.href='interiordesigner.jsp'" class="btn btn-primary">Home</button>
                            <%} %>
                            </div>
                        </div>
                        <!-- End of Contact Card -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End of section -->
    </main>
</body>
<script>
$(document).ready(function(){
// 	$("#model").hide();
	$('#model').modal('hide');
});
function validate()
{
	const form = document.getElementById('form'); 	
	var name = document.getElementById('customername').value;
	var email = document.getElementById('emailid').value;
	var message = document.getElementById('message').value;
	
	if(name == null || name == "" && email == null || email == "" && message =="" || message == null)
	{
		return false;
	}
	else
	{
		return true;
	}
}

function validate1()
{
	const form = document.getElementById('form'); 	
	var name = document.getElementById('customername').value;
	if(name == null || name == "")
	{
		$('#p').html('Name Field Is Empty').css('color', 'red');
	}
	else
	{
		$('#p').html('Name Is Valid').css('color', 'Green');
	}
}

function validate2()
{
	const form = document.getElementById('form'); 	
	var email = document.getElementById('emailid').value;
	const pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/
	if(email == null || email == "")
	{
		$('#p1').html('Email Field Is Empty').css('color', 'red');
	}
	else
	{
		if(email.match(pattern))
		{
			$('#p1').html('Email Is Valid').css('color', 'Green');
		}
		else
		{
			$('#p1').html('Email Is Not Valid').css('color', 'red');
		}
		
	}
}

function validate3()
{
	const form = document.getElementById('form'); 	
	var message = document.getElementById('message').value;
	if(message == null || message == "")
	{
		$('#p2').html('Message Field Is Empty').css('color', 'red');
	}
	else
	{
		$('#p2').html('Message Is Valid').css('color', 'Green');
	}
}

</script>
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
				
</html>