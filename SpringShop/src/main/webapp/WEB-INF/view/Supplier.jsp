<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
  h1 {
	font-size: 24px;
	color: #303030;
	font-weight: 600;
	margin-bottom: 10px;
	font-size: 24px;
}

.navbar {
	margin-bottom: 0;
	background-color: #622569;
	z-index: 9999;
	border: 0;
	font-size: 18px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 2px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar .navbar-brand {
	color: #FFFFFF !important;
}

.navbar .li a {
	color: #FFF !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #622569 !important;
	background-color: violet !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #FFCCCC !important;
}

footer .glyphicon {
	font-size: 24px;
	margin-bottom: 20px;
	color: #622569;
}
  
  }
  </style>
</head>
<body>
	<%@ include file="Admin.jsp"%>
<div class="container">
  <center><a href="AddSupplier"><h2>AddSupplier</h2></a></center>
  
  <br>
  <br>
  
</div>
<div class="container">
  <center><a href="ViewSupplier"><h2>ViewSupplier</h2></a></center>
  	<%@ include file="Footer.jsp"%>
</div>
</body>
</html>