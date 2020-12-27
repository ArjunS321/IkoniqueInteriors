<!--doctype html-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>Personal Website</title>
<link href='https://fonts.googleapis.com/css?family=Poppins'
	rel='stylesheet'>
<!--using FontAwesome---------------->
<script src="https://kit.fontawesome.com/c8e4d183c2.js"
	crossorigin="anonymous"></script>
<!--style----->
<style>
body {
	font-family: poppins;
}

@charset "utf-8";
/* CSS Document */
body {
	background-color: #f6f5f5;
	margin: 0px;
	padding: 0px;
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
}

section {
	width: 100%;
	height: 95vh;
	background-image: url("../images/bg.png");
	background-size: cover;
	background-repeat: no-repeat;
	position: relative;
}

nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 60px;
	background-color: #ffffff;
	box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
	padding: 0px 5%;
}

nav ul {
	display: flex;
}

.toggle {
	display: none;
}

nav ul li a {
	margin: 30px;
	font-family: myriad pro regular;
	color: #505050;
	font-size: 15px;
	font-weight: 700;
}

.logo {
	font-family: RoadTest;
	color: #000000;
	font-size: 22px;
}

.active {
	color: #2d2a2a;
	font-weight: bold;
}

.model {
	height: 530px;
	position: absolute;
	bottom: 40px;
	left: 75%;
	transform: translateX(-75%);
}

.text-container p:nth-child(1) {
	font-family: calibri;
	font-weight: bold;
	color: #6d6d6d;
	font-size: 22px;
}

.text-container p:nth-child(2) {
	font-family: calibri;
	font-weight: bold;
	letter-spacing: 1px;
	color: #1a1a1a;
	font-size: 60px;
}

.text-container p:nth-child(3) {
	font-family: myriad pro regular;
	color: #403e3e;
	font-size: 30px;
	line-height: 30px;
}

.text-container p {
	margin: 45px 0px 25px;
	line-height: 0px;
}

.text-container button {
	width: 130px;
	height: 42px;
	border-radius: 10px;
	font-family: calibri;
	font-weight: bold;
	font-size: 14px;
	outline: none;
	margin: 0px 10px;
}

.text-container {
	position: absolute;
	left: 13%;
	top: 42%;
	transform: translate(-13%, -42%);
}

.hire-btn {
	border: 2px solid #373636;
	color: #373636;
	background-color: transparent;
}

.down-cv {
	background-color: #0B0B0B;
	color: #fff;
	border: none;
}

button:active {
	transform: scale(1.1);
}

.about-container {
	width: 80%;
	height: 330px;
	background: #ffffff;
	border-radius: 20px;
	box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
	display: flex;
	margin: -7% auto 20px auto;
	position: relative;
	justify-content: space-evenly;
	align-items: center;
}

.about-container img {
	height: 250px;
}

.about-text {
	width: 500px;
}

.about-text p:nth-child(1) {
	color: #403e3e;
	font-family: myriad pro;
	font-weight: bold;
	font-size: 23px;
	line-height: 0px;
}

.about-text p:nth-child(2) {
	color: #3e3d3d;
	font-size: 13px;
	font-family: myriad pro;
	font-weight: bold;
	line-height: 5px;
}

.about-text p:nth-child(3), .about-text p:nth-child(4) {
	color: #7e7d7d;
	font-family: calibri;
	font-size: 16px;
}

.about-text button {
	width: 120px;
	height: 40px;
	color: #ffffff;
	outline: none;
	border: none;
	font-family: calibri;
	background-color: #262525;
}

.services {
	height: 600px;
	background-color: #ffffff;
	padding: 2% 10% 0px 10%;
}

.services-text p:nth-child(1) {
	font-family: calibri;
	font-weight: bold;
	color: #1d1c1c;
	font-size: 30px;
	line-height: 0px;
}

.services-text p:nth-child(2) {
	font-family: calibri;
	font-weight: bold;
	color: #3e3d3d;
	font-size: 15px;
	line-height: 5px;
}

.services-text p:nth-child(3) {
	font-family: calibri;
	color: #7e7d7d;
	font-size:;
}

.services-text {
	width: 500px;
	margin: 50px 0px;
}

.box-container {
	display: flex;
	justify-content: space-between;
}

.box-1, .box-2, .box-3 {
	width: 300px;
	height: 320px;
	background-repeat: no-repeat;
	background-size: cover;
	box-shadow: 2px 2px 18px rgba(0, 0, 0, 0.3);
	align-items: center;
	justify-content: center;
	display: flex;
	flex-direction: column;
	margin: 0px 4px;
}

.box-1 {
	background-image: url("../images/services-1.png");
}

.box-2 {
	background-image: url("../images/services-2.png");
}

.box-3 {
	background-image: url("../images/servies-3.png");
}

.box-1 span, .box-2 span, .box-3 span {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #ffffff;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: calibri;
	font-weight: bold;
}

