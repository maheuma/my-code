<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="index.jsp" %>
    
    <br>
    <br>
    <br>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script type="text/javascript" src="/resources/bootstrap-3.3.6-dist/js/bootstrap-3.3.6-dist.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobile Zone</title>
<style>
body{

background-color:#CCFB5D;
}
div{
container-color:#CCFB5D;
}

button{
color:#1589FF;
}
</style>
</head>
<body>
<div class="container">
		<h1 class="well">Login Here</h1>
		<div class="col-sm-12 well">
			<div class="row">
				<form:form>

       <div class="col-sm-6 form-group">
								<label>UserName</label> <input type="text"
									placeholder="Enter UserName Here.."  rows="2"class="form-control">
							</div>
							
							
							<div class="col-sm-6 form-group">
								<label>Password</label> <input type="text"
									placeholder="Enter Password Here.." rows="2" class="form-control">
							</div>


<center>  <button type="submit" class="btn btn-default">Submit</button>
</form:form>

</div>

</body>
</html>