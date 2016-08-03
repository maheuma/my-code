<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <%@ include file="index.jsp" %>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script type="text/javascript" src="/resources/bootstrap-3.3.6-dist/js/bootstrap-3.3.6-dist.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {

width:50%;
margin:auto;

}

h1{
font-size:50px;
color:#C71585;
}
h3{

font-size:30px;
color:#0000FF
}
body
{
background-color:#7FFFD4;
}
</style>
<title>Insert title here</title>
</head>
<body>
 
<h1>WELCOME TO MOBILE ZONE</h1>
<h3> Feel Your Favorite Shopping </h3>



     
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1" ></li>
    <li data-target="#myCarousel" data-slide-to="2" ></li>
    <li data-target="#myCarousel" data-slide-to="3" ></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src=<c:url value="resources/images/iphon.jpg"/> alt="iphon">
    </div>

<div class="item ">
<img src=<c:url value="resources/images/sam.jpg"/> alt="sam">
      
    </div>

    <div class="item ">
    <img src=<c:url value="resources/images/htc.jpg"/> alt="htc">
      
    </div>

    <div class="item ">
    <img src=<c:url value="resources/images/micr.jpg"/> alt="micr">
      
    
  </div>

 <!-- left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</body>
</html>