<!DOCTYPE html>
<html>
<head>
<title>About Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

/* .home */
/* { */
/* 	background-color: grey; */
/* } */

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
<%@include file="FontFaces.jsp"%>

<%@include file="commoncss.jsp"%>
</head>
<body>
	<div class="noti__item js-item-menu about-section col-md-12 home" >
		<a href="customer.jsp"><i class="fas fa-home"></i></a>

	</div>
	<div class="about-section">
  <h1>About Us Page</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="images/icon/avatar-01.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Jane Doe</h2>
        <p class="title">CEO & Founder</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>jane@example.com</p>
<!--         <p><button class="button">Contact</button></p> -->
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/icon/avatar-01.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Mike Ross</h2>
        <p class="title">Art Director</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>mike@example.com</p>
<!--         <p><button class="button">Contact</button></p> -->
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/icon/avatar-01.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>John Doe</h2>
        <p class="title">Designer</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>john@example.com</p>
<!--         <p><button class="button">Contact</button></p> -->
      </div>
    </div>
  </div>
</div>
<div class="about-section">
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
    <h3>Social Media</h3>
    <br />
    <!-- *-*-*-*-*-*-*-*-*-*-*-*  ANIMATED ICONS  *-*-*-*-*-*-*-*-*-*-*-* -->
    <div class="col-md-12">
      <ul class="social-network social-circle">
        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
      </ul>
    </div>
</div>
</div>
<%@include file="commonjs.jsp"%>
</body>
</html>