<%@page import="com.ikonique.bean.SubCategory"%>
<%@page import="com.ikonique.bean.Category"%>
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
<title>Insert Product</title>
</head>
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

</style>
<jsp:include page="/SelectCategoryDetails"/>
<jsp:include page="/SelectSubCategoryDetails"/>
<%-- <jsp:include page="/SelectSubcategory"/> --%>
<%List<Category> categorylist =(List)request.getAttribute("categoryList"); %>
<%List<SubCategory> subcategorylist =(List)request.getAttribute("subcategoryList"); %>
<%-- <%List<SubCategory> subcatlist =(List)request.getAttribute("subcatList"); %> --%>
<body>

	<h1 align="center" style="margin-top: 50px;">Insert Category,
		Sub-Category & Product</h1>
	<hr class="my-5" style="background-color: #d4d4d4;">
	<form action="InsertCategoryDetails" class="w-50 ml-10" class="box" class="form" id="form"
		method="post" onsubmit=" login()" enctype="multipart/form-data">
		<div class="form-group mb-3 ml-10 inputBox">
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios1"
					id="exampleRadios21" value="category"> <label
					class="form-check-label" for="exampleRadios21"> <b>Category</b></label>
				<input class="form-check-input" type="radio" name="exampleRadios1"
					id="exampleRadios11" value="subcategory"> <label
					class="form-check-label" for="exampleRadios11"> <b>Sub-category</b>
				</label> <input class="form-check-input" type="radio" name="exampleRadios1"
					id="exampleRadios31" value="product"> <label
					class="form-check-label" for="exampleRadios31"> <b>Product</b>
				</label>
			</div>
		</div>
		<div class="pname">
			<div class="form-group mb-3 ml-10 inputBox">
				<label for="pname">Product Name</label> <input type="text"
					name="pname" class="form-control" id="pname" autocomplete="off"
					aria-describedby="emailHelp" onkeyup="validate1();"> <span
					class="indicator1"></span>
			</div>
		</div>
		<div class="form-group mb-3 ml-10 inputBox pprice">
			<label for="pprice">Product Price</label> <input type="text"
				name="pprice" class="form-control" id="pprice" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate2();"> <span
				class="indicator2"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox pquentity">
			<label for="pquentity">Product Quantity</label> <input type="text"
				name="pquentity" class="form-control" id="pquentity"
				autocomplete="off" aria-describedby="emailHelp"
				onkeyup="validate3();"> <span class="indicator3"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox pweight">
			<label for="pweight">Product Weight</label> <input type="text"
				name="pweight" class="form-control" id="pweight" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate4();"> <span
				class="indicator4"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox pdesc">
			<label for="pdescription">Product Description</label>
			<textarea rows="5" name="pdescription" class="form-control"
				id="pdescription" autocomplete="off" aria-describedby="emailHelp"
				onkeyup="validate5();"></textarea>
			<span class="indicator5"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox category">
			<label for="category">Category</label> <select name="category"
				class="form-control" id="category" aria-describedby="emailHelp"
				onchange="validate6()">
				<option value="0" selected>select Category</option>
				
												<%
				 									for (Category category : categorylist) { 
												%> 
												<option value="<%=category.getCategory_id()%>"><%=category.getCategory_name()%></option>
												<% 
				 									} 
			 								%> 
			</select> <span class="indicator6"></span>

		</div>
		<div class="form-group mb-3 ml-10 inputBox subcategory">
			<label for="subcategory">Sub-Category</label> <select
				name="subcategory" class="form-control" id="subcategory"
				aria-describedby="emailHelp" onchange="validate7()">
				<option value="0" selected>select Sub-Category</option>
												
												<%
				 									for (SubCategory subcategory : subcategorylist) { 
												%> 
 												<option value="<%=subcategory.getSub_category_id()%>"><%=subcategory.getSub_category_name()%></option> 
				 								<% 
				 									}
				 								%>
			</select> <span class="indicator7"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox cname">
			<label for="cname">Category Name</label> <input type="text"
				name="cname" class="form-control" id="cname" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate8();"> <span
				class="indicator8"></span>
		</div>
		<div class="form-group mb-3 ml-10 inputBox scname">
			<label for="scname">Sub-Category Name</label> <input type="text"
				name="scname" class="form-control" id="scname" autocomplete="off"
				aria-describedby="emailHelp" onkeyup="validate9();"> <span
				class="indicator9"></span>
		</div>
		<div align="center">
		<div class="custom-file  mb-3 ml-10 col-sm-8 image">
									<input type="file" class="custom-file-input" id="customFile"
										aria-label="File upload" name="photo"> <label
										class="custom-file-label" for="customFile">Choose Product Image</label>
								</div>
								</div>
		<div align="center">
		<button type="submit" name="submit" class="btn form-group btn-primary ml-10">Submit</button>
	</div>
	</form>
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
// 	$(document).ready(function()
// 	{
	
	function validate1() {
			const form = document.getElementById('form');
			const pname = document.getElementById('pname').value;
			
			if (pname == "") 
			{
				form.classList.add('invalid')
				form.classList.remove('valid')
			}
			else
			{
				form.classList.remove('invalid')
				form.classList.add('valid')
			}
		}
	function validate2() {
		const form = document.getElementById('form');
		const pprice = document.getElementById('pprice').value;
		if (pprice == "") 
		{
			form.classList.add('invalid1')
			form.classList.remove('valid1')
		}
		else
		{
			form.classList.remove('invalid1')
			form.classList.add('valid1')
		}
	}
	function validate3() {
		const form = document.getElementById('form');
		const pquentity = document.getElementById('pquentity').value;
		
		if (pquentity == "") 
		{
			form.classList.add('invalid2')
			form.classList.remove('valid2')
		}
		else
		{
			form.classList.remove('invalid2')
			form.classList.add('valid2')
		}
	}
	function validate4() {
		const form = document.getElementById('form');
		const pweight = document.getElementById('pweight').value;
		
		if (pweight == "") 
		{
			form.classList.add('invalid3')
			form.classList.remove('valid3')
		}
		else
		{
			form.classList.remove('invalid3')
			form.classList.add('valid3')
		}
	}
	function validate5() {
		const form = document.getElementById('form');
		const pdescription = document.getElementById('pdescription').value;
		
		if (pdescription == "") 
		{
			form.classList.add('invalid4')
			form.classList.remove('valid4')
		}
		else
		{
			form.classList.remove('invalid4')
			form.classList.add('valid4')
		}
	}
	function validate6() {
		const form = document.getElementById('form');
		var e=document.getElementById('category');
		
		var value=e.options[e.selectedIndex].value;
		if (value!='0') 
		{
			form.classList.add('valid5')
			form.classList.remove('invalid5')
		} else {
			form.classList.add('invalid5')
			form.classList.remove('valid5')
		}
	}
	function validate7() {
		const form = document.getElementById('form');
		var e=document.getElementById('subcategory');
		
		var value=e.options[e.selectedIndex].value;
		if (value!='0') 
		{
			form.classList.add('valid6')
			form.classList.remove('invalid6')
		} else {
			form.classList.add('invalid6')
			form.classList.remove('valid6')
		}
	}
	function validate8() {
		const form = document.getElementById('form');
		const cname = document.getElementById('cname').value;
		
		if (cname == "") 
		{
			form.classList.add('invalid7')
			form.classList.remove('valid7')
		}
		else
		{
			form.classList.remove('invalid7')
			form.classList.add('valid7')
		}
	}
	function validate9() {
		const form = document.getElementById('form');
		const scname = document.getElementById('scname').value;
		
		if (scname == "") 
		{
			form.classList.add('invalid8')
			form.classList.remove('valid8')
		}
		else
		{
			form.classList.remove('invalid8')
			form.classList.add('valid8')
		}
	}
	$("input[name='exampleRadios1']").change(function() 
	{
		if ($(this).val() == "category") 
		{
			$(".cname").show();
			$(".pname").hide();
			$(".pprice").hide();
			$(".pquentity").hide();
			$(".pweight").hide();
			$(".pdesc").hide();
			$(".category").hide();
			$(".subcategory").hide();
			$(".scname").hide();
			$(".image").hide();
			
		} 
		else if($(this).val() == "subcategory")
		{
			$(".category").show();
			$(".scname").show();
			$(".pname").hide();
			$(".cname").hide();
			$(".pprice").hide();
			$(".pquentity").hide();
			$(".pweight").hide();
			$(".pdesc").hide();
			$(".subcategory").hide();
			$(".image").hide();
		}
		else
		{
			$(".pname").show();
			$(".pprice").show();
			$(".pquentity").show();
			$(".pweight").show();
			$(".pdesc").show();
			$(".category").show();
			$(".subcategory").show();
			$(".cname").hide();
			$(".scname").hide();
			$(".image").show();
		}
	});
	$("#category").change(function() {
		
		const catid= document.getElementById('category').value;
		alert(catid);
		$.get( "SelectSubcategory", {category: catid } )
		  .done(function( data ) {
			  
			 var list= jQuery.parseJSON( data);
			 $.each(list, function( key, value ) {
				  alert('caste: ' + value + ' | id: ' +key);
				}
		  });
		
	});
// });
	
	</script>
</body>
</html>