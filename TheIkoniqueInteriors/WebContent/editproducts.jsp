<%@page import="com.ikonique.bean.Offer"%>
<%@page import="com.ikonique.bean.User"%>
<%@page import="com.ikonique.bean.SubCategory"%>
<%@page import="com.ikonique.bean.Category"%>
<%@page import="com.ikonique.bean.Product"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css"
	integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg=="
	crossorigin="anonymous" />
	<!-- Fontawesome -->
<link type="text/css"
	href="neuro/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css" href="neuro/css/neumorphism.css" rel="stylesheet">
<title>Edit Category,Sub-category,Product & Offer</title>
</head>
<%boolean iscategory=request.getAttribute("category")!=null; %>
<%boolean issubcategory=request.getAttribute("subcategory")!=null; %>
<%boolean isproduct=request.getAttribute("product")!=null; %>
  <% Category cat=null; SubCategory subcategory=null; Product product=null;%>
 <%if(iscategory){ %>
 <%  cat = (Category)request.getAttribute("category"); %> 
  <%} %>
  <%if(issubcategory) {%>
 <%  subcategory = (SubCategory)request.getAttribute("subcategory"); %> 
	<%} %>
	<%if(isproduct) {%>
 <%  product = (Product)request.getAttribute("product"); %> 
	<%} %>
 <jsp:include page="/SelectCategoryDetails"/> 
 <%List<Category> categorylist=(List)request.getAttribute("categoryList"); %> 
<jsp:include page="/SelectDesignerDetails"/> 
 <%List<User> designerList =(List)request.getAttribute("designerList"); %>
 <jsp:include page="/SelectSubCategoryDetails"/>
 <%List<SubCategory> subcategorylist =(List)request.getAttribute("subcategoryList"); %>
 <jsp:include page="/SelectOfferDetails"/>
 <%List<Offer> offerList =(List)request.getAttribute("offerList"); %>
 
<style>
#form .indicator1
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid .indicator1
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid .indicator1
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator2
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid1 .indicator2 
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid1 .indicator2 
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator3
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid2 .indicator3
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid2 .indicator3
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator4
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid3 .indicator4
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid3 .indicator4
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator5
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid4 .indicator5
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid4 .indicator5
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator6
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid5 .indicator6
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid5 .indicator6
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator7
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid6 .indicator7
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid6 .indicator7
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}
#form .indicator8
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid7 .indicator8
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid7 .indicator8
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator9
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid8 .indicator9
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid8 .indicator9
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator10
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid10 .indicator10
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid10 .indicator10
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator11
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid11 .indicator11
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid11 .indicator11
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator12
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid12 .indicator12
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid12 .indicator12
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

#form .indicator13
{
	position: absolute;
	top: 50px;
	right: 20px;
	width: 10px;
	height:10px;
	background: #555;
	border-radius: 50%;
}

#form.invalid13 .indicator13
{
	background: #f00;
	box-shadow: 0 0 5px #f00,
				0 0 10px #f00,
				0 0 20px #f00,
				0 0 40px #f00;
}

#form.valid13 .indicator13
{
	background: #0f0;
	box-shadow: 0 0 5px #0f0,
				0 0 10px #0f0,
				0 0 20px #0f0,
				0 0 40px #0f0;
}

</style>

<body>

