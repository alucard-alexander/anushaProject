<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/InputBox.css">

<!-- start -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!--  -->

</head>
<body class="centered" id="imageFullFit" style="background-image: url('systemImages/address1.jpg');">
	<form action="userRegistration.do" method="post" class="container">>
		
		<div class="row" >
			<div class="col" style="margin: 10px 30%  20px">
				<h1>Address Registration</h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="dno" placeholder="Enter Door Number">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="area" placeholder="Enter Area">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="state" placeholder="Enter State">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="landmark" placeholder="Enter Lanbdmark">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="pincode" min="6" max="6" placeholder="Enter pincode">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="street" placeholder="Enter street">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="city" placeholder="enter city">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<div style="margin: 10px 30%  20px">
					<input type="submit" value="Register" class="btn btn-success">
				</div>
			</div>
		</div>
					<input type="hidden" name="fname" value=<%=request.getParameter("fname")%>>
					<input type="hidden" name="mname" value=<%=request.getParameter("mname") %>>
					<input type="hidden" name="lname" value=<%=request.getParameter("lname") %>>
					<input type="hidden" name="dob" value=<%=request.getParameter("dob") %>>
					<input type="hidden" name="uname" value=<%=request.getParameter("uname") %>>
					<input type="hidden" name="pass" value=<%=request.getParameter("pass") %>>
					<input type="hidden" name="gender" value=<%=request.getParameter("gender") %>>
					<input type="hidden" name="email" value=<%=request.getParameter("email") %>>
					<input type="hidden" name="phno" value=<%=request.getParameter("phno") %>>
	</form>
</body>

</html>