.box-1 p:nth-child(2), .box-2 p:nth-child(2), .box-3 p:nth-child(2) {
	color: #FFFFFF;
	font-family: calibri;
	font-size: 23px;
	line-height: 0px;
}

.box-1 p:nth-child(3), .box-2 p:nth-child(3), .box-3 p:nth-child(3) {
	font-family: calibri;
	color: #8F8F8F;
	text-align: center;
	width: 230px;
	margin: 0px 0px 20px 0px;
}

.box-1 button, .box-2 button, .box-3 button {
	width: 100px;
	height: 30px;
	background-color: #FFFFFF;
	border: none;
	outline: none;
	border-radius: 5px;
}

.contact-me {
	width: 100%;
	height: 280px;
	background-size: cover;
	background-repeat: no-repeat;
	background-image: url("../images/project in your mind.png");
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: 0px 0px 20px 0px;
}

.contact-me p {
	color: #FFFFFF;
	font-size: 30px;
	font-family: calibri;
	font-weight: bold;
	border-bottom: 2px solid #ffffff;
}

.contact-me button {
	width: 200px;
	height: 40px;
	background-color: #FFFFFF;
	border: none;
	outline: none;
	font-size: 14px;
	font-weight: bold;
}

footer p {
	font-family: calibri;
}

footer p:nth-child(1) {
	font-size: 30px;
	font-weight: bold;
	color: #191919;
	line-height: 10px;
}

footer p:nth-child(2) {
	font-size: 16px;
	color: #7e7d7d;
	width: 600px;
	text-align: center;
}

footer {
	height: 300px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	position: relative;
}

.social-icons a {
	width: 40px;
	height: 40px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #e6e3e3;
	margin: 20px 10px;
	border-radius: 50%;
}

.social-icons {
	display: flex;
}

.social-icons i, .social i {
	color: #000000;
}

.social-icons a:hover {
	background-color: #000000;
	box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
	transition: all ease 0.5s;
}

.social-icons a:hover i, .social a:hover i {
	color: #FFFFFF;
	transition: all ease 0.5s;
}

.copyright {
	color: #565555;
	font-size: 12px;
	position: absolute;
	left: 50%;
	bottom: 10px;
	transform: translateX(-50%);
}

.social {
	position: fixed;
	top: 50%;
	right: 0px;
	transform: translateY(-50%);
}

.social a {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 50px;
	margin: 0px;
	padding: 0px;
	line-height: 0px;
	background-color: #FFFFFF;
	border: 1px solid #CBCBCB;
	box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
}

.social a:hover {
	background-color: #000000;
	transition: all ease 0.5s;
}

.social i {
	font-size: 20px;
	color: #2B2B2B;
}

@media ( max-width :1000px) {
	* {
		box-sizing: border-box;
	}
	.model {
		height: 460px;
		left: 90%;
		transform: translateX(-90%);
	}
	.text-container {
		top: 46%;
	}
	.text-container button {
		margin: 5px;
	}
	.about-container {
		width: 90%;
		border-radius: 10px;
	}
	.about-container img {
		height: 200px;
	}
	.about-text {
		width: 400px;
	}
	.about-text p:nth-child(1) {
		font-size: 20px;
	}
	.about-text p:nth-child(2) {
		font-size: 10px;
	}
	.about-text p:nth-child(3), .about-text p:nth-child(4) {
		font-size: 14px;
	}
	.services {
		padding: 2% 5% 0px 5%;
	}
	.box-container {
		justify-content: center;
		flex-wrap: wrap;
	}
	.services {
		height: auto;
	}
	.box-1, .box-2, .box-3 {
		flex-grow: 1;
		margin: 10px;
	}
	.contact-me {
		height: 200px;
	}
	.contact-me p {
		font-size: 26px;
	}
	.contact-me button {
		font-size: 14px;
		height: 35px;
		width: 160px;
	}
}

@media ( max-width :750px) {
	section {
		background-image: none;
		background-color: #f7f7f7;
	}
	.model {
		display: none;
	}
	.toggle {
		display: block;
	}
	.text-container p:nth-child(2) {
		line-height: 40px;
		margin: 0px;
		padding: 0px;
	}
	.text-container {
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 80%;
	}
	nav ul {
		margin: 0px;
		padding: 0px;
		background-color: #ebeef4;
		flex-direction: column;
		position: fixed;
		left: 0;
		top: 0;
		width: 100%;
		height: 100vh;
		box-sizing: border-box;
		display: flex;
		justify-content: center;
		align-items: center;
		z-index: 1;
		display: none;
	}
	nav ul li {
		padding: 10px;
	}
	nav ul li a {
		font-family: calibri;
		font-size: 1.4em;
		text-transform: uppercase;
		color: #5c5c5c;
	}
	nav ul li a:hover {
		color: #121212;
	}
	.toggle:before {
		content: '\f0c9';
		font-family: fontAwesome;
		line-height: 30px;
		z-index: 1;
	}
	.toggle.active:before {
		content: '\f00d';
		position: fixed;
		right: 25px;
		line-height: 0px;
	}
	nav.active ul {
		display: flex !important;
	}
	.about-container {
		top: 0px;
		flex-direction: column;
		width: 90%;
		height: auto;
		padding: 30px 0px;
		align-items: center;
	}
	.about-text {
		width: 90%;
		text-align: center;
	}
	.services-text {
		width: 100%;
	}
	.contact-me {
		height: 180px;
	}
	.contact-me p {
		font-size: 18px;
	}
	.contact-me button {
		width: 150px;
		height: 33px;
	}
	footer p:nth-child(2) {
		width: 90%;
	}
}
</style>

