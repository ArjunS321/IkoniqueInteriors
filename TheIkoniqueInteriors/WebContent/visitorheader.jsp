<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>

<header class="header-desktop"  style="background-color: #e6e7ee;">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="header-wrap">
				<form class="form-header" action="" method="POST">
					<input class="au-input au-input--xl" type="text" name="search"
						placeholder="Search Products...." />
					<button class="au-btn--submit" type="submit">
						<i class="zmdi zmdi-search"></i>
					</button>
				</form>
				<div class="header-button">
					<button type="button" onclick="location.href='register.jsp';" class="btn btn-secondary btn-sm">Sign In</button>
				</div>
			</div>
		</div>
	</div>
</header>

<%@include file="commonjs.jsp"%>