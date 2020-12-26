<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>َLogin</title>
    <link rel="stylesheet" href="css/login1css.css">
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/styleValidation.css" type="text/css">
  </head>
  <body>
  <div class="container">

<form class="box" class="form" id="form" action="customer.jsp" method="post">
  <h1>Login</h1>
  
  <div class="form-group form-control">
  <input type="text" name="email" id="email" placeholder="E-Mail"><i class="fas fa-check-circle"></i>
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
  </div>
  
  <div class="form-group form-control">
  <input type="text" name="password" id="pass" placeholder="Password"><i class="fas fa-check-circle"></i>
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
  </div>
			<div class="login-checkbox">
				<h5> <input type="checkbox" name="remember">  Remember Me </h5><br> 
				<div class="forget">
				<h6> <a class="color" id="forget" href="forget-pass.jsp">Forgotten Password?</a> </h6>
				</div>
			</div>

			<div class="form-group form-control">
  <input type="submit" name="submit" value="Sign In" class="btn">
  </div>
 
			  <div class="register-link">
                                <h6>
                                  <a href="visitor.jsp" class="color">Skip Login</a>
                                  <br><br>
                                    Don't you have account?
                                    <a class="color" href="register.jsp">Sign Up Here</a>
                                    
                                </h6>
                            </div>

</form>

</div>
  </body>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
	const form=document.getElementById('form');
	const fname=document.getElementById('fname');
	const lname=document.getElementById('lname');
	const add=document.getElementById('add');
	const cno=document.getElementById('cno');
	const email=document.getElementById('email');
	const pass=document.getElementById('pass');
	const pcode=document.getElementById('pcode');
	
	form.addEventListener('submit',(event) => {
		 event.preventDefault();
		
		validate();
	})
	
	const sendData =(sRate,count) =>{
		if(sRate === count)
			{	alert("SuccessFull");
				swal("Good job!", "You clicked the button!", "success");
				response.sendRedirect("customer.jsp");
			}
	}
	
	const successMsg = () => {
			
		 
		 var formCon =document.getElementsByClassName('form-control');
	
		var count=(formCon.length)-1;
		
		for(var i=0;i< formCon.length;i++)
			{
				if(formCon[i].className === 'form-control success'){
					var sRate=0+i;
					console.log(sRate);
					sendData(sRate,count);
					
				}
				else
					{
						return false;
					}
			} 
	
		
		
		
	}
	
	//define the validate function
	
	const validate =()=> {
		
	
		const emailVal=email.value.trim();
		const passVal=pass.value.trim();
		
		  
			 if(emailVal ==="")
			 {
			 	setErrorMsg(email,'EMAIL CAN NOT BE BLANK')
			 }
		
		 else
			 {
			 	setSuccessMsg(email);
			 }

		 if(passVal==="")
		 {
		 	setErrorMsg(pass,'PASSWORD CAN NOT BE BLANK')
		 }
	 
	 	else
		 {
		 	setSuccessMsg(pass);
		 }
		 
			successMsg();
	}
	
	
	//more Email validation
	
	
	
	function setErrorMsg(input, errormsgs){
		const formControl=input.parentElement;
		const small=formControl.querySelector('small');
		formControl.className="form-control error";
		small.innerText=errormsgs;
	}
	
	
	
	function setSuccessMsg(input){
		const formControl=input.parentElement;
		formControl.className="form-control success";
		
		
	}

</script>
</html>
