<%@page import="com.ikonique.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%!int temp = '0';%>
<%
	HttpSession httpSession = request.getSession(false);
User userheader = null;
if (null != httpSession) {
	userheader = (User) httpSession.getAttribute("loginBean");
	if(userheader!=null){
		temp = '1';
	}
	
} else {
	temp = '0';
}
%>
<meta charset="ISO-8859-1">
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
<link type="text/css" href="css/login1css.css" rel="stylesheet">

<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css1/product.css">
<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">
</head>
<body>
	<%
		if (temp == '1') {
	%>
	<%
		if (userheader.getRole_id() == 1) {
	%>
	<header class="header-desktop" style="background-color: #e6e7ee;">
		<!-- <link data-require="sweet-alert@*" data-semver="0.4.2" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" /> -->
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="header-wrap" style="position: sticky; z-index: 9">
					<form id="from1" class="form-header" action="" method="POST">
						<input class="au-input au-input--xl" type="text" name="search"
							placeholder="Search Products...." />
						<button class="au-btn--submit" type="submit">
							<i class="zmdi zmdi-search"></i>
						</button>
					</form>
					<div class="header-button">
						<div class="noti-wrap">
							<div class="noti__item">
								<a href="cart.jsp"><i class="fas fa-shopping-cart"></i> </a>
							</div>
							<div class="noti__item js-item-menu">
								<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
								<div class="notifi-dropdown js-dropdown">
									<div class="notifi__title">
										<p>You have 3 Notifications</p>
									</div>
									<div class="notifi__item">
										<div class="bg-c1 img-cir img-40">
											<i class="zmdi zmdi-email-open"></i>
										</div>
										<div class="content">
											<p>You got a email notification</p>
											<span class="date">April 12, 2018 06:50</span>
										</div>
									</div>
									<div class="notifi__item">
										<div class="bg-c2 img-cir img-40">
											<i class="zmdi zmdi-account-box"></i>
										</div>
										<div class="content">
											<p>Your account has been blocked</p>
											<span class="date">April 12, 2018 06:50</span>
										</div>
									</div>
									<div class="notifi__item">
										<div class="bg-c3 img-cir img-40">
											<i class="zmdi zmdi-file-text"></i>
										</div>

										<div class="content">
											<p>You got a new file</p>
											<span class="date">April 12, 2018 06:50</span>
										</div>
									</div>
									<div class="notifi__footer">
										<a href="#">All notifications</a>
									</div>
								</div>
							</div>
						</div>
						<div class="account-wrap">
							<div class="account-item clearfix js-item-menu">
								<div class="image">
									<%
										if (userheader.getUserProfilepicString() != null) {
									%>
									<img
										src="data:image/jpg;base64,<%=userheader.getUserProfilepicString()%>" />
									<%
										} else {
									%>
									<img src="bg-img/Blank-Photo.png">
									<%
										}
									%>
								</div>
								<div class="content">
									<a class="js-acc-btn" href="#"><%=userheader.getFirstname()%>
										<%=userheader.getLastname()%></a>
								</div>
								<div class="account-dropdown js-dropdown">
									<div class="info clearfix">
										<div class="image">
											<%
												if (userheader.getUserProfilepicString() != null) {
											%>
											<a href="editpro.jsp"> <img
												src="data:image/jpg;base64,<%=userheader.getUserProfilepicString()%>" />
											</a>
											<%
												} else {
											%>
											<a href="editpro.jsp"> <img src="bg-img/Blank-Photo.png">
											</a>
											<%
												}
											%>
										</div>
										<div class="content">
											<h5 class="name">
												<a href="editpro.jsp"><%=userheader.getFirstname()%> <%=userheader.getLastname()%></a>
											</h5>
											<span class="email"><%=userheader.getEmail()%></span>
										</div>

									</div>
									<div class="account-dropdown__body">
										<div class="account-dropdown__item">
											<a href="editpro.jsp"> <i class="far fa-edit"></i>Edit
												Profile
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="DeleteUserRecord" id="click"
												onclick="return confirm('Are You Sure You Want To Delete Acoount?')">
												<i class="fas fa-user-minus"></i>Delete Account?
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="changepassword.jsp"> <i class="fas fa-key"></i>Change
												Password
											</a>
										</div>
									</div>
									<div class="account-dropdown__footer">
										<a href="LogoutServlet"> <i class="fas fa-sign-out-alt"></i>Logout
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<%
		} else if (userheader.getRole_id() == 2) {
	%>
	<header class="header-desktop" style="background-color: #e6e7ee;">
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="header-wrap" style="position: sticky; z-index: 9">
					<form id="from1" class="form-header" action="" method="POST">
						
					</form>
					<div class="header-button">
						
						<div class="account-wrap">
							<div class="account-item clearfix js-item-menu">
								<div class="image">
									<%
										if (userheader.getUserProfilepicString() != null) {
									%>
									<img
										src="data:image/jpg;base64,<%=userheader.getUserProfilepicString()%>" />
									<%
										} else {
									%>
									<img src="bg-img/Blank-Photo.png">
									<%
										}
									%>
								</div>
								<div class="content">
									<a class="js-acc-btn" href="#"><%=userheader.getFirstname()%>
										<%=userheader.getLastname()%></a>
								</div>
								<div class="account-dropdown js-dropdown">
									<div class="info clearfix">
										<div class="image">
											<%
												if (userheader.getUserProfilepicString() != null) {
											%>
											<a href="editpro.jsp"> <img
												src="data:image/jpg;base64,<%=userheader.getUserProfilepicString()%>" />
											</a>
											<%
												} else {
											%>
											<a href="editpro.jsp"> <img src="bg-img/Blank-Photo.png">
											</a>
											<%
												}
											%>
										</div>
										<div class="content">
											<h5 class="name">
												<a href="editpro.jsp"><%=userheader.getFirstname()%> <%=userheader.getLastname()%></a>
											</h5>
											<span class="email"><%=userheader.getEmail()%></span>
										</div>

									</div>
									<div class="account-dropdown__body">
										<div class="account-dropdown__item">
											<a href="editpro.jsp"> <i class="far fa-edit"></i>Edit
												Profile
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="DeleteUserRecord" id="click"
												onclick="return confirm('Are You Sure You Want To Delete Acoount?')">
												<i class="fas fa-user-minus"></i>Delete Account?
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="changepassword.jsp"> <i class="fas fa-key"></i>Change
												Password
											</a>
										</div>
									</div>
									<div class="account-dropdown__footer">
										<a href="LogoutServlet"> <i class="fas fa-sign-out-alt"></i>Logout
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<%
		} else {
	%>
	<header class="header-desktop" style="background-color: #e6e7ee;">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="header-wrap" style="position: sticky; z-index: 9">
					<form class="form-header" action="" method="POST">
						<input class="au-input au-input--xl" type="text" name="search"
							placeholder="Search Products...." />
						<button class="au-btn--submit" type="submit">
							<i class="zmdi zmdi-search"></i>
						</button>
					</form>
					<div class="header-button">
						<div class="noti-wrap">
							<div class="noti__item js-item-menu">
								<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span>
								<div class="mess-dropdown js-dropdown">
									<div class="mess__title">
										<p>You have 2 news message</p>
									</div>
									<div class="mess__item">
										<div class="image img-cir img-40">
											<img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
										</div>
										<div class="content">
											<h6>Michelle Moreno</h6>
											<p>Have sent a photo</p>
											<span class="time">3 min ago</span>
										</div>
									</div>
									<div class="mess__item">
										<div class="image img-cir img-40">
											<img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
										</div>
										<div class="content">
											<h6>Diane Myers</h6>
											<p>You are now connected on message</p>
											<span class="time">Yesterday</span>
										</div>
									</div>
									<div class="mess__footer">
										<a href="#">View all messages</a>
									</div>
								</div>
							</div>
							<div class="noti__item js-item-menu">
								<i class="zmdi zmdi-email"></i> <span class="quantity">1</span>
								<div class="email-dropdown js-dropdown">
									<div class="email__title">
										<p>You have 3 New Emails</p>
									</div>
									<div class="email__item">
										<div class="image img-cir img-40">
											<img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
										</div>
										<div class="content">
											<p>Meeting about new dashboard...</p>
											<span>Cynthia Harvey, 3 min ago</span>
										</div>
									</div>
									<div class="email__item">
										<div class="image img-cir img-40">
											<img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
										</div>
										<div class="content">
											<p>Meeting about new dashboard...</p>
											<span>Cynthia Harvey, Yesterday</span>
										</div>
									</div>
									<div class="email__item">
										<div class="image img-cir img-40">
											<img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
										</div>
										<div class="content">
											<p>Meeting about new dashboard...</p>
											<span>Cynthia Harvey, April 12,,2018</span>
										</div>
									</div>
									<div class="email__footer">
										<a href="#">See all emails</a>
									</div>
								</div>
							</div>
							<div class="noti__item js-item-menu">
								<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
								<div class="notifi-dropdown js-dropdown">
									<div class="notifi__title">
										<p>You have 3 Notifications</p>
									</div>
									<div class="notifi__item">
										<div class="bg-c1 img-cir img-40">
											<i class="zmdi zmdi-email-open"></i>
										</div>
										<div class="content">
											<p>You got a email notification</p>
											<span class="date">April 12, 2018 06:50</span>
										</div>
									</div>
									<div class="notifi__item">
										<div class="bg-c2 img-cir img-40">
											<i class="zmdi zmdi-account-box"></i>
										</div>
										<div class="content">
											<p>Your account has been blocked</p>
											<span class="date">April 12, 2018 06:50</span>
										</div>
									</div>
									<div class="notifi__item">
										<div class="bg-c3 img-cir img-40">
											<i class="zmdi zmdi-file-text"></i>
										</div>
										<div class="content">
											<p>You got a new file</p>
											<span class="date">April 12, 2018 06:50</span>
										</div>
									</div>
									<div class="notifi__footer">
										<a href="#">All notifications</a>
									</div>
								</div>
							</div>
						</div>
						<div class="account-wrap">
							<div class="account-item clearfix js-item-menu">
								<div class="image">
									<%
										if (userheader.getUserProfilepicString() != null) {
									%>
									<img
										src="data:image/jpg;base64,<%=userheader.getUserProfilepicString()%>" />
									<%
										} else {
									%>
									<img src="bg-img/Blank-Photo.png">
									<%
										}
									%>
								</div>
								<div class="content">
									<a class="js-acc-btn" href="#"><%=userheader.getFirstname()%>
										<%=userheader.getLastname()%></a>
								</div>
								<div class="account-dropdown js-dropdown">
									<div class="info clearfix">
										<div class="image">
											<%
												if (userheader.getUserProfilepicString() != null) {
											%>
											<a href="editpro.jsp"> <img
												src="data:image/jpg;base64,<%=userheader.getUserProfilepicString()%>" />
											</a>
											<%
												} else {
											%>
											<a href="editpro.jsp"> <img src="bg-img/Blank-Photo.png">
											</a>
											<%
												}
											%>
										</div>
										<div class="content">
											<h5 class="name">
												<a href="editpro.jsp"><%=userheader.getFirstname()%> <%=userheader.getLastname()%></a>
											</h5>
											<span class="email"><%=userheader.getEmail()%></span>
										</div>
									</div>
									<div class="account-dropdown__body">
										<div class="account-dropdown__item">
											<a href="editpro.jsp"> <i class="zmdi zmdi-account"></i>Edit
												Profile
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="changepassword.jsp"> <i class="fas fa-key"></i>Change
												Password
											</a>
										</div>
									</div>
									<div class="account-dropdown__footer">
										<a href="login.jsp"> <i class="zmdi zmdi-power"></i>Logout
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<%
		}
	%>
	<%
		} else {
	%>
	<header class="header-desktop" style="background-color: #e6e7ee;">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="header-wrap">
					<form class="form-header" action="" method="POST">
						<input class="au-input au-input--xl" type="text" name="search"
							placeholder="Search Products...." />
						<button class="au-btn--submit" type="submit">
							<i class="zmdi zmdi-search"></i>
						</button>
					</form>
					<div class="">
					<button type="submit" name="submit" onclick="location.href='register.jsp';"
							class="btn ml-9">Register</button>
						<button type="submit" name="submit" onclick="location.href='login.jsp';"
							class="btn ml-1">login</button>
					</div>
				</div>
			</div>
		</div>
	</header>
	<%} %>
</body>
<%@include file="commonjs.jsp"%>
</html>