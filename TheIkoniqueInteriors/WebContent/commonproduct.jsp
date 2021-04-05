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
<jsp:include page="/SelectSubCategoryDetails"/>
<%List<SubCategory> subcategoryList1 =(List)request.getAttribute("subcategoryList"); %>
<%List <Product> productlist =(List)request.getAttribute("productlist"); %>
 <%--  <jsp:include page="/SelectWishlistDetails"/>
<%List <Wishlist> wishlistList =(List)request.getAttribute("wishlistList"); %> 
<%List <Integer> wishlistint =(List)request.getAttribute("wishlistint"); %>  --%>

<title>Products</title>
<style>
input.search-input
{
			width: 300px;
            margin-left: 850px;
            background-color: #e6e7ee;
            float: 150;
           
}
</style>
<body style="background-color: #e6e7ee;">
<%@include file="customersidebar.jsp"%>
<%@include file="customerheader.jsp"%>
<div class="page-wrapper">
<div class="page-container">
<div class="main-content" style="background-color: #e6e7ee;">
		<div class="row ml-4">
			<div class="col-xl-12">
				<div class="section-title">
				<%for(SubCategory subCategory : subcategoryList1){ %>
					<%for(Product product : productlist){ %>
					<%if(subCategory.getSub_category_id() == product.getSubcategory_id()){ %>
					<h2><%=subCategory.getSub_category_name() %> Products</h2>
					<%break;} %>
					<%} %>
				<%} %>
				</div>
				
				<input type="text" id="mySearch" placeholder="Search Products..." class="form-control search-input">
				<br>
			</div>
		</div>
		<section style="background-color: #e6e7ee;">
		<div class="row" style="margin-left:10px; margin-right:10px;" id="result">
		<%for(Product product : productlist) {%>
			<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
				<div class="single-product" id="single">
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
						<a class="btn-round"><i id="<%=product.getProduct_id() %>"  class="fa fa-heart" ></i></a>
					
						
						<%--  <%if(null!=wishlistint && !wishlistint.isEmpty()) {%>
						  
							<%if(wishlistint.contains(product.getProduct_id())){ %>
								att="1" style="color: red"
							<%}else{ %>
								att="0" style="color: black"
							<%} %>
							
						<%}else{ %>
							 att="0" style="color: black"
							<%} %>
						
						></i></a>
								  --%>
						</div>
<%-- 					<input type="hidden" value="<%=String.valueOf(user.getUser_id()) %>" name="userid"> --%>
				</div>
			</div>
			<%} %>
		</div>
</section>
</div>
</div>
</div>
</body>
<%@include file="commonjs.jsp"%>
<script>
/* $('.fa-heart').click(function(){
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
 */
$('.fa-shopping-cart').click(function(){
    if($(this).attr('att') == 0){
        $(this).css('color', 'blue');
        $(this).attr('att',1);
    } else {
        $(this).css('color', 'black');
        $(this).attr('att',0);
    }
});
//  $("#mySearch").keyup(function() {

//      // Retrieve the input field text and reset the count to zero
//      var filter = $(this).val(),
//        count = 0;

//      // Loop through the comment list
//      $('#result div').each(function() {

//        // If the list item does not contain the text phrase fade it out
//        if ($(this).text().search(new RegExp(filter, "i")) < 0) {
//           $(this).hide(); // MY CHANGE

//          // Show the list item if the phrase matches and increase the count by 1
//        } else {
//           $(this).show();// MY CHANGE
//          count++;
//        }

//      });

//    });

$("#mySearch").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#result *").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
 
 
</script>
</html>