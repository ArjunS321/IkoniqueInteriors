<%@page import="java.util.List"%>
<%@page import="com.ikonique.bean.roomdesign"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualizer</title>
<style>
.font
{
	font-family: "Times New Roman", Times, serif !important;
}
</style>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<link rel="stylesheet" href="appointmentcssjs/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<jsp:include page="/SelectRoomDesign"/>
<%List<roomdesign> roomdesignsList =(List)request.getAttribute("roomdesignList"); %>
<body class="animsition" style="background-color: #e6e7ee;">
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<div class="page-wrapper" style="background-color:#e6e7ee;">
<div class="main-content">
				<div class="row" style="margin-left: 40rem;">
					<div class="col-xl-12">
						<div class="section-title mb-5 font">
							<h2>Bedroom Visualizer</h2>
						</div>
					</div>
				</div>
				<section>
					<div>
						<%
							for (roomdesign roomdesign1 : roomdesignsList) {
						%>
						<div class="card" style="height: 200px; width: 200px;">
							<div class="imgBx">
								<a href="roomdesign.jsp?x=<%=roomdesign1.getCdesign()%>"><img
									src="<%=roomdesign1.getSampleimage()%>" style="height: 200px; width: 200px;"></a>
							</div>

						</div>

						<%
							}
						%>

						<%
							String designurl;
						if (request.getParameter("x") == null) {

							designurl = "https://momento360.com/e/u/0484e7d2957c4f168db35a312556d0ce?utm_campaign=embed&utm_source=other&heading=0&pitch=0&field-of-view=75&size=medium";
						} else {
							designurl = request.getParameter("x");

						}
						%>

						<div class="grid-item" style="margin-left:15rem; margin-top:-86rem;">
							<iframe height="700" width="1200" src="<%=designurl%>"></iframe>
						</div>
					</div>
				</section>
			</div>
		</div>
	<%@include file="commonjs.jsp"%>
</body>
</html>