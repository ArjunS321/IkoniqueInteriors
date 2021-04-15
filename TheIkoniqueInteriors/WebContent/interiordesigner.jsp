<%@page import="com.ikonique.bean.Booking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Interior Designer</title>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<%@page import="com.ikonique.bean.User"%>

<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

<link rel="stylesheet" type="text/css" href="css/style.css">
<% HttpSession httpSession1 = request.getSession(false);
	User user = null;   
	if(null!=httpSession1){
	   user = (User)httpSession1.getAttribute("loginBean");
   }
%>
</head>
<jsp:include page="/SelectBookingDetails"/>
<%List<Booking> bookinglist =(List)request.getAttribute("bookinglist"); %>

<body class="animsition" style="background-color: #e6e7ee;">
	<div class="page-wrapper" style="background-color: #e6e7ee;">
		<%@include file="commonsidebar.jsp"%>
		<%@include file="commonheader.jsp"%>
		<div class="main-content" style="margin-left:17rem; background-color: #e6e7ee;">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                    <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">Interior Designer Dashboard</h2>
                                </div>
                            </div>
                        </div>
                    <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box ">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                            <%int totalbooking=0; %>
                                            <%for(Booking booking: bookinglist){ %>
                                            <%if(user.getUser_id()==booking.getDesignerid()){ %>
                                            	<%totalbooking=totalbooking+1; %>
                                            <%} %>
                                            <%} %>
                                                <h2><%=totalbooking %></h2>
                                                <span>Booking Members</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box ">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2>1,500</h2>
                                                <span>My Design items</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box ">
                                            <div class="icon">
                                                <i class="zmdi zmdi-calendar-note"></i>
                                            </div>
                                            <div class="text">
                                                <h2>200</h2>
                                                <span>Number Of Project </span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box ">
                                            <div class="icon">
                                                <i class="fas fa-inr"></i>
                                            </div>
                                            <div class="text">
                                            <%int earnings1=0; %>
                                            <%for(Booking booking:bookinglist) {%>
                                            	<%if(user.getUser_id()==booking.getDesignerid()){ %>
                                            		<%if(booking.getPaymentstatus().equalsIgnoreCase("success")) {%>
                                            			<%earnings1=earnings1+1; %>                                         			
                                            		<%} %>
                                            	<%} %>
                                            <%} %>
                                            
                                            <input type="hidden" value="<%=user.getVisitingfees() %>" id="vfees">
                                            <input type="hidden" value="<%=earnings1 %>" id="earnings">
                                                <h2 id="a1"></h2>
                                                <span>total earnings</span>
                                                
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="au-card recent-report" style="background-color: #e6e7ee;">
                                    <div class="au-card-inner">
                                        <h3 class="title-2">recent reports</h3>
                                        <div class="chart-info">
                                            <div class="chart-info__left">
                                                <div class="chart-note">
                                                    <span class="dot dot--blue"></span>
                                                    <span>products</span>
                                                </div>
                                                <div class="chart-note mr-0">
                                                    <span class="dot dot--green"></span>
                                                    <span>Bookings</span>
                                                </div>
                                            </div>
                                            <div class="chart-info__right">
                                                <div class="chart-statis">
                                                    <span class="index incre">
                                                        <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                    <span class="label">products</span>
                                                </div>
                                                <div class="chart-statis mr-0">
                                                    <span class="index decre">
                                                        <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                    <span class="label">Booking</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="recent-report__chart">
                                            <canvas id="recent-rep-chart"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="au-card chart-percent-card" style="background-color: #e6e7ee;">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 tm-b-5">char by %</h3>
                                        <div class="row no-gutters">
                                            <div class="col-xl-6">
                                                <div class="chart-note-wrap">
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--blue"></span>
                                                        <span>products</span>
                                                    </div>
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--red"></span>
                                                        <span>Booking</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="percent-chart">
                                                    <canvas id="percent-chart"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25">Customer's Booking</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>date</th>
                                                <th>order ID</th>
                                                <th>name</th>
                                                <th class="text-right">price</th>
                                                <th class="text-right">quantity</th>
                                                <th class="text-right">total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2018-09-29 05:57</td>
                                                <td>100398</td>
                                                <td>iPhone X 64Gb Grey</td>
                                                <td class="text-right">&#x20B9;999.00</td>
                                                <td class="text-right">1</td>
                                                <td class="text-right">&#x20B9;999.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-28 01:22</td>
                                                <td>100397</td>
                                                <td>Samsung S8 Black</td>
                                                <td class="text-right">&#x20B9;756.00</td>
                                                <td class="text-right">1</td>
                                                <td class="text-right">&#x20B9;756.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-27 02:12</td>
                                                <td>100396</td>
                                                <td>Game Console Controller</td>
                                                <td class="text-right">&#x20B9;22.00</td>
                                                <td class="text-right">2</td>
                                                <td class="text-right">&#x20B9;44.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-26 23:06</td>
                                                <td>100395</td>
                                                <td>iPhone X 256Gb Black</td>
                                                <td class="text-right">&#x20B9;1199.00</td>
                                                <td class="text-right">1</td>
                                                <td class="text-right">&#x20B9;1199.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-25 19:03</td>
                                                <td>100393</td>
                                                <td>USB 3.0 Cable</td>
                                                <td class="text-right">&#x20B9;10.00</td>
                                                <td class="text-right">3</td>
                                                <td class="text-right">&#x20B9;30.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-29 05:57</td>
                                                <td>100392</td>
                                                <td>Smartwatch 4.0 LTE Wifi</td>
                                                <td class="text-right">&#x20B9;199.00</td>
                                                <td class="text-right">6</td>
                                                <td class="text-right">&#x20B9;1494.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-24 19:10</td>
                                                <td>100391</td>
                                                <td>Camera C430W 4k</td>
                                                <td class="text-right">&#x20B9;699.00</td>
                                                <td class="text-right">1</td>
                                                <td class="text-right">&#x20B9;699.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-22 00:43</td>
                                                <td>100393</td>
                                                <td>USB 3.0 Cable</td>
                                                <td class="text-right">&#x20B9;10.00</td>
                                                <td class="text-right">3</td>
                                                <td class="text-right">&#x20B9;30.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © Ikonique Interiors 2020 . All rights reserved.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
           </div>
	</div>
</body>	
<!-- Core -->
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
	
<script>
$(document).ready(function(){
	alert("Alert");
	
	
});
function earn(){
	const a1 = document.getElementById('vfees').value;
	const  a2= document.getElementById('earnings').value;
	
	const ans=a1*a2;
	return ans;
}
document.getElementById("a1").innerHTML = earn();
</script>	
	
	
</html>