<%@page import="com.ikonique.userService.impl.userServiceImpl"%>
<%@page import="com.ikonique.bean.User"%>
<%@page import="utils.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%
Enumeration<String> paramNames = request.getParameterNames();

Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}
boolean isValideChecksum = false;
String outputHTML="";

try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY,parameters,paytmChecksum);
	outputHTML = parameters.toString();
// 	if(isValideChecksum && parameters.containsKey("RESPCODE")){
// 		if(parameters.get("RESPCODE").equals("01")){
// 			outputHTML = parameters.toString();
			
// 		}else{
// 			outputHTML="<b>Payment Failed.</b>";
// 		}
// 	}else{
// 		outputHTML="<b>Checksum mismatched.</b>";
// 	}
}catch(Exception e){
	outputHTML=e.toString();
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">
<%@ page session="false" %>
</head>
<%userServiceImpl us=new userServiceImpl(); %>
<body>
<p hidden>
<%= outputHTML %>
  <% String[] sArr= outputHTML.split(","); %>  
 <%--  <% for( String s : sArr){ %>  
 <p> <%= s %></p>
  <%} %>  --%>
 <p hidden><%= sArr[9] %></p> 
  <% String[] sArr2= sArr[5].split("_"); %> 
  <% String[] sArr1= sArr[9].split("="); %> 
 <p hidden> <%= sArr1[1] %> </p>
  <p hidden > <%= sArr2[1] %> </p> 
<% int bookid=Integer.parseInt(sArr2[1]); %>
</p>
 <%if(sArr1[1].equals("TXN_SUCCESS")){ %>
 <%int updatecount=us.updatePaymentStatus(bookid); %>
 <p hidden><%=updatecount %></p>
<div class="modal-dialog modal-dialog-centered" role="document">
	
                        <div class="modal-content bg-primary">
                            <div class="modal-header">
                                <p class="modal-title" id="modal-title-notification">Ikonique Interiors</p>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="py-3 text-center">
                                    <span class="modal-icon display-1-lg"><span class="fas fa-check"></span></span>
                                    <h2 class="h4 my-3">Payment Successful!</h2>
                                    <p>Thanks For Shopping....</p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="customer.jsp" type="button" class="btn btn-sm btn-primary">Continue Shopping</a>
                            </div>
                        </div>
                    </div>
<%}else{ %>
 <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content bg-primary">
                            <div class="modal-header">
                                <p class="modal-title" id="modal-title-notification">Ikonique Interiors</p>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="py-3 text-center">
                                    <span class="modal-icon display-1-lg"><span class="far fa-times-circle"></span></span>
                                    <h2 class="h4 my-3">Payment failed</h2>
                                    <p>Please Check Details and Try Again....</p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="paymentforn.jsp" type="button" class="btn btn-sm btn-primary">Try Again</a>
                            </div>
                        </div>
                    </div>

<%} %> 
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
<script src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script
	src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="neuro/vendor/prismjs/prism.js"></script>
<script src="neuro/assets/js/neumorphism.js"></script>
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
 <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>
    <!-- Main JS-->
    <script type="module" src="js/main.js"></script>
</html>