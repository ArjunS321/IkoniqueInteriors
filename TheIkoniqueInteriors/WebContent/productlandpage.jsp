<%@page import="com.ikonique.bean.Wishlist"%>
<%@page import="com.ikonique.bean.Offer"%>
<%@page import="com.ikonique.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>

textarea {
    overflow: auto;
    resize: none;
}
.form-control1
{
	font-size: 1rem;
    border-radius: 0.55rem;
    box-shadow: inset 2px 2px 5px #b8b9be, inset -3px -3px 7px #ffffff;
    padding: 0.6rem 0.75rem;
}
.form-control2
{
	display: block;
    width: 100%;
    height: calc(1.5em + 1.2rem + 0.0625rem);
    padding: 0.6rem 0.75rem;
    font-size: 1rem;
    font-weight: 300;
    line-height: 1.5;
    color: #44476A;
    background-color: #e6e7ee;
    background-clip: padding-box;
    border: 0.0625rem solid #D1D9E6;
    border-radius: 0.55rem;
    box-shadow: inset 2px 2px 5px #b8b9be, inset -3px -3px 7px #ffffff;
    transition: all 0.3s ease-in-out;
}
.btn {
    position: relative;
    transition: all 0.2s ease;
    letter-spacing: 0.025em;
    font-size: 1rem;
    border-color: #D1D9E6;
    box-shadow: 3px 3px 6px #b8b9be, -3px -3px 6px #ffffff;  
    display: inline-block;
    font-weight: 400;
    color: #44476A;
    text-align: center;
    vertical-align: middle;
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 0.0625rem solid transparent;
    padding: 0.55rem 0.95rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.55rem;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.btn-primary1 {
    color: #31344b;
    background-color: #e6e7ee;
    border-color: #e6e7ee;
    box-shadow: inset 0 1px 0 rgb(236 240 243 / 15%), 0 1px 1px rgb(38 40 51 / 8%);
}

/* .btn:focus {  */
/*    outline: #D1D9E6 !important;   */
/*    box-shadow: none !important;    */
/*  }  */

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	height: 400px;
	width: 500px;
}

.wishlist {
	margin-left: 1000px !important;
	margin-top: -6rem !important;
}
</style>
<meta charset="ISO-8859-1">
<title>Product Land Page</title>
<%
	Product product = (Product) request.getAttribute("product");
%>
<jsp:include page="/SelectOfferDetails" />
<%
	List<Offer> offerList = (List) request.getAttribute("offerList");
%>
<jsp:include page="/SelectDesignerDetails" />
<%
	List<User> designerList = (List) request.getAttribute("designerList");
%>
 <jsp:include page="/SelectWishlistDetails"/>
<%List <Wishlist> wishlistList =(List)request.getAttribute("wishlistList"); %> 
<%List <Integer> wishlistint =(List)request.getAttribute("wishlistint"); %>
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
<body style="background-color: #e6e7ee">
	<%@include file="customersidebar.jsp"%>
	<%@include file="customerheader.jsp"%>
	<div class="col-5 col-lg-11 ml-6 mt-7">
		<div class="card shadow-inset border-light p-3 ml-10"
			style="background-color: #e6e7ee;">
			<!-- Content -->
			<div class="card-body shadow-soft border border-light rounded p-4">
				<h2 class="mb-3"><%=product.getProduct_name()%></h2>
