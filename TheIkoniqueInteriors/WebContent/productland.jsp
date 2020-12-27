<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/styles.css">
<title>Website AirPods</title>
<%@include file="FontFaces.jsp"%>
<%@include file="commoncss.jsp"%>
</head>
<body class="anmisition">
	<div class="page-wrapper">
		<%@include file="customersidebar.jsp"%>
<%-- 		<%@include file="customerheader.jsp"%> --%>
		<div class="page-container">
			<div class="main-content">
				<!-- HEADER -->
				<header class="l-header">
					<nav class="nav bd-grid">
						<a href="#" class="nav__logo">Wooden Table</a>

						<div class="nav__menu" id="nav-menu">
							<ul class="nav__list">
							<li class="nav__item"><a href="#l-section"
									class="nav__link">Details</a></li>
								<li class="nav__item"><a href="#" class="nav__link">Add to Cart</a></li>
								
							</ul>
						</div>

						<div class="nav__actions">
							<div class="nav__toggle" id="nav-toggle">
								<img src="assets/icons/bx-chevron-down.svg" alt="">
							</div>
							<a href="#" class="nav__btn">Buy Now</a>
						</div>
					</nav>
				</header>

				<!-- HOME -->
				<main class="l-main bd-grid">
					<section class="home">
						<div class="home__data">
							<h1 class="home__title">Table</h1>
							<p class="home__description">
								Wooden Table is a Made From Pure Wooden
								It is too Smooth and Too Hard
								It is Available <br>
								<!-- GSAP -->
								
							</p>
						</div>

						<div class="home__img">
							<!-- IMG -->
							<img src="assets/img/tables/table.jpg" alt="" class="airpods">
							<!-- 				 <img src="assets/img/airpod2.png" alt="" class="airpod2"> -->
						</div>

						<div class="home__scroll">
							<span class="home__scroll-text">Scroll down for more</span> <a
								href="#l-section"><img src="assets/icons/bx-mouse.svg"
								alt="" class="home__scroll-icon"></a>
						</div>
					</section>

					<!-- DETAILS AIRPODS -->
					<section class="l-section" id="l-section">
						<div class="details">
							<div class="details__content">
								<div class="details__box">
									<span class="details__initial">Color</span>
									<h3 class="details__title">
										Brown<span> Table</span>
									</h3>
									<p class="details__description">
										Shiny Wooden<br> Good Quality
									</p>
								</div>
								<div class="details__box">
									<span class="details__initial">Laminate</span>
									<h3 class="details__title">
										White<span> Color</span>
									</h3>
									<p class="details__description">
										Size<br>  17*19 
									</p>
								</div>
								<div class="details__box">
									<span class="details__initial">Weight</span>
									<h3 class="details__title">
										2<span> KG</span>
									</h3>
									<p class="details__description">
										Light to Carry<br>Easy to Ship 
									</p>
								</div>
							</div>

							<div class="details__img">
								<img src="assets/img/tables/table.jpg" alt="" class="airpods">
							</div>
						</div>
					</section>
				</main>

				<!-- GSAP -->
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.2.4/gsap.min.js"></script>

				<!-- TIMELINE MAX -->
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TimelineMax.min.js"></script>

				<!-- SCROLLMAGIC -->
				<script
					src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.6/plugins/animation.gsap.min.js"></script>

				<!-- MAIN -->
				<script src="assets/js/main.js"></script>
			</div>
		</div>
	</div>
</body>
</html>