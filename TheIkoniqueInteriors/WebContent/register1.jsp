<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0">

<!-- Title Page-->
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
	<%--  <%@include file="FontFaces.jsp"%>  --%>
<link rel="stylesheet" href="css/login1css.css" type="text/css">


<!-- <link rel="stylesheet" href="css/styleValidation.css" type="text/css"> -->
<%--  <%@include file="commoncss.jsp"%> --%> 
 
 
</head>



<body>
<div class="container">
	
	<form class="box" action="customer.jsp" method="post" class="form" id="form">
		<div class="header">
		<h2>Registration</h2>
		</div>
		
		<div class="form-group form-control">
		<input type="text" placeholder="First Name" name="firstname" id="fname" autocomplete="off"> <i class="fas fa-check-circle"></i>
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
		</div>
		
		<div class="form-group form-control">
		<input type="text" name="lastname" placeholder="Last Name" id="lname" autocomplete="off"><i class="fas fa-check-circle"></i> 
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
		</div>
		
		<div class="form-group form-control form-size">
		<textarea rows="5"  name="address" id="add" placeholder="Address" autocomplete="off"></textarea>
		<i class="fas fa-check-circle"></i> 
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
		</div>
		
		<div class="form-group form-control">
		<input type="number" name="contactno" id="cno" placeholder="Contact No." autocomplete="off"><i class="fas fa-check-circle"></i> 
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small> 
		 </div>
		 
		 <div class="form-group form-control">
		<input type="text" name="email" id="email" placeholder="E-Mail" autocomplete="off"><i class="fas fa-check-circle"></i> 
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small>  
		</div>
		
		<div class="form-group form-control">
		<input type="number" name="pincode" id="pcode" placeholder="Pincode" autocomplete="off"><i class="fas fa-check-circle"></i> 
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small>
		</div>
		
		<div class="form-group form-control">
		<input type="password" name="password" id="pass" placeholder="Password" autocomplete="off"><i class="fas fa-check-circle"></i> 
		<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small>
		 </div>
		 
		 <input type="submit" name="submit" value="Register">
		 
		 <div class="color">
								<p>
									Already have an account? <a href="login1.jsp">Sign In</a>
								</p>
							</div>
	</form>
</div>
<%@include file="commonjs.jsp"%>
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
	
	form.addEventListener('submit',(event)=> {
		 event.preventDefault();
		
		validate();
	})
	
	const sendData =(sRate,count) =>{
		if(sRate === count)
			{	
				swal("", "Registration Successfull!!", "success");
				
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
		
		const fnameVal=fname.value.trim(); 
		const lnameVal=lname.value.trim();
		 const addVal=add.value.trim();
		const cnoVal=cno.value.trim();
		const emailVal=email.value.trim();
		const passVal=pass.value.trim();
		const pcodeVal=pcode.value.trim();
		
		  
		//validate FirstName
		if(fnameVal ==="")
			{
				setErrorMsg(fname,'FIRST NAME CAN NOT BE BLANK');
				
			}
		else if(fnameVal.length <3)
			{
				setErrorMsg(fname,'PLEASE ENTER ATLEAST 2 CHARACTER');
			}
		else
			{
				setSuccessMsg(fname);
			}
		 
		 if(lnameVal ==="")
			{
				setErrorMsg(lname,'LAST NAME CANNOT BE BLANK');
				
			}
		else if(lnameVal.length <3)
			{
				setErrorMsg(lname,'PLEASE ENTER ATLEAST 2 CHARACTER ');
			}
		else
			{
				setSuccessMsg(lname);
			}
	
		 if(addVal ==="")
			{
				setErrorMsg(add,'ADRESS CANNOT BE BLANK');
				
			}
		else if(addVal.length <10)
			{
				setErrorMsg(add,'PLEASE ENTER ATLEAST 10 CHARACTER ');
			}
		else
			{
				setSuccessMsg(add);
			}
		 if(cnoVal ==="")
			{
				setErrorMsg(cno,'PLEASE ENTER CONTACT NUMBER');
				
			}
		else if(cnoVal.length != 10 )
			{
				setErrorMsg(cno,'CONTACT NUMBER MUST HAVE 10 CHARACTER');
			}
	
		else
			{
				setSuccessMsg(cno);
			}
		 
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
		 
		 if(pcodeVal==="")
		 {
		 	setErrorMsg(pcode,'PINCODE CAN NOT BE BLANK')
		 }
	 	else if(pcodeVal.length != 6){
		 	setErrorMsg(pcode,'PINCODE MUST HAVE 6 DIGIT');
		 
	 	}
		 else
		 {
		 	setSuccessMsg(pcode);
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
