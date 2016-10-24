<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration Page</title>
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

                       
					
                        <li><a href="Logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
								
				</ul>	
		</div>
		
	</nav>
	

<br>
<br>

<h1>
	<center>
		<h1>Registration Form <a target="_blank" href="http://www.picturesanimations.com/jewellery/"><img src="http://www.picturesanimations.com/j/jewellery/4.gif" alt="Klik hier voor meer gratis plaatjes" border="0" /></a></h1>
	</center>
</h1>
<br>
<br>

<div class="container">
	<form:form action="Register" method="POST" commandName="user"
		class="form-horizontal" role="form">
		
		<div class="form-group">
			<label class=" col-sm-2 control-label">First Name:</label>
			<div class="col-sm-10">
				<form:input path ="firstname" pattern="[A-Za-z]{1,32}" placeholder="Enter first name" class="form-control" 
					required="TRUE" title="should not contain special character and symbols" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Last Name:</label>
			<div class="col-sm-10">
				<form:input path="lastname" pattern="[A-Za-z]{1,32}" placeholder="Enter last name" class="form-control"
					required="TRUE" title="should not contain special character and symbols" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Username:</label>
			<div class="col-sm-10">
				<form:input path="username" placeholder="Enter last name" class="form-control"
					required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Address:</label>
			<div class="col-sm-10">
				<%-- <form:input path="address" placeholder="Enter address" class="form-control" required="TRUE" title="should not be empty"/> --%>
			<form:textarea class="form-control" type="text" rows="5" max="100"
							path="address" placeholder="Enter address" required="true"></form:textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">City:</label>
			<div class="col-sm-10">
				<form:input path="city" type="text" placeholder="Enter City " class="form-control" required="TRUE" 

title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">State:</label>
			<div class="col-sm-10">
				<form:input path="state" type="text" placeholder="Enter State " class="form-control" required="TRUE" 

title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Zip:</label>
			<div class="col-sm-10">
				<form:input path="zip"  pattern="[0-9]{6}" placeholder="Enter " class="form-control" required="TRUE" 

title="Zipcode should be in Six Digit" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"> Age:</label>
			<div class="col-sm-10">
				<form:input path="age"  min="18" max="99" placeholder="Enter age" class="form-control"  required="TRUE"  title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Gender:</label></br>
			<div class="col-sm-10">
		<label class="radio-inline"><form:radiobutton path="gender" value="M" required="TRUE"/>Male</label>
		<label class="radio-inline"><form:radiobutton path="gender" value="F" required="TRUE"/>Female</label>
		
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Phone Number:</label>
			<div class="col-sm-10">
				<form:input path="phonenumber"  pattern="[789][0-9]{9}"
					 placeholder="Enter Phone Number" class="form-control" required="true"
					title="should be in the form of 10 digit starting with 789!" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">E-Mail Id:</label>
			<div class="col-sm-10">
				<form:input path="email" class="form-control" pattern="[^@\s]+@[^@\s]+\.[^@\s]+"
					placeholder="Enter email" required="TRUE"
					title="should be in the form of abc@example.com" />
			</div>
		</div>





		<div class="form-group">
			<label class="col-sm-2 control-label">Password:</label>
			<div class="col-sm-10">
				<form:input path ="password" class="form-control" type="password" name="password"
					placeholder="Enter password" required="TRUE"
					title="should not be empty" />
			</div>
			
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Confirm Password:</label>
			<div class="col-sm-10">
				<form:input path ="confirmpassword" class="form-control" type="password"
					placeholder="Enter password" required="TRUE"
					title="should not be empty" />
			</div>
		</div>
		<center>
		<button type="submit" class="btn btn-info">Submit</button> 
		<button type="Reset" class="btn btn-info">Reset</button>
	</form:form>
	
		
	</center>
	<%@ include file="Footer.jsp"%>
</body>
</html>
