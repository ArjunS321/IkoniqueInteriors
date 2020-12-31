<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<link type="text/css" href="css/login1css.css" rel="stylesheet">

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
			<h1 align="center" style="margin-top: 50px;">Registration</h1>
				  <section class="min-vh-80 d-flex bg-primary align-items-center">
				<form action="customer.jsp" class="w-50 ml-10" class="box" class="form" id="form" method="post"  onsubmit="return login()">
						<div class="form-group mb-3 ml-10 inputBox">Choose Your Role<br>
						<div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios1" id="exampleRadios11" value="option11" checked>
                        <label class="form-check-label" for="exampleRadios11">
                        Customer
                        </label>
                        <input class="form-check-input" type="radio" name="exampleRadios1" id="exampleRadios21" value="option21">
                        <label class="form-check-label" for="exampleRadios21">
                         Interior Designer
                        </label>
                      </div>
                      </div>
				<div class="form-group mb-3 ml-10 inputBox">
						<label for="fname">First Name</label> 
						<input type="text" name="fname" class="form-control" id="fname" autocomplete="off" aria-describedby="emailHelp" onkeyup="validate2();">
						<span class="indicator3"></span>
					</div>
					<div class="form-group mb-3 ml-10 inputBox">
						<label for="lname">Last Name</label> 
						<input type="text" name="lname" class="form-control" id="lname" autocomplete="off" aria-describedby="emailHelp" onkeyup="validate3();">
						<span class="indicator4"></span>
					</div>
					<div class="form-group mb-3 ml-10 inputBox">
						<label for="add">Address</label> 
						<textarea rows="5" name="address" class="form-control" id="add" autocomplete="off" aria-describedby="emailHelp" onkeyup="validate4();"></textarea>
						<span class="indicator5"></span>
					</div>
					<div class="form-group mb-3 ml-10 inputBox">
						<label for="mobilenumber">Mobile Number</label> 
						<input type="text" name="mno" class="form-control" id="mno" autocomplete="off" aria-describedby="emailHelp" onkeyup="validate5();">
						<span class="indicator6"></span>
					</div>
					<div class="form-group mb-3 ml-10 inputBox">Gender<br>
						<div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                         Male
                        </label>
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
                          Female
                        </label>
                      </div>
                      </div>
					<div class="form-group mb-3 ml-10 inputBox">
						<label for="email">Email address</label> 
						<input type="text" name="email" class="form-control" id="email" autocomplete="off" aria-describedby="emailHelp" onkeyup="validate();">
						<span class="indicator1"></span>
					</div>
					<div class="form-group mb-3 ml-10">
						<label for="password">Password</label> 
						<input type="password" name="password" class="form-control" id="pass" onkeyup="validate1();">
						<span class="indicator2"></span>
					</div>
					<div align="center" >
					<button type="submit" name="submit" class="btn btn-primary form-group ml-10">Register</button>
					</div>
					
				<div class="register-link ml-10" align="center">
                                <h6>
                                  <a href="visitor.jsp" class="color">Skip Register</a>
                                </h6>
                </div>
				
				</form>
				</section>
				
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
		
		<script>
// 		form.addEventListener('submit',(event)=> {
// 			 event.preventDefault();
			
// 			validate();
// 			validate1();
// 		})
		
// 		const sendData =(sRate,count) =>{
// 	if(sRate == count)
// 		{	
// 			swal( "","log in is successful!!","valid"); 
// 		}
// }
	
// 		const successMsg = () => {
			
			 
// 			 var formCon =document.getElementsByClassName('form-group');

// 			var count=(formCon.length)-2;
			
// 			for(var i=0;i< formCon.length;i++)
// 				{
// 					if(formCon[i].className == 'form-group valid'){
// 						var sRate=0+i;
// 						console.log(sRate);
// 						sendData(sRate,count);
						
// 					}
// 					else
// 						{
// 							return false;
// 						}
// 				} 

			
			
			
// 		}
		
		function validate(){
				const form= document.getElementById('form');
				const email= document.getElementById('email').value;
				const pattern=/^[^ ]+@[^ ]+\.[a-z]{2,3}$/
				
				if(email.match(pattern)){
					form.classList.add('valid')
					form.classList.remove('invalid')
				}else{
					form.classList.add('invalid')
					form.classList.remove('valid')
				}
				if(email == "")
					{
					form.classList.remove('invalid')
					form.classList.remove('valid')
					}
			}
			
			function validate1(){
				const form= document.getElementById('form');
				const pass= document.getElementById('pass').value;
				const pattern1=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
				
				if(pass.match(pattern1)){
					form.classList.add('valid1')
					form.classList.remove('invalid1')
				}else{
					form.classList.add('invalid1')
					form.classList.remove('valid1')
				}
				if(pass == "")
					{
					form.classList.remove('invalid1')
					form.classList.remove('valid1')
					}
			}
			
			function login()
			{
				const form= document.getElementById('form');
				const email= document.getElementById('email').value;
				const pass= document.getElementById('pass').value;
				const pattern=/^[^ ]+@[^ ]+\.[a-z]{2,3}$/
				const pattern1=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/
				
				const fname= document.getElementById('fname').value;
				const pattern2=" ";
				
				const lname= document.getElementById('lname').value;
				const pattern3= "  ";
				
				const add= document.getElementById('add').value;
				const pattern4=" ";
				
				const mno= document.getElementById('mno').value;
				const pattern5=/(7|8|9)\d{9}/
				
				
				
				if(email.match(pattern) && pass.match(pattern1) && fname != pattern2 && lname != pattern3 && add != pattern4 && mno.match(pattern5))
					{
						
// 						window.location="/customer.jsp";
						return true;
					}
				else{
					return false;
// 					window.location="/triallogin.jsp";
				}
			}
			
			function validate2(){
				const form= document.getElementById('form');
				const fname= document.getElementById('fname').value;
				const pattern=" ";
				
				if(fname != pattern){
					form.classList.add('valid2')
					form.classList.remove('invalid2')
				}else{
					form.classList.add('invalid2')
					form.classList.remove('valid2')
				}
				if(fname == "")
					{
					form.classList.remove('invalid2')
					form.classList.remove('valid2')
					}
			}
			function validate3(){
				const form= document.getElementById('form');
				const lname= document.getElementById('lname').value;
				const pattern= "  ";
				
				if(lname != pattern){
					form.classList.add('valid3')
					form.classList.remove('invalid3')
				}else{
					form.classList.add('invalid3')
					form.classList.remove('valid3')
				}
				if(lname == "")
					{
					form.classList.remove('invalid3')
					form.classList.remove('valid3')
					}
			}
			function validate4(){
				const form= document.getElementById('form');
				const add= document.getElementById('add').value;
				const pattern=" ";
				
				if(add != pattern){
					form.classList.add('valid4')
					form.classList.remove('invalid4')
				}else{
					form.classList.add('invalid4')
					form.classList.remove('valid4')
				}
				if(add == "")
					{
					form.classList.remove('invalid4')
					form.classList.remove('valid4')
					}
			}
			function validate5(){
				const form= document.getElementById('form');
				const mno= document.getElementById('mno').value;
				const pattern=/(7|8|9)\d{9}/
				
				if(mno.match(pattern) && mno.length==10 ){
					form.classList.add('valid5')
					form.classList.remove('invalid5')
				}else{
					form.classList.add('invalid5')
					form.classList.remove('valid5')
				}
				if(mno == "")
					{
					form.classList.remove('invalid5')
					form.classList.remove('valid5')
					}
			}
		</script>
</body>


</html>