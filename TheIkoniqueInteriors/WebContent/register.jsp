<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<!-- <meta name="viewport" -->
<!-- 	content="width=device-width, initial-scale=1,maximum-scale=5, shrink-to-fit=no"> -->
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Registration</title>

<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>

</head>

<body class="animsition">
	<div class="page-wrapper">
		<div class="page-content--bge5">
			<div class="container">
				<div class="login-wrap">
					<div class="login-content">
						<div class="login-logo">
							<!--  <a href="#">
                                <img src="images/icon/clogo.png">
                            </a> -->
						</div>
						<div class="login-form">
							<form action="" method="post">
								<div class="form-group">
									<label>FirstName</label> <input
										class="au-input au-input--full" type="text" name="firstname"
										placeholder="firstname">
								</div>
								<div class="form-group">
									<label>LastName</label> <input class="au-input au-input--full"
										type="text" name="lastname" placeholder="lastname">
								</div>

								<div class="form-group">
									<label>Address</label>
									<textarea class="au-input au-input--full" rows="3" cols="30"
										name="address" border-style="solid"></textarea>
								</div>
								<div class="form-group">
									<label>ContactNo</label> <input
										class="au-input au-input--full" type="text" name="contactno"
										placeholder="contactno">
								</div>

								<div class="form-group">
									<label>Email Address</label> <input
										class="au-input au-input--full" type="email" name="email"
										placeholder="Email">
								</div>
								<div class="form-group">
									<label>Password</label> <input class="au-input au-input--full"
										type="password" name="password" placeholder="Password">
								</div>
								<div class="au-input au-input--full">
									<label>Gender<br> <input type="radio"
										name="gender" value="male">Male <input type="radio"
										name="gender" value="female">Female <input
										type="radio" name="gender" value="other">Other

									</label>
								</div>
								<div class="form-group">
									<label>Pincode</label> <input class="au-input au-input--full"
										type="text" name="password" placeholder="Pincode">
								</div>

								<div class="login-checkbox">
									<label> <input type="checkbox" name="aggree">Agree
										the terms and policy
									</label>
								</div>
								<button class="au-btn au-btn--block au-btn--green m-b-20"
									type="submit">register</button>
								<!-- <div class="social-login-content">
                                    <div class="social-button">
                                        <button class="au-btn au-btn--block au-btn--blue m-b-20">register with facebook</button>
                                        <button class="au-btn au-btn--block au-btn--blue2">register with twitter</button>
                                    </div>
                                </div> -->
							</form>
							<div class="register-link">
								<p>
									Already have account? <a href="login.jsp">Sign In</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@include file="commonjs.jsp"%>
	</form>

</body>

</html>
<!-- end document-->