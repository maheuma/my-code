<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MobileZone</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!--Angularjs library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
	.pagination-test>li:first-child>a, .pagination-test>li:last-child>a{
    background: url(http://www.myiconfinder.com/uploads/iconsets/7e81c2f3697b91ee17fe6ed6348c232a-Arrow.png);
  background-size: 100% 100%;
  height: 34px;
  width: 34px;
}
	 body {
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


	

</head>
<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"> <span
					class="glyphicon glyphicon-mobile"></span>Mobilezone
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

					<li><a href="view"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                        <li><a href="Logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
								
				</ul>	
		</div>
		
	</nav>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60" >
	<pagination page="currentPage" max-size="noOfPages" total-items="totalItems" items-per-page="entryLimit" class="pagination-test"previous-text="" next-text=""></pagination>
	<div class="container">
		<c:forEach items="${cview}" var="product">
			<div class="col-sm-6">
				<br> <br> <br> <br> 
				<div class="item">
					<img src="resources/images/${product.id}.jpg" style="height: 350px" class="img-responsive" >
				</div>
			</div>
			<div class="col-sm-6">
				<br> <br> <br> <br> <b>ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					</b>
				${product.id} <br> <br> <b>NAME:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					</b>
				${product.name} <br> <br>  <b>PRICE:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					</b>
				${product.price} <br> <br> <b>DESCRIPTION:&nbsp&nbsp&nbsp
					</b> ${product.description} <br> <br> <br>
				
			 <a href="buy"><button onclick="myFunction()"
						class="btn btn-success">BUY NOW</button></a>
				<a href="<c:url value= '/cart${product.id}'/>"><button onclick="myFunction1()" class="btn btn-success">ADD
					TO CART</button></a>
				<!-- <script>
			function myFunction() {
				confirm("Press ok to buy a product!");
			}
		</script>
				<script>
			function myFunction1() {
				confirm("Press ok to add the item to cart!");
			}
		</script> -->
			</div>
		</c:forEach>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="Footer.jsp"%>
</body>
</html>