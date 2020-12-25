<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">
 -->
<!-- Title Page-->
<title>Login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<%--  <%@include file="FontFaces.jsp"%>  --%>

<link rel="stylesheet" href="css/styleValidation.css" type="text/css">
<%-- <%@include file="commoncss.jsp"%> 
  --%>

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
				<label>Email</label> <input type="text" name="email" id="email"
					placeholder="Email"> <i class="fas fa-check-circle"></i> <i
					class="fas fa-exclamation-circle"></i> <small>Error Msg</small>

			</div>
			<br>

			<div class="form-group form-control">
				<input type="submit" value="Submit" class="btn" name="submit">
			</div>


			<%-- 
	 <%@include file="commonjs.jsp"%>   --%>
		</form>

	</div>
</body>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
	const form=document.getElementById('form');
	const email=document.getElementById('email');
	
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
		
	
		const emailVal=email.value.trim();
		
		
		  
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