<h1 align="center" style="margin-top: 50px;">Edit Category,
		Sub-Category ,Offer & Product</h1>
	<hr class="my-5" style="background-color: #d4d4d4;">
	<%if(iscategory){ %>
	<form action="UpdateProductsDetails" class="w-50 ml-10" class="box" class="form" id="form"
		method="post" onsubmit=" login()" enctype="multipart/form-data">
		
		 <div class="form-group mb-3 ml-10 inputBox cname">
		 <input type="hidden" name="category" value="forcategory"> <br>
			<input type="hidden" name="categoryId" value="<%=String.valueOf(cat.getCategory_id()) %>"> <br>
			<label for="cname">Category Name</label> 
			<input type="text" value="<%=cat.getCategory_name() %>" name="cname" class="form-control" id="cname" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate1();"> <span
				class="indicator1"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox status">
			<div class="form-check">
			<%if(cat.getStatus()==1){ %>
				<input class="form-check-input" type="radio" name="exampleRadios2"
						id="exampleRadios21" value="1" checked> 
				<label class="form-check-label" for="exampleRadios21"> <b>Active</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios2"
				id="exampleRadios11" value="0"> 
				<label class="form-check-label" for="exampleRadios11"> <b>Inactive</b></label>
			<%}else{ %>
				<input class="form-check-input" type="radio" name="exampleRadios2"
						id="exampleRadios21" value="1"> 
				<label class="form-check-label" for="exampleRadios21"> <b>Active</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios2"
				id="exampleRadios11" value="0" checked> 
				<label class="form-check-label" for="exampleRadios11"> <b>Inactive</b></label>
			<%} %>
			</div>
		</div> 
		
		<div align="center">
			<button type="submit" name="submit" class="btn form-group btn-primary ml-10">Submit</button>
		</div>
	</form>
		<%} else if(issubcategory){%>
			<form action="UpdateProductsDetails" class="w-50 ml-10" class="box" class="form" id="form"
		method="post" onsubmit=" login()" enctype="multipart/form-data">
		
			<div class="form-group mb-3 ml-10 inputBox subcatgeoryname">
			<input type="hidden" name="subcategory" value="forsubcategory"> <br>
			<input type="hidden" name="subcategoryId" value="<%=String.valueOf(subcategory.getSub_category_id()) %>"> <br>
			<label for="subcategoryname">Sub-Category Name</label> 
			<input type="text" value="<%=subcategory.getSub_category_name() %>" name="subcategoryname" class="form-control" id="subcategory" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate2();"> <span
				class="indicator2"></span>
		</div> 
		
			<div class="form-group mb-3 ml-10 inputBox category">
			<label for="category">Category</label> <select name="category"
				class="form-control" id="category" aria-describedby="emailHelp"
				onchange="validate6()">
				<!-- <option value="0" selected></option> -->
				
												<%for (Category category : categorylist) {%>
													<%if(category.getCategory_id()==subcategory.getCategory_id() ){ %>
														<option value="<%=category.getCategory_id()%>" selected><%=category.getCategory_name()%></option>
													<%} else{ %>
													<option value="<%=category.getCategory_id()%>" selected><%=category.getCategory_name()%></option>
													<%}%> 
												<%}%>
			</select> <span class="indicator6"></span>

		</div>
		 <div class="form-group mb-3 ml-10 inputBox status">
			<div class="form-check">
			<%if(subcategory.getStatus()==1){ %>
				<input class="form-check-input" type="radio" name="exampleRadios2"
						id="exampleRadios21" value="1" checked> 
				<label class="form-check-label" for="exampleRadios21"> <b>Active</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios2"
				id="exampleRadios11" value="0"> 
				<label class="form-check-label" for="exampleRadios11"> <b>Inactive</b></label>
			<%}else{ %>
				<input class="form-check-input" type="radio" name="exampleRadios2"
						id="exampleRadios21" value="1"> 
				<label class="form-check-label" for="exampleRadios21"> <b>Active</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios2"
				id="exampleRadios11" value="0" checked> 
				<label class="form-check-label" for="exampleRadios11"> <b>Inactive</b></label>
			<%} %>
			</div>
			</div>
		
		<div align="center">
			<button type="submit" name="submit" class="btn form-group btn-primary ml-10">Submit</button>
		</div>
		</form>
		<%}else if(isproduct){ %>
			<form action="UpdateProductsDetails" class="w-50 ml-10" class="box" class="form" id="form"
			method="post" onsubmit=" login()" enctype="multipart/form-data">
		
			<div class="form-group mb-3 ml-10 inputBox productname">
			<input type="hidden" name="product" value="forproduct"> <br>
			<input type="hidden" name="productId" value="<%=String.valueOf(product.getProduct_id()) %>"> <br>
			<label for="productname">Product Name</label> 
			<input type="text" value="<%=product.getProduct_name() %>" name="productname" class="form-control" id="subcategory" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate1();"> <span
				class="indicator"></span>
			</div>
			<div class="form-group mb-3 ml-10 inputBox productprice">
			<label for="productprice">Product Price</label> 
			<input type="text" value="<%=product.getProduct_price() %>" name="productprice" class="form-control" id="subcategory" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate1();"> <span
				class="indicator1"></span>
			</div>
			<div class="form-group mb-3 ml-10 inputBox productquantity">
			<label for="productquantity">Product Quantity</label> 
			<input type="text" value="<%=product.getProduct_quantity() %>" name="productquantity" class="form-control" id="subcategory" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate1();"> <span
				class="indicator1"></span>
			</div>
			<div class="form-group mb-3 ml-10 inputBox productprice">
			<label for="productweight">Product Weight</label> 
			<input type="text" value="<%=product.getProduct_weight() %>" name="productweight" class="form-control" id="subcategory" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate1();"> <span
				class="indicator1"></span>
			</div>
			<div class="form-group mb-3 ml-10 inputBox ownername">
			<label for="category">Owner Name</label> 
			<select name="ownername" class="form-control" id="ownername" 
			aria-describedby="emailHelp" onchange="validate6()">
			<!-- <option value="0" selected>Select Owner</option> -->
				
												<%for (User user : designerList) {%>
													<%if(user.getUser_id() == product.getProduct_owner_id()){ %>
														<option value="<%=user.getUser_id()%>" selected><%=user.getFirstname()%> <%=user.getLastname()%></option>
													<%} else{%>
														<option value="<%=user.getUser_id()%>"><%=user.getFirstname()%> <%=user.getLastname()%></option>
													<%} %>
												<%}%> 
			</select> <span class="indicator6"></span>

			</div> 
			<div class="form-group mb-3 ml-10 inputBox pdesc">
			<label for="pdescription">Product Description</label>
			<textarea rows="5" name="pdescription" class="form-control"
				id="pdescription" autocomplete="off" aria-describedby="emailHelp"
				onkeyup="validate5();"><%=product.getProduct_desc() %></textarea>
			<span class="indicator5"></span>
			</div>
			<div class="form-group mb-3 ml-10 inputBox category">
			<label for="category">Category</label> 
			<select name="category" class="form-control" id="category" 
			aria-describedby="emailHelp" onchange="validate6()">
			<!-- <option value="0" selected>Select category</option> -->
				
												<%for (Category category : categorylist) {%>
													<%if(category.getCategory_id()==product.getCategory_id()){ %>
														<option value="<%=category.getCategory_id()%>" selected><%=category.getCategory_name()%></option>
													<%} else{%>
															<option value="<%=category.getCategory_id()%>"><%=category.getCategory_name()%></option>
													<%} %>
												<%}%> 
			</select> <span class="indicator6"></span>

			</div> 
			<div class="form-group mb-3 ml-10 inputBox category">
			<label for="subcategory">Sub-Category</label> 
			<select name="subcategory" class="form-control" id="subcategory" 
			aria-describedby="emailHelp" onchange="validate6()">
			<!-- <option value="0" selected>Select category</option> -->
				
												<%for (SubCategory subCategory : subcategorylist){%>
													<%if(subCategory.getSub_category_id()==product.getSubcategory_id()){ %>
														<option value="<%=subCategory.getSub_category_id()%>" selected><%=subCategory.getSub_category_name()%></option>
													<%} else{%>
														<option value="<%=subCategory.getSub_category_id()%>" ><%=subCategory.getSub_category_name()%></option>
													<%} %>
												<%}%> 
			</select> <span class="indicator6"></span>

			</div> 
			<div class="form-group mb-3 ml-10 inputBox category">
			<label for="offer">Offer</label> 
			<select name="offer" class="form-control" id="offer" 
			aria-describedby="emailHelp" onchange="validate6()">
			<!-- <option value="0" selected>Select category</option> -->
				
												<%for (Offer offer : offerList){%>
													<%if(offer.getOfferid()==product.getOfferid()){ %>
														<option value="<%=offer.getOfferid()%>" selected><%=offer.getOffername()%></option>
													<%} else{%>
														<option value="<%=offer.getOfferid()%>" selected><%=offer.getOffername()%></option>
													<%} %>
												<%}%> 
			</select> <span class="indicator6"></span>
			</div>
			
			<div class="form-group mb-3 ml-10 inputBox status">
			<div class="form-check">
			<%if(product.getStatus()==1){ %>
				<input class="form-check-input" type="radio" name="exampleRadios2"
						id="exampleRadios21" value="1" checked> 
				<label class="form-check-label" for="exampleRadios21"> <b>Active</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios2"
				id="exampleRadios11" value="0"> 
				<label class="form-check-label" for="exampleRadios11"> <b>Inactive</b></label>
			<%}else{ %>
				<input class="form-check-input" type="radio" name="exampleRadios2"
						id="exampleRadios21" value="1"> 
				<label class="form-check-label" for="exampleRadios21"> <b>Active</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios2"
				id="exampleRadios11" value="0" checked> 
				<label class="form-check-label" for="exampleRadios11"> <b>Inactive</b></label>
			<%} %>
			</div>
		</div>
			
		<div align="center">
			<button type="submit" name="submit" class="btn form-group btn-primary ml-10">Submit</button>
		</div>
		</form>
		<%} %>
		
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
	
	
</body>
</html>