<%@page import="com.ikonique.bean.Wishlist"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ikonique.bean.User"%>
<%@page import="com.ikonique.bean.Product"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="css1/bootstrap.min.css">

<link rel="stylesheet" href="css1/Fontawesome.css">

<link rel="stylesheet" href="css1/product.css">
</head>
<%-- <%
HttpSession httpSession = request.getSession(false);
User user = null;   
if(null!=httpSession)
{
   user = (User)httpSession.getAttribute("loginbean");
}
%>  --%>
<jsp:include page="/SelectProductDetails"/>
<%List <Product> productList =(List)request.getAttribute("productList"); %>
<jsp:include page="/SelectWishlistDetails"/>
<%List <Wishlist> wishlistList =(List)request.getAttribute("wishlistList"); %>
<body>
<section class="section-bg" style="background-color: #e6e7ee;">
	<div class="container" >

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
						<a href="SelectProductLandDetails?productId=<%=product.getProduct_id()%>" class="btn-small mr-2"><%=product.getProduct_price() %></a> 
						<a class="btn-round mr-2"><i att="0" class="fa fa-shopping-cart" style="color: black"></i></a> 
						<%for(Wishlist wishlist : wishlistList) {%>
							<%if(product.getProduct_id()==wishlist.getProductid()){ %>
								<a class="btn-round"><i id="<%=product.getProduct_id() %>" att="0" class="fa fa-heart" style="color: red"></i></a>
							<%}else{ %>
								<a class="btn-round"><i id="<%=product.getProduct_id() %>" att="0" class="fa fa-heart" style="color: black"></i></a>
							<%} %>
						<%} %>				
						</div>
<%-- 					<input type="hidden" value="<%=String.valueOf(user.getUser_id()) %>" name="userid"> --%>
				</div>
			</div>
			<%} %>
		</div>
	</div>
</section>

<script>
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
$('.fa-shopping-cart').click(function(){
    if($(this).attr('att') == 0){
        $(this).css('color', 'blue');
        $(this).attr('att',1);
    } else {
        $(this).css('color', 'black');
        $(this).attr('att',0);
    }
});
</script>
</body>
</html>
