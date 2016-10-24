<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mobilezone</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
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
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"> <span
					class="glyphicon glyphicon-jewellery"></span>mobilezone
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
	<br>
	<br>
	<center>
		<font face="Harlow Solid Italic"><h1>Card Details</h1></font>
		<div class="container">
			<form:form action="buy" method="post" commandName="buy"
				class="form-horizontal" role="form">
			
				<div class="form-group">
			<label class="col-sm-4 control-label">Cart Number:</label>
			<div class="col-sm-6">
				<form:input path="number"  placeholder="Enter Cart Number" class="form-control" required="TRUE" 

title="should not be empty" />
			</div>
		</div>
		 <div class="form-group">
			<label class="col-sm-4 control-label">Expiration Date:</label>
			<div class="col-sm-6"> 
				 <form:input path="expirationdate"  placeholder="Enter " class="form-control" required="TRUE" 

title="should not be empty" />  
</div>
</div>
 <!-- <div id="head2">
 <div class="form-group">
			<label class="col-sm-4 control-label">Expiration Date:</label>
			<div class="col-sm-6">
    <select id='gMonth2' onchange="show_month()">
    <option value=''>--Select Month--</option>
    <option selected value='1'>Janaury</option>
    <option value='2'>February</option>
    <option value='3'>March</option>
    <option value='4'>April</option>
    <option value='5'>May</option>
    <option value='6'>June</option>
    <option value='7'>July</option>
    <option value='8'>August</option>
    <option value='9'>September</option>
    <option value='10'>October</option>
    <option value='11'>November</option>
    <option value='12'>December</option>
    </select> 
    </div> -->
			
		<div class="form-group">
			<label class="col-sm-4 control-label">Card Holder Name:</label>
			<div class="col-sm-6">
				<form:input path="name"  placeholder="Enter name " class="form-control" required="TRUE"  title="should not be empty" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label"> CVV:</label>
			<div class="col-sm-6">
				<form:input path="cvv"  placeholder="Enter cvv" class="form-control"  required="TRUE"  title="should not be empty" />
			</div>
		</div>
				<a href="Makepayment"><form:button type="submit"
							class="btn btn-success">
							<spring:message text="Make Payment" />
						</form:button></a>
					<form:button type="reset" class="btn btn-info">
						<spring:message text="Reset" />
					</form:button> 
					
				</div>
				
			</form:form>
		</div>
	</center>
	<br>
	<br>
	<br>
	<%@ include file="Footer.jsp"%>
</body>
</html>
