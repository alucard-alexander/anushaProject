<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="css/InputBox.css">

<!-- start -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<!--  -->



</head>
<body class="centered" id="imageFullFit" style="background-image: url('systemImages/UserLogin1.jpg');">
	<form action="address.jsp" method="post" class="container">
	<div class="row" >
		<div style="margin: 10px 30%  20px">
			<h1>Sign up</h1>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" name="fname" placeholder="Enter First name">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" name="mname" placeholder="Enter middle name">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" name="lname" placeholder="Enter last name">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" type="date" name="dob">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" name="uname" placeholder="Please enter the user name">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input type="password" class="text1" name="pass" placeholder="Please enter the password">
		</div>
	</div>
	<div class="row">
		<div class="col" style="margin: 10px 30%  20px;">
			<input  type="radio" name="gender" value="male">Male
		
			<input  type="radio" name="gender" value="female">Female
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" name="email" type="email" placeholder="Please enter the email address">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<input class="text1" name="phno" min="10" max="10" placeholder="Please enter the phone number">
		</div>
	</div>
	<div class="row">
	
		<div class="col" >
			<div style="margin: 10px 30%  20px"> 
				<input  type="submit" value="Register" class="btn btn-success">
			</div>
		</div>
	
	</div>
	</form>
</body>
</html>