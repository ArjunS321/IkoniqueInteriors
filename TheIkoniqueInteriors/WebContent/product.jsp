<%@page import="com.ikonique.bean.Product"%>
<%@page import="java.util.List"%>
<link rel="stylesheet" href="css1/bootstrap.min.css">

<link rel="stylesheet" href="css1/Fontawesome.css">

<link rel="stylesheet" href="css1/product.css">
<jsp:include page="/SelectProductDetails"/>
<%List <Product> productList =(List)request.getAttribute("productList"); %>
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
							<a href="SelectProductLandDetails"><%=product.getProduct_name() %></a>
						</h3>
					</div>
					<div class="product-btns">
						<a href="SelectProductLandDetails" class="btn-small mr-2"><%=product.getProduct_price() %></a> 
						<a href="#" class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a> 
						<a class="btn-round"><i att="0" class="fa fa-heart" style="color: black"></i></a>
					</div>
				</div>
			</div>
			<%} %>
		</div>
			
	</div>
</section>
<script>
$('.fa-heart').click(function(){
    if($(this).attr('att') == 0){
        $(this).css('color', 'red');
        $(this).attr('att',1);
    } else {
        $(this).css('color', 'black');
        $(this).attr('att',0);
    }
});
</script>
