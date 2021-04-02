<!DOCTYPE html>
<%@page import="com.ikonique.bean.SubCategory"%>
<%@page import="com.ikonique.bean.Category"%>
<%@page import="java.util.List"%>
<html>
<head>
<title>About Us</title>
<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>

<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<jsp:include page="/SelectCategoryDetails"/>
<%List<Category> categoryList =(List)request.getAttribute("categoryList"); %>
<jsp:include page="/SelectSubCategoryDetails"/>
<%List<SubCategory> subcategoryList =(List)request.getAttribute("subcategoryList"); %>
<%--  --%>
<%-- <% 
List<Category> categoryList=(List<Category>)request.getSession().getAttribute("categorylist");
%> --%> 

<%-- <%List<Category> categorylist =(List)request.getSession().getAttribute("categorylist"); %> --%>
<%-- <%
HttpSession httpSession = request.getSession(false);
List<Category> categoryList = null;
if (null != httpSession) {
	categoryList  = (List) httpSession.getAttribute("categorylist");
}
%> --%>
<body class=animsition>


<aside class="menu-sidebar d-none d-lg-block" style="background-color: #e6e7ee;">
	<div class="logo" style="background-color: #e6e7ee;">
		<a href="#"> <img src="images/icon/logo1.png" alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">
				<li class="active has-sub"><a href="customer.jsp"> <i
						class="fas fa-home"></i>Home
				</a> <!-- 							<ul class="list-unstyled navbar__sub-list js-sub-list"> -->
					<!-- 								<li><a href="index.jsp">Dashboard 1</a></li> --> <!--							</ul></li> -->
				
				
				
				<li class="has-sub"><a class="js-arrow" href="#"> <i
						class="fas  fa-caret-down"></i>Categories
				</a>
				<%for(Category category:categoryList){ %>
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li class="has-sub"><a class="js-arrow" href="#"><i
								class="fas  fa-toggle-down (alias)"></i><%=category.getCategory_name() %></a>
								<%for(SubCategory subcategory:subcategoryList){ %>
								<%if(subcategory.getCategory_id()==category.getCategory_id()){ %>
								<ul class="list-unstyled js-sub-list">
								<li><a class="js-arrow" href="SelectParticularProduct?subcategoryid=<%=subcategory.getSub_category_id() %>" ><i class="fas fa-arrow-circle-o-right"></i><%=subcategory.getSub_category_name() %></a></li>
								<!-- <li><a class="js-arrow" href="customerhomelamp.jsp"><i class="fas fa-arrow-circle-o-right"></i>Lighting</a></li>
								<li><a class="js-arrow" href="customerhomeart.jsp"><i class="fas fa-arrow-circle-o-right"></i>Art</a></li> -->
							</ul>
							<%} %>
					<%} %></li>
						<!-- <li class="has-sub"><a class="js-arrow" href="#"><i
								class="fas fa-toggle-down (alias)"></i>Hotel</a>
							<ul class="list-unstyled js-sub-list">
								<li><a href="#"><i class="fas fa-arrow-circle-o-right"></i>Bed</a></li>
								<li><a href="#"><i class="fas fa-arrow-circle-o-right"></i>Lamps</a></li>
								<li><a href="#"><i class="fas fa-arrow-circle-o-right"></i>Art</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"><i
								class="fas fa-toggle-down (alias)"></i>Office</a>
							<ul class="list-unstyled js-sub-list">
								<li><a href="#"><i class="fas fa-arrow-circle-o-right"></i>Tables</a></li>
								<li><a href="#"><i class="fas fa-arrow-circle-o-right"></i>Lamps</a></li>
								<li><a href="#"><i class="fas fa-arrow-circle-o-right"></i>Wall-Art</a></li>
							</ul>
							
							</li> -->
					</ul>
					<%} %></li>
				<li><a href="visualizer.jsp"> <i class="fas fa-bullseye"></i>Visualizer
				</a></li>
				<li><a href="wishlist.jsp"> <i class="fas fa-bookmark"></i>Wishlist
				</a></li>
				<li><a href="myorder.jsp"> <i class="fas fa-suitcase"></i>My
						Orders
				</a></li>
				<li><a href="appointmentcards.jsp"> <i class="fas fa-male"></i>Appoint
						Interior Designer
				</a></li>
				<li><a href="contactus.jsp"> <i class="fas fa-question"></i>Enquiry
				</a></li>
				<li><a href="aboutus.jsp"> <i class="fas fa-exclamation"></i>About
						Us
				</a></li>


			</ul>
		</nav>
	</div>
</aside>

<%@include file="commonjs.jsp"%>
</body>
</html>