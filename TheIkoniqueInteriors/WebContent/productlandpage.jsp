<%@page import="com.ikonique.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.btn:click{
	border-color: #e6e7ee;
}
/* .des */
/* { */
/* 	margin-top:-9rem !important;	 */
/* } */
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  height: 400px; 
  width: 500px;
}
.wishlist
{
	margin-left : 1000px !important;
	margin-top : -6rem !important;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%Product product = (Product)request.getAttribute("product"); %>
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
<body style="background-color:#e6e7ee">
<%@include file="customersidebar.jsp"%>
<%@include file="customerheader.jsp"%>
<div class="col-5 col-lg-11 ml-6 mt-7">
                <div class="card shadow-inset border-light p-3 ml-10" style="background-color: #e6e7ee;">
                    <!-- Content -->
                    <div class="card-body shadow-soft border border-light rounded p-4">
                        <h2 class="mb-3"><%=product.getProduct_name() %></h2>
                        <p class="mb-4 des">By Product Owner</p>
                        <img class="center rounded" src="data:image/jpg;base64,<%=product.getProductpicString() %>" alt="">
                        <div class="d-flex mb-3">
                            <span class="h5 mb-0">&#x20B9;</span> 
                            <span class="price display-3 text-dark mb-0"><%=product.getProduct_price() %></span>
                        </div>
                        <div class="product-btns wishlist">
                        	<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
                        </div>
                        <br><br>
                        <h4 class="mb-3">Product Description</h4>
                        <p class="mb-4 des"><%=product.getProduct_desc()%></p>
                        <h4 class="mb-3">Product Weight</h4>
                        <p class="mb-4"><%=product.getProduct_weight()%>  KG</p>
                       
                        	<button type="button" class="btn rounded-bottom col-lg-5 ml-6" style="background-color: #e6e7ee;">Buy Now</button>
                       	 	<button type="button" class="btn rounded-bottom ml-3 col-lg-5" style="background-color: #e6e7ee;">Add to Cart</button>
                        
                    </div>
                    <!-- End Content -->
                </div>
            </div>
</body>
<script src="neuro/vendor/jquery/dist/jquery.min.js"></script>
				<script src="neuro/vendor/popper.js/dist/umd/popper.min.js"></script>
				<script src="neuro/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
				<script src="neuro/vendor/headroom.js/dist/headroom.min.js"></script>

				<!-- Vendor JS -->
				<script src="neuro/vendor/onscreen/dist/on-screen.umd.min.js"></script>
				<script src="neuro/vendor/nouislider/distribute/nouislider.min.js"></script>
				<script
					src="neuro/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
				<script src="neuro/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
				<script src="neuro/vendor/jarallax/dist/jarallax.min.js"></script>
				<script src="neuro/vendor/jquery.counterup/jquery.counterup.min.js"></script>
				<script
					src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
				<script
					src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
				<script src="neuro/vendor/prismjs/prism.js"></script>

				<script async defer src="https://buttons.github.io/buttons.js"></script>

				<!-- Neumorphism JS -->
				<script src="neuro/assets/js/neumorphism.js"></script>
				<%@include file="commonjs.jsp"%>
</html>