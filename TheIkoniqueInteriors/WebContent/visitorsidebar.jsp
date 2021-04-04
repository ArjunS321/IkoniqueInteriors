<%@page import="com.ikonique.bean.SubCategory"%>
<%@page import="com.ikonique.bean.Category"%>
<%@page import="java.util.List"%>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
<jsp:include page="/SelectCategoryDetails"/>
<%List<Category> categoryList =(List)request.getAttribute("categoryList"); %>
<jsp:include page="/SelectSubCategoryDetails"/>
<%List<SubCategory> subcategoryList =(List)request.getAttribute("subcategoryList"); %>
<aside class="menu-sidebar d-none d-lg-block" style="background-color: #e6e7ee;">
	<div class="logo" style="background-color: #e6e7ee;">
		<a href="#"> <img src="images/icon/logo1.png" alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">
				<li class="active has-sub"><a class="js-arrow" href="#"> <i
						class="fas fa-home"></i>Home
				</a> <!-- 							<ul class="list-unstyled navbar__sub-list js-sub-list"> -->
					<!-- 								<li><a href="index.jsp">Dashboard 1</a></li> --> <!-- 							</ul></li> -->
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
								<li><a href="SelectParticularProduct?subcategoryid=<%=subcategory.getSub_category_id() %>"><i class="fas fa-arrow-circle-o-right"></i><%=subcategory.getSub_category_name() %></a></li>
							</ul>
							<%} %>
							<%} %>
						</li>
					</ul>
					<%} %>
				</li>
				<li><a href="visualizer.jsp"> <i class="fas fa-bullseye"></i>Visualizer
				</a></li>
				<li><a href="login.jsp"> <i class="fas fa-male"></i>Appoint
						Interior Designer
				</a></li>
				<li><a href="login.jsp"> <i class="fas fa-question"></i>Enquiry
				</a></li>
				<li><a href="aboutus.jsp"> <i class="fas fa-exclamation"></i>About
						Us
				</a></li>
			</ul>
		</nav>
	</div>
</aside>

<%@include file="commonjs.jsp"%>