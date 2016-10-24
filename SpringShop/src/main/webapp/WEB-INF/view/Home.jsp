<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 40%;
	margin: auto;
}
@import url(https://fonts.googleapis.com/css?family=Quicksand:400,700);

</style>
<title>SpringShop</title> 

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
 body{
  background: linear-gradient(to right,  #FF66FF 0%,
 	  #FF6EFC 10%,
 	  #FF75FA 15%,
 	  #FF7DF7 20%,
 	  #FF85F5 25%,
 	  #FF8CF2 30%,
 	  #FF94F0 35%,
 	  #FF9CED 40%,
 	  #FFA3EB 45%,
 	  #FFABE8 50%,
 	  #FFB2E6 55%,
 	  #FFBAE3 60%,
 	  #FFC2E0 65%
 	  #FFC9DE 70%,
 	  #FFD1DB 75%,
 	  #FFD9D9 80%,
 	  #FFE0D6 85%,
 	  #FFE8D4 90%,
 	  #FFF0D1 92%,
 	  #FFF7CF 95%,
  #FFFFCC 100%,
 	 );
  } 
  body {
  background-color:black;
	font: 400 15px Helvetica, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h1 {
	font-size: 24px;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
	font-size: 24px;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.bg-grey {
	background-color: #FFCCCC;
	color: black;
	font-family: Montserrat, sans-serif;
}

.logo {
	color: #660033;
	font-size: 200px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #660033;
}

.carousel-indicators li {
	border-color: #660033;
}

.carousel-indicators li.active {
	background-color: #660033;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 250%;
	margin: auto;
}

.tales {
	width: 200%;
}

.carousel-inner {
	max-height: 600px !important;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.container-fluid {
	padding: 20px 50px;
}

.navbar {
	background-color: #581845;
	font-size: 16px !important;
}

.navbar .navbar-brand {
	color: #FFFFFF !important;
}

.navbar .li a {
	color: #FFF !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #660033 !important;
	background-color: #FFCCCC !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #FFCCCC !important;
}

footer .glyphicon {
	font-size: 24px;
	color: #660033;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}

</style>





<title>MobileZone</title> 

</head>
	
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">

	<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"> <span
					class="glyphicon glyphicon-mobile"></span>mobilezone
				</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="Home"><span
						class="glyphicon glyphicon-home"></span>Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> Category <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewProduct1?viewname=iphone">iphone</a></li>
						<li><a href="ViewProduct1?viewname=samsung">samsung</a></li>
						
						

					</ul></li>
					</ul>
			



			<ul class="nav navbar-nav navbar-right">		

                        <c:choose>
                        <c:when test="${empty loggedInUser }">
                        
						<li><a href="Registration"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="Login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
								</c:when>
					
					<c:when test="${not empty loggedInUser }">
					<li><a href="view"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                        <li><a href="Logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
								</c:when>
								</c:choose>
				</ul>	
		</div>
		
	</nav>
	
		
		<br>
		<div>
		
			<center><font color=#000000><font size="20"><font face="Harlow Solid Italic"><b><font color="#581845">MobileZone</b></font> </font></font></font></center>
			<!-- <div>
			<img src="logo.jpg" alt="logo" style="width:304px;height:228px;">
		</div> -->
	</div>
	
		

	<h1>
		<center><font face="Harlow Solid Italic"><font color="#581845">Feel your favorite</font></font><a href=http://yoursmiles.org/t-heart.php><img src=http://yoursmiles.org/tsmile/heart/t4529.gif></a></center>
	</h1>
	<br>

	<div class="container"></div>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="image1"
				class="active"></li>
			<li data-target="#myCarousel" data-slide-to="image7"></li>
			<li data-target="#myCarousel" data-slide-to="image3"></li>
			<li data-target="#myCarousel" data-slide-to="image4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src=<c:url value="resources/images/image1.jpg"/>
					
					style="height: 420px" class="img-responsive" alt="image1">
						<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src=<c:url value="resources/images/image7.jpg"/>
					style="height: 420px" class="img-responsive" 
					alt="image7">
					<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src=<c:url value="resources/images/image3.jpg"/>
					style="height: 420px" class="img-responsive" 
					alt="image3">
					<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src=<c:url value="resources/images/image4.jpg"/>
					style="height: 420px" class="img-responsive" 
					alt="image4">
					<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src=<c:url value="resources/images/banner1.jpg"/>
					style="height: 420px" class="img-responsive" 
					alt="banner1">
					<div class="carousel-caption"></div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	
	


   
	<script type="text/javascript">
	
	</script>
	<%@ include file="Footer.jsp"%>
	
</body>
</html>