</head>
<body>
	<section>
		<!--navigation------------------------->
		<nav>
			<!--logo-->
			<a href="#" class="logo">G T Internet</a>
			<!--menu-->
			<ul>
				<li><a href="#" class="active">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact us</a></li>
				<li><a href="#">Team</a></li>
			</ul>
			<!--bars--------------->
			<div class="toggle"></div>

		</nav>
	</section>
	<!--text----------------------->
	<div class="text-container">
		<p>Hello,</p>
		<p>I&#8217;M MICHAEL</p>
		<p>
			Freelancing with Designer <br>& Devolper
		</p>
		<button class="hire-btn">Hire me</button>
		<button class="down-cv">Download CV</button>
	</div>
	<!--model---------------------->
	<img alt="model" class="model" src="images/model.png">
	<div class="about-container">
		<!--img-->
		<img src="images/about-img.png" />
		<!--about-me-text-->
		<div class="about-text">
			<p>About Me</p>
			<p>Devolper & Designer</p>
			<p>Hello,My name is Touseeq Ijaz. I am a Devolper and also a
				Designer.If you have asany Project or if you want make a software
				for your bisnes conatact me.I make as soon as possibale.You really
				like my work,if you don&#8217;t i change this until you like I give
				you seticfaction result.</p>
			<p>I am a Devolper and also a Designer.If you have asany Project
				or if you want make a software for your bussniess conatact me.I make
				your project as soon as possible.</p>
			<button>Hire Me</button>
			<button>Download CV</button>
		</div>
	</div>
	<!--services-container---------------------------->
	<div class="services ">
		<!--text-->
		<div class="services-text ">
			<p>Services</p>
			<p>Qualites Requaid</p>
			<p>if you want make a software for your bussniess conatact me.I
				make as soon as possibale.You really like my work, if you
				don&#8217;t i change this until you like if you want make a software
				for your bussniess conatact me.I make as soon</p>
		</div>
		<div class="box-container">
			<!--1------------->
			<div class="box-1">
				<span>1</span>
				<p class="heading">Web Design</p>
				<p class="details">if you want make a software for your
					bussniess conatact me.I make as soon as possibale.You really like
					my work, if you don&#8217;t i change this until you like if you
					want.</p>
				<button>Read More</button>
			</div>
			<!--2------------->
			<div class="box-2">
				<span>2</span>
				<p class="heading">Web Devoloment</p>
				<p class="details">if you want make a software for your
					bussniess conatact me.I make as soon as possibale.You really like
					my work, if you don&#8217;t i change this until you like if you
					want.</p>
				<button>Read More</button>
			</div>
			<!--3------------->
			<div class="box-3">
				<span>3</span>
				<p class="heading">Security SEO</p>
				<p class="details">if you want make a software for your
					bussniess conatact me.I make as soon as possibale.You really like
					my work, if you don&#8217;t i change this until you like if you
					want.</p>
				<button>Read More</button>
			</div>
		</div>
	</div>
	<!--if you have any project in your mind contact me-->
	<div class="contact-me">
		<p>If You Have Any Project In Your Mind ?</p>
		<button>Contact me</button>
	</div>
	<!--footer--------------->
	<footer>
		<!--heading-->
		<p>Going-To Internet</p>
		<!--paragraph-->
		<p>I makeas soon as possibale.You really like my work,if you
			don&#8217;t i change this until you like I give you seticfaction
			result</p>
		<!--social-->
		<div class="social-icons">
			<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
				class="fab fa-twitter"></i></a> <a href="#"><i
				class="fab fa-instagram"></i></a> <a href="#"><i
				class="fab fa-youtube"></i></a>
		</div>
		<!--copyright-->
		<p class="copyright">Copyright by Goin-To Internet</p>
	</footer>
	<!--social-attach-bar-->
	<div class="social">
		<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
			class="fab fa-twitter"></i></a> <a href="#"><i
			class="fab fa-instagram"></i></a> <a href="#"><i
			class="fab fa-youtube"></i></a>
	</div>

</body>
<!--JQUery-------------------->
<script type="text/javascript" src="js/JQuery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.toggle').click(function(){
			$('.toggle').toggleClass('active')
			$('nav').toggleClass('active')
		})
	})
	</script>
</html>