<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualizer</title>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<link rel="stylesheet" href="appointmentcssjs/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

</head>
<%-- <%! int temp = '0'; %>
<% HttpSession httpSession2 = request.getSession(false);
	User customeruser1 = null;   
	if(null!=httpSession2){
		customeruser1 = (User)httpSession2.getAttribute("loginBean");
		if(customeruser1!=null){
			temp = '1';
		}
		
	}
	else
	{
		temp = '0';
	}
%> --%>

<body class="animsition" style="background-color: #e6e7ee;">
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

	<div class="page-wrapper">
	<%@include file="commonsidebar.jsp"%>
		<%@include file="commonheader.jsp"%> 
<%-- 	<%if(temp==1){ %>
	<%if(customeruser1.getRole_id()==1 ){ %>
		<%@include file="commonsidebar.jsp"%>
		<%@include file="commonheader.jsp"%> 
		<%} else if(customeruser1.getRole_id()==2){%>
			<%@include file="designersidebar.jsp"%>
			<%@include file="designerheader.jsp"%> 
		<%}else{%>
			<%@include file="adminsidebar.jsp"%>
			<%@include file="adminheader.jsp"%> 
		<%}%>
	<%}else{ %>
			<%@include file="visitorsidebar.jsp"%>
			<%@include file="visitorheader.jsp"%> 
		<%} %> --%>
		<div class="page-container">
			<div class="main-content">
					<div class="row ml-4">
						<div class="col-xl-12">
							<div class="section-title">
								<h2>Visualizer</h2>
							</div>
						</div>
					</div>
				<section>
					<div class="container">
					
						<div class="card" style="height: 300px; width: 500px;">
							<div class="imgBx">
								<a href="#"><img src="bg-img/Visulizer Image.jpeg"></a>
							</div>
							<div class="content">
								<div class="contentBx">
									<h3>
										BedRoom<br><br><span Style="font-size: 8mm">Visualizer</span>
									</h3>
								</div>
							</div>
						</div>
						
						<div class="card" style="height: 300px; width: 500px;">
							<div class="imgBx">
								<img src="bg-img/Kitchen.jpg">
							</div>
							<div class="content">
								<div class="contentBx">
									<h3>
										Kitchen<br><br><span Style="font-size: 8mm">Coming Soon</span>
									</h3>
								</div>
							</div>
						</div>
						
						<div class="card" style="height: 300px; width: 500px;">
							<div class="imgBx">
								<img src="bg-img/Office.jpg">
							</div>
							<div class="content">
								<div class="contentBx">
									<h3>
										Office<br><br><span Style="font-size: 8mm">Coming Soon</span>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		
	</div>
	<%@include file="commonjs.jsp"%>
</body>
</html>