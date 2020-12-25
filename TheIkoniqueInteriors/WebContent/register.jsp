<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0">
<!-- <meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">
 -->
<!-- Title Page-->
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
	<%--  <%@include file="FontFaces.jsp"%>  --%>

<link rel="stylesheet" href="css/styleValidation.css" type="text/css">
<%--  <%@include file="commoncss.jsp"%> --%> 
 
 
</head>

<body>
	<div class="container">
	
		
		<div class="header">
		<h2>
			<a href="#"> <img src="images/icon/logo.png"
				alt="The Ikonique Interiors"> <br>
			</a>
			</h2>
		</div>

		<form action="index.jsp" class="form " id="form" method="post">

			<div class="form-group form-control">
				<label>FirstName</label> <input type="text" name="firstname"
					id="fname" placeholder="firstname" autocomplete="off"> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div>
			<div class="form-group form-control">
				<label>LastName</label> <input type="text" name="lastname"
					id="lname" placeholder="lasttname"> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div>
			<div class="form-group form-control">
				<!-- <label>Address</label> <input type="text" name="firstname" id="add"
					placeholder="address"> <i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small>
				
 -->
 			<label>Address</label><br>
 			<textarea rows="3" cols="50"  id="add" name="address"></textarea>
 			<i class="fas fa-check-circle"></i>
				<i class="fas fa-exclamation-circle"></i> <small>Error Msg</small>
				
							
			</div>
			<div class="form-group form-control">
				<label>ContactNo</label> <input type="number" name="contactno"
					id="cno" placeholder="contactno"> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div>
			<div class="form-group form-control">
				<label>Email</label> <input type="text" name="email" id="email"
					placeholder="Email"> <i class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div>
			<div class="form-group form-control">
				<label>Password</label> <input type="text" name="password"
					id="pass" placeholder="password"> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div>
			<!-- <div class="form-group form-control">
				<label>Gender</label><br>
					Male<input type="radio" name="gender" value="male" id="rmale">
					Female <input type="radio" name="gender" value="female" id="rfemale">
					Other<input type="radio" name="gender" value="other" id="rother">
					 <i class="fas fa-check-circle"></i> 
					 <i class="fas fa-exclamation-circle"></i> 
					 <small>Error Msg</small>
					 
					

			</div> -->
			<div class="form-group form-control">
				<label>Pincode</label> <input type="number" name="pincode"
					id="pcode" placeholder="pincode"> <i
					class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div><br>
			<div class="login-checkbox">
									<label> <input type="checkbox" name="aggree">Agree
										the terms and policy
									</label>
								</div>
		<!-- <div class="social-login-content">
                                    <div class="social-button">
                                        <button class="au-btn au-btn--block au-btn--blue m-b-20">register with facebook</button>
                                        <button class="au-btn au-btn--block au-btn--blue2">register with twitter</button>
                                    </div>
                                </div> -->
							<div class="form-group form-control">
								<input type="submit" value="Register" class="btn" name="submit">
							</div>
							<div class="register-link">
								<p>
									Already have an account? <a href="login.jsp">Sign In</a>
								</p>
							</div>
			

	
	

<%-- 
	 <%@include file="commonjs.jsp"%>   --%>
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
	
	form.addEventListener('submit',(event)=> {
		 event.preventDefault();
		
		validate();
	})
	
	const sendData =(sRate,count) =>{
		if(sRate === count)
			{	alert("SuccessFull");
				swal("Good job!", "You clicked the button!", "success");
				response.sendRedirect("index.jsp");
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
<!-- end document-->