

<link rel="stylesheet" href="css1/bootstrap.min.css">

<link rel="stylesheet" href="css1/Fontawesome.css">

<style>
@import
	url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700|Didact+Gothic&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-size: 16px;
	color: #292929;
	line-height: 1.7em;
	font-weight: 400;
	background: #F0F0F0;
	font-family: "Didact Gothic", sans-serif;
}

.section-bg {
	padding: 60px 0;
	background: #F0F0F0;
}

.section-title {
	margin-bottom: 25px;
}

.section-title h2 {
	position: relative;
	font-size: 32px;
	line-height: 1.4;
	font-weight: 700;
	letter-spacing: 1px;
	z-index: 1;
	text-transform: capitalize;
	display: inline-block;
	font-family: "Didact Gothic", sans-serif;
}

.single-product {
	box-shadow: inset -2px -2px 8px white, inset -2px -2px 12px
		rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255, 0.1),
		inset 2px 2px 8px rgba(0, 0, 0, 0.15);
	padding: 30px;
	border-radius: 12px;
	margin-bottom: 50px;
}

.single-product .product-thumb {
	margin-bottom: 20px;
}

.single-product .product-title {
	margin-bottom: 20px;
	text-align: center;
	align-items: center;
}

.single-product .product-title h3 {
	font-family: "Didact Gothic", sans-serif;
	font-size: 20px;
	font-weight: 300;
}

.single-product .product-title h3 a {
	color: #292929;
	text-decoration: none;
}

.single-product .product-title h3 a:hover {
	color: #7289ab;
}

.single-product:hover {
	box-shadow: -2px -2px 8px white, -2px -2px 12px rgba(255, 255, 255, 0.5),
		inset 2px 2px 4px rgba(255, 255, 255, 0.1), 2px 2px 8px
		rgba(0, 0, 0, 0.15);
}

img {
	display: inline-block;
	max-width: 100%;
}

.product-btns {
	display: flex;
	justify-content: center;
}

a {
	text-decoration: none;
	cursor: pointer;
	transition: .3s;
	color: #292929;
}

.btn-small {
	display: inline-block;
	color: black;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	padding: 8px 32px;
	border-radius: 50px;
	text-decoration: none;
	box-shadow: inset -2px -2px 8px white, inset -2px -2px 12px
		rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255, 0.1),
		inset 2px 2px 8px rgba(0, 0, 0, 0.15);
	transition: 0.4s;
}

.btn-round {
	color: black;
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	height: 45px;
	width: 45px;
	text-align: center;
	line-height: 45px;
	border-radius: 50%;
	text-decoration: none;
	box-shadow: -2px -2px 8px white, -2px -2px 12px rgba(255, 255, 255, 0.5),
		inset 2px 2px 4px rgba(255, 255, 255, 0.1), 2px 2px 8px
		rgba(0, 0, 0, 0.15);
}

.btn-small:hover {
	box-shadow: -2px -2px 8px white, -2px -2px 12px rgba(255, 255, 255, 0.5),
		inset 2px 2px 4px rgba(255, 255, 255, 0.1), 2px 2px 8px
		rgba(0, 0, 0, 0.15);
	color: #7289ab;
	text-decoration: none;
}

.btn-small:hover span {
	display: inline-block;
	transform: scale(0.98);
}

.btn-round:hover {
	box-shadow: inset -2px -2px 8px white, inset -2px -2px 12px
		rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255, 0.1),
		inset 2px 2px 8px rgba(0, 0, 0, 0.15);
	color: #7289ab;
}

.button-center {
	justify-content: center;
	text-align: center;
}

.bttn-def {
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 1px;
	padding: 14px 42px;
	border-radius: 50px;
	text-decoration: none;
	font-family: "Poppins", sans-serif;
	box-shadow: -2px -2px 8px white, -2px -2px 12px rgba(255, 255, 255, 0.5),
		inset 2px 2px 4px rgba(255, 255, 255, 0.1), 2px 2px 8px
		rgba(0, 0, 0, 0.15);
	transition: 0.4s;
}

.bttn-def:hover {
	color: #7289ab;
	box-shadow: inset -2px -2px 8px white, inset -2px -2px 12px
		rgba(255, 255, 255, 0.5), inset 2px 2px 4px rgba(255, 255, 255, 0.1),
		inset 2px 2px 8px rgba(0, 0, 0, 0.15);
}

.bttn-def:hover span {
	display: inline-block;
	transform: scale(0.98);
}
</style>



				<section class="section-bg">
					<div class="container">

						<div class="row">
							<div class="col-xl-12">
								<div class="section-title">
									<h2>Products</h2>
								</div>
							</div>
						</div>

						<div class="row">

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/1.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Revolutionary Andriod oneplus</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/2.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Best collection casual pink shirt</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/9.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Formal Blue shirt for office purpose</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/8.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Sports white tshirt for long use</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>




							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/10.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Revolutionary Andriod oneplus</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/11.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Best collection casual pink shirt</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/1.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Formal Blue shirt for office purpose</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
								<div class="single-product">
									<div class="product-thumb">
										<img src="img1/2.png" alt="">
									</div>
									<div class="product-title">
										<h3>
											<a href="">Sports white tshirt for long use</a>
										</h3>
									</div>
									<div class="product-btns">
										<a href="" class="btn-small mr-2">$879</a> <a href=""
											class="btn-round mr-2"><i class="fa fa-shopping-cart"></i></a>
										<a href="" class="btn-round"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>

						</div>

						<div class="row button-center">
							<div class="col-xl-6 centered">
								<a href="" class="bttn-def"><span>Load more</span></a>
							</div>
						</div>

					</div>
				</section>
			