<!-- 				<p id="finalprice"></p> -->
				<% String str="Ikonique"; %>
				<%for(User user1 : designerList) {%>
					<%if(product.getProduct_owner_id()==user1.getUser_id()){ %>
						<%str=user1.getFirstname()+" "+user1.getLastname();%> 
					<% break;} %>
					<%} %>
				<p class="mb-4 des">By <%=str %></p>
				<i class="fas fa-badge-check"></i> <img class="center rounded"
					src="data:image/jpg;base64,<%=product.getProductpicString()%>"
					alt="">

				<div class="d-flex mb-3">
					<span class="h5 mb-0">&#x20B9;</span>
						<span class="price display-3 text-dark mb-0" id="finalprice"></span><br>
					<br>
				</div>

				<div>
					<span Style="font-size: 8mm" class="h5">&#x20B9;
						<span Style="font-size: 8mm" id="mainprice"
							class="h5 mb-0 text-gray text-through mr-2"
							value="<%=product.getProduct_price()%>"><%=product.getProduct_price()%>
						</span>
					</span>
					
					<%for (Offer offer : offerList) {%>
					<%if (product.getOfferid() == offer.getOfferid()) {%>
					<span Style="font-size: 8mm" id="discount"
						class="h6 mb-0 text-danger" value="<%=offer.getDiscount() %>">
						<%=offer.getDiscount() %>
					</span>
					<%break;}%>
					<%}%>
				</div>
				<div class="product-btns wishlist">
				<a class="btn-round"><i id="<%=product.getProduct_id() %>" class="fa fa-heart"
				<%if(null!=wishlistint && !wishlistint.isEmpty()) {%>
						  
							<%if(wishlistint.contains(product.getProduct_id())){ %>
								att="1" style="color: red"
							<%}else{ %>
								att="0" style="color: black"
							<%} %>
							
						<%}else{ %>
							 att="0" style="color: black"
							<%} %>></i></a>
				</div>
				<br> <br>
				<h4 class="mb-3">Product Description</h4>
				<p class="mb-4 des"><%=product.getProduct_desc()%></p>
				<h4 class="mb-3">Product Weight</h4>
				<p class="mb-4"><%=product.getProduct_weight()%>
					KG
				</p>

				<button type="button" class="btn rounded-bottom col-lg-5 ml-6"
					style="background-color: #e6e7ee;">Buy Now</button>
				<button type="button" class="btn rounded-bottom ml-3 col-lg-5"
					style="background-color: #e6e7ee;">Add to Cart</button>

<!-- 					<div class="form-group mb-1 ml-6 mr-10 inputBox"> -->
<!-- 						<label for="add">FeedBack</label> -->
<!-- 						<textarea rows="5" name="feedback" class="form-control" id="feedback" -->
<!-- 						autocomplete="off" aria-describedby="emailHelp"></textarea> -->
<!-- 					</div> -->
					<form action="InsertFeedback" method="post" id="form">
					<input type="hidden" name="productid" id="productid" value="<%=String.valueOf(product.getProduct_id())%>">
					<div class="ml-7">
					<br>
                         <h4 align="center" class="mb-3 mr-7">Your FeedBack</h4>
                         <textarea style="background-color: #e6e7ee;" class="form-control1" placeholder="Enter Your FeedBack..." name="feedback" id="feedback" rows="4" cols="95"></textarea>
                    </div>
                    <br>
                    <div align="center">
                         <button type="submit" name="submit" id="submit" class="btn btn-primary1">Send FeedBack</button>
                    </div>
                    </form>
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
<script src="neuro/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script
	src="neuro/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="neuro/vendor/prismjs/prism.js"></script>

<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Neumorphism JS -->
<script src="neuro/assets/js/neumorphism.js"></script>
<%@include file="commonjs.jsp"%>
<script>
	function discount() {
		var main = $('#mainprice').text();
		var dis = $('#discount').text();
		var dec = (dis / 100).toFixed(2);
		var mult = main * dec;
		var discount = (main - mult);
		var discount1 = (discount).toFixed(2);
		return discount1;
	}

	function concat(){
		var dis1 = $('#discount').text();
		var s2 = dis1.concat("% Off");
		return s2;
	}
	
	document.getElementById("finalprice").innerHTML = discount();
	document.getElementById("discount").innerHTML = concat();

	$('.fa-heart').click(function(){
		alert($(this).attr('id'));
	    if($(this).attr('att') == 0){
	    
	    	var pid = $(this).attr('id');
	    	var opname = "red";
	    	
	    	$.post( "InsertDeleteProductInWishlist", {productid: pid , operation : opname } )
			  .done(function( data ) {
				  alert("succesfull called..");
			  });
	    	
	        $(this).css('color', 'red');
	        $(this).attr('att',1);
	    } else {
	    	var pid = $(this).attr('id');
	    	var opname = "black";
	    	
	    	$.post( "InsertDeleteProductInWishlist", {productid: pid , operation : opname } )
			  .done(function( data ) {
				  alert("succesfull called..");
			  });
	    	
	        $(this).css('color', 'black');
	        $(this).attr('att',0);
	    }
	   
	});

</script>
</html>