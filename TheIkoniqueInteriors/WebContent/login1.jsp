<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0">
<!-- Title Page-->
<title>Login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
	<%--  <%@include file="FontFaces.jsp"%>  --%>

<link rel="stylesheet" href="css/login1css.css" type="text/css">
 <%-- <%@include file="commoncss.jsp"%> 
  --%>
 
</head>

  <body>
  <div class="container">

<form class="box" class="form" id="form" action="customer.jsp" method="post">
  <h1>Login</h1>
  
  <div class="form-group form-control">
  <input type="text" name="email" id="email" placeholder="E-Mail" autocomplete="off"><i class="fas fa-check-circle"></i>
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
  </div>
  
  <div class="form-group form-control">
  <input type="password" name="password" id="pass" placeholder="Password"><i class="fas fa-check-circle"></i>
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
                                    <a clas="color" href="register1.jsp">Sign Up Here</a>
                                    
                                </h6>
                            </div>

</form>

</div>
  </body>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
const email=document.getElementById('email');
const pass=document.getElementById('pass');


form.addEventListener('submit',(event)=> {
	 event.preventDefault();
	
	validate();
})

const sendData =(sRate,count) =>{
	if(sRate === count)
		{	
			swal( "","log in is successful!!","success"); 
		}
}

const successMsg = () => {
		
	 
	 var formCon =document.getElementsByClassName('form-control');

	var count=(formCon.length)-2;
	
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
	 else if(!isEmail(emailVal)){
		 setErrorMsg(email,'NOT A VALID EMAIL');
		 
	 }
	 else
		 {
		 	setSuccessMsg(email);
		 }

	 if(passVal==="")
	 {
	 	setErrorMsg(pass,'PASSWORD CAN NOT BE BLANK')
	 }
 	else if(passVal.length <8){
	 	setErrorMsg(pass,'PLEASE ENTER ATLEAST 8 CHARACTER');
	 
 	}
 	else if(passVal.length >15)
 		{
 			setErrorMsg(pass,'PASSWORD CANNOT EXCEED MORE THAN 15 CHARACTERS');
 		}
	 else if(!isPass(passVal)){
	 	setErrorMsg(pass,'PASSWORD MUST CONTAIN ATLEAST ONE SPECIAL CHARACTER @,#,$,*,&,_');
	 }
 	else
	 {
	 	setSuccessMsg(pass);
	 }
	 
		successMsg();
}


//more Email validation

const isEmail = (emailVal) => {
	var atSymbol=emailVal.indexOf("@");
	if(atSymbol < 3) return false;
	var dot=emailVal.lastIndexOf('.');
	if(dot<= atSymbol + 3) return false;
	if(dot === emailVal.length -1) return false;
	
	return true;
}
const isPass = (passVal) => {
	var atSymbol=passVal.indexOf("@");
	 var atSymbol1=passVal.indexOf("#");
	var atSymbol2=passVal.indexOf("$");
	var atSymbol3=passVal.indexOf("*");
	var atSymbol4=passVal.indexOf("_");
	var atSymbol5=passVal.indexOf("&"); 
	if(atSymbol<1 && atSymbol1<1 && atSymbol2<1 && atSymbol3<1 && atSymbol4<1 && atSymbol5<1 )return false;
	if(passVal.length >15) return false;
	return true;
}

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
