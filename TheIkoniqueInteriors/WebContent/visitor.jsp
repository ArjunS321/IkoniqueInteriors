<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visitor</title>

<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>
</head>
<body class="animsition" style="background-color: #e6e7ee;">
		<%@include file="commonsidebar.jsp"%> 
		<%@include file="commonheader.jsp"%>
	<div class="page-wrapper">
		<div class="page-container">
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
			<%@include file="product.jsp"%>
		</div>
		<div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © Ikonique Interiors 2020 . All rights reserved.</p>
                                </div>
                            </div>
                        </div>
	</div>
	<%@include file="commonjs.jsp"%>
</body>
</html>