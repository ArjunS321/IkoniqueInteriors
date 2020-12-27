<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>

<aside class="menu-sidebar d-none d-lg-block">
	<div class="logo">
		<a href="#"> <img src="images/icon/logo.png" alt="Cool Admin" />
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
					<ul class="list-unstyled navbar__sub-list js-sub-list">
						<li class="has-sub"><a class="js-arrow" href="#"><i
								class="fas  fa-toggle-down (alias)"></i>Home</a>
							<ul class="list-unstyled js-sub-list">
								<li><a href="customerhometable.jsp"><i class="fas fa-arrow-circle-o-right"></i>Tables</a></li>
								<li><a href="customerhomelamp.jsp"><i class="fas fa-arrow-circle-o-right"></i>Lighting</a></li>
								<li><a href="customerhomeart.jsp"><i class="fas fa-arrow-circle-o-right"></i>Art</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"><i
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
							<ul class="list-unstyled navbar__sub-list js-sub-list"></ul></li>
					</ul></li>
				<li><a href="#"> <i class="fas fa-bullseye"></i>Visualizer
				</a></li>
				<li><a href="wishlist.jsp"> <i class="fas fa-bookmark"></i>Wishlist
				</a></li>
				<li><a href="myorder.jsp"> <i class="fas fa-suitcase"></i>My
						Orders
				</a></li>
				<li><a href="showinterior.jsp"> <i class="fas fa-male"></i>Appoint
						Interior Designer
				</a></li>
				<li><a href="enquiry.jsp"> <i class="fas fa-question"></i>Enquiry
				</a></li>
				<li><a href="aboutus.jsp"> <i class="fas fa-exclamation"></i>About
						Us
				</a></li>


			</ul>
		</nav>
	</div>
</aside>

<%@include file="commonjs.jsp"%>