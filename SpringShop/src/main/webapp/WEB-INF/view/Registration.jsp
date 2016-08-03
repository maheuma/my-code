<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="index.jsp" %>
    <br>
    <br>
    <br>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style>
body{
background-color:#F9B7FF;
}
</style>
<head>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script type="text/javascript" src="/resources/bootstrap-3.3.6-dist/js/bootstrap-3.3.6-dist.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
		<h1 class="well">Registration Form</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<form:form>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label> <input type="text"
									placeholder="Enter First Name Here.." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label> <input type="text"
									placeholder="Enter Last Name Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3"
								class="form-control"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label> <input type="text"
									placeholder="Enter City Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label> <input type="text"
									placeholder="Enter State Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>Zip</label> <input type="text"
									placeholder="Enter Zip Code Here.." class="form-control">
							</div>
							
							
							<div class="form-group">
							<label>Email Id</label>
							<textarea placeholder="Enter Email Id Here.." rows="1"
								class="form-control"></textarea>
						    </div>
						
						
							<div class="form-group">
							<label>Mobile Number</label>
							<textarea placeholder="Enter Phone number Here.." rows="1"
								class="form-control"></textarea>
						    </div>
						
						
                            <div class="form-group">
							<label>D.O.B</label>
							<textarea placeholder="Enter D.O.B Here.." rows="1"
								class="form-control"></textarea>
						    </div>
							
				
                            <div class="container">
                            <form:form role="form">
                            <div class="form-group">
                            <label for="Gender">Gender</label>
                          
                            <div class="radio">
                            <label class="radio-inline"><input type="radio" name="optradio">Male</label>
                            <label class="radio-inline"><input type="radio" name="optradio">Female</label>
                            <label class="radio-inline"><input type="radio" name="optradio">transgender</label>
                          
   
                            </div>
                          
                            <div class="form-group">
						    <label>Password</label>
						    <textarea placeholder="Enter Password here.." rows="1"
						         class="form-control"></textarea>
						    </div>

                            <div class="form-group">
						    <label>Confirm Password</label>
						    <textarea placeholder="Enter Password again." rows="1" 
						             class="form-control"></textarea>
						         </div>
							


<center><button type="submit" class="btn btn-default">Submit</button>

<button type="reset" class="btn btn-default">Reset</button>
</form:form>
</div>

</body>
</html>
