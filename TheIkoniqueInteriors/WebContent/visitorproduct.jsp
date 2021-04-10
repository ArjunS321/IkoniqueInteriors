<%@page import="com.ikonique.bean.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="/SelectProductDetails"/>
<%List <Product> productList =(List)request.getAttribute("productList"); %>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<link rel="stylesheet" href="css1/Fontawesome.css">
<link rel="stylesheet" href="css1/product.css">
</head>
<body class="animsition" style="background-color: #e6e7ee;">
			<div id="Carousel2"
					class="carousel slide shadow-soft border border-light p-4 rounded mt-5"
					data-ride="carousel">
					<div class="carousel-inner rounded">
						<div class="carousel-item active">
							<img class="d-block w-150 h-50"
								src="assets/img/slideshow image.jpg" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-150 h-50"
								src="assets/img/slideshow image.jpg" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-150 h-50"
								src="assets/img/slideshow image.jpg" alt="Third slide">
						</div>
					</div>
<!-- 					<a class="carousel-control-prev" href="#Carousel2" role="button" -->
<!-- 						data-slide="prev"> 						<span class="carousel-control-prev-icon" aria-hidden="true"></span>  -->
<!-- 												<span class="sr-only">Previous</span> -->
<!-- 					</a> <a class="carousel-control-next" href="#Carousel2" role="button" -->
<!-- 						data-slide="next"> 					 <span class="carousel-control-next-icon" -->
<!-- 												aria-hidden="true"></span> <span class="sr-only">Next</span> -->
<!-- 					</a> -->
				</div>
	<section class="section-bg" style="background-color: #e6e7ee;">
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="section-title">
					<h2>Products</h2>
				</div>
			</div>
		</div>
		<div class="row" >
		<%for(Product product : productList) {%>
			<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
				<div class="single-product">
					<div class="product-thumb">
						<a href="SelectProductLandDetails?productId=<%=product.getProduct_id()%>">
<%-- 						 <input type="text" name="pid" id="pid" value="<%=product.getProduct_id() %>"> --%>
						 <img src="data:image/jpg;base64,<%=product.getProductpicString() %>" alt="">
						</a>
					</div>
					<div class="product-title">
						<h3>
							<a href="SelectProductLandDetails?productId=<%=product.getProduct_id()%>"><%=product.getProduct_name() %></a>
						</h3>
					</div>
					<div class="product-btns">
						<a href="SelectProductLandDetails?productId=<%=product.getProduct_id()%>" class="btn-small mr-2">&#x20B9;<%=product.getProduct_price() %></a>
						<a  class="btn-round mr-2"><i class="fa fa-shopping-cart" id=""></i></a> 
						<a class="btn-round"><i id="" class="fa fa-heart"></i></a>
					</div>
				</div>
			</div>
			<%} %>
		</div>
	</div>
</section>
</body>
</html>