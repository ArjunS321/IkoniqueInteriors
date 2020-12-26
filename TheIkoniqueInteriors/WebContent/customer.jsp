<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>

<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="animsition">
	<div class="page-wrapper">
		<%-- 		<%@include file="customermobilesidebar.jsp"%> --%>
		<%@include file="customersidebar.jsp"%>
		<%@include file="customerheader.jsp"%>
		<div class="page-container">
			<div class="main-content">
								<%@include file="slideshow.jsp" %>
				<%@include file="product.jsp"%>
			</div>
		</div>
	</div>
	<%@include file="commonjs.jsp"%>
</body>
</html>