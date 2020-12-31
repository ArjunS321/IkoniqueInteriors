<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: #d8d8d8;
}
h1 {
  text-align: center;
}
.social-menu ul {
    position: absolute;
    top: 90%;
    left: 60%;
    transform: translate(-50%, -50%);
    padding: 0;
    margin: 0;
    display: flex;
}
.social-menu ul li {
    list-style: none;
    margin: 0 10px;
}
.social-menu ul li .fa {
    color: #000000;
    font-size: 25px;
    line-height: 50px;
    transition: .5s;
}
.social-menu ul li .fa:hover {
    color: #ffffff;
}
.social-menu ul li a {
    position: relative;
    display: block;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background-color: white;
    text-align: center;
    transition: 0.5s;
    transform: translate(0,0px);
    box-shadow: 0px 7px 5px rgba(0, 0, 0, 0.5);
}
.social-menu ul li a:hover {
    transform: rotate(0deg) skew(0deg) translate(0, -10px);
}
.social-menu ul li:nth-child(1) a:hover {
    background-color: #3b5999;
}
.social-menu ul li:nth-child(2) a:hover {
    background-color: #55acee;
}
.social-menu ul li:nth-child(3) a:hover {
    background-color: #e4405f;
}
.social-menu ul li:nth-child(4) a:hover {
    background-color: #cd201f;
}
.social-menu ul li:nth-child(5) a:hover {
    background-color: #0077B5;
}
</style>
<title>About Us</title>
   <%@include file="commoncss.jsp"%>
   <%@include file="FontFaces.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class=animsition>
<div class="about-section">
  
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@include file="appointmentcards.jsp" %>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<div class="social-menu">
  
  <ul>
    <li><a href=""><i class="fa fa-facebook"></i></a></li>
    <li><a href=""><i class="fa fa-twitter"></i></a></li>
    <li><a href=""><i class="fa fa-instagram"></i></a></li>
    <li><a href=""><i class="fa fa-youtube"></i></a></li>
    <li><a href=""><i class="fa fa-linkedin"></i></a></li>
  </ul>
</div>
</div>
<%@include file="commonjs.jsp"%>
</body>
</html>


<!-- <div class="container"> -->
<!--     <h3>Social Media</h3> -->
<!--     <br /> -->
<!--     *-*-*-*-*-*-*-*-*-*-*-*  ANIMATED ICONS  *-*-*-*-*-*-*-*-*-*-*-* -->
<!--     <div class="col-md-12"> -->
<!--       <ul class="social-network social-circle"> -->
<!--         <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li> -->
<!--         <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li> -->
<!--         <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li> -->
<!--         <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li> -->
<!--         <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li> -->
<!--       </ul> -->
<!--     </div> -->
<!-- </div> -->