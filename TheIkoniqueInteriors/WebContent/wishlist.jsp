<%@page import="com.ikonique.bean.Product"%>
<%@page import="com.ikonique.bean.Wishlist"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="ISO-8859-1">
<title>wishlist</title>
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
<jsp:include page="/SelectWishlistDetails"/>
<%List <Wishlist> wishlistList =(List)request.getAttribute("wishlistList"); %> 
<%List <Integer> wishlistint =(List)request.getAttribute("wishlistint"); %>

<jsp:include page="/SelectProductDetails"/>
<%List <Product> productList =(List)request.getAttribute("productList"); %>

</head>
<body style="background-color: #e6e7ee;">
<%@include file="customersidebar.jsp"%>
<%@include file="customerheader.jsp"%>
<div class="row mr-0 ml-2">
    <div class="col-10 ml-10">
        <div class="card shadow-soft border-light p-4 ml-5 mt-7" style="background-color: #e6e7ee;">
            <div class="row align-items-center">
                
                <%for(Product product:productList){ %>
                	<%if(wishlistint.contains(product.getProduct_id())){ %>
                <aside class="col-md-3">
                
	                    <a href="#">
	                        <img src="data:image/jpg;base64,<%=product.getProductpicString()%>" alt="premium watch">
	                    </a>
                   
                </aside>
                <div class="col-md-6">
                    <div class="info-main">
                        <a href="#" class="h5 title"> <%=product.getProduct_name() %> </a>
                       <!--  <p>Monitor your health. Track your workouts. Get the motivation you need to achieve your fitness goals. And stay connected to the people and information you care about.</p> -->
                    	<p><%= product.getProduct_desc() %></p>
                    </div>
                </div> 
                <div class="col-12 col-md-3">
                    <div class="d-flex align-items-center">
                        <span class="h5 mb-0 text-gray  mr-2">
                            $<%=product.getProduct_price() %>
                        </span>
                        
                    </div> 
                    
                    <!-- info-price-detail // -->
                    <span class="text-success small"><span class="fas fa-shipping-fast mr-1"></span>Free shipping</span>
                    <div class="mt-4">
                        <a class="btn btn-sm btn-block mb-3" style="background-color: #e6e7ee;" href="#">
                            Details
                        </a>
                        <a href="#" class="btn btn-sm btn-block" style="background-color: #e6e7ee;"><span class="fa fa-heart mr-1"></span> 
                            Wishlist
                        </a>
                    </div>
                  
                </div> 
                <%}%>
                <%} %>
            </div> 
        </div>
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