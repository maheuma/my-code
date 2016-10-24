<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	background-color: #660033;
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
      <a class="navbar-brand" href="#">MobileZone</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Category">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddCategory">AddCategory</a></li>
          <li><a href="ViewCategory">ViewCategory</a></li>
          <li class="dropdown">
         </li>
         </ul>
         <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Supplier">Supplier
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddSupplier">AddSupplier</a></li>
          <li><a href="ViewSupplier">ViewSupplier</a></li>
          <li class="dropdown">
          </li>
          </ul>
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Product">Product
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddProduct">AddProduct</a></li>
          <li><a href="ViewProduct">ViewProduct</a></li>
           <li class="dropdown">
        </ul>
      </li>
       
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
                        <li><a href="Logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
								
								</ul>
  </div>
</nav>

<body ng-app="supapp" ng-controller="SupplierController">
<div align ="center"><label>search:<input type="text"  ng-model="searchbox"></label></div>
<table class="table table-striped">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="s in supplier | filter : searchbox">
<td>{{s.id}}</td>
<td>{{s.name}}</td>
<td>{{s.description}}</td>
<td><a href="<c:url value="/editsup{{s.id}}" />" ng-click="enabledEditor()">
Edit</a></td>
<td><a href="<c:url value="/removesup{{s.id}}" />" ng-click="remove()">
Delete</a></td>
</tr>
</tbody>
</table>
<script type="text/javascript">
var suppliers=${suplis};
var supapp=angular.module("supapp",[]);
supapp.controller("SupplierController",function($scope){
	$scope.supplier=suppliers;
});


</script>
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
	<%@ include file="Footer.jsp"%>
</body>

</html>