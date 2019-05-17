<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/itemsuser.css">

<style type="text/css">

.cen123{
	justify-content: center;
	display: grid;
	
	margin: 15px;
	max-width: 80%;
}

.check123{
	background-color: green;
	padding: 10px;
	width: 100%;
}

</style>


</head>
<body style="background-image: url('systemImages/UserLogin1.jpg');">
	<form action="address.jsp" method="post">
	<div class="cen123">
		<div class="check123">
			<h1>Sign up</h1>
		</div>
		<div class="check123">
			<input class="text1" name="fname" placeholder="Enter First name">
		</div>
		<div class="check123">
			<input class="text1" name="mname" placeholder="Enter middle name">
		</div>
		<div class="check123">
			<input class="text1" name="lname" placeholder="Enter last name">
		</div>
		<div class="check123">
			<input class="text1" type="date" name="dob">
		</div>
		<div class="check123">
			<input class="text1" name="uname" placeholder="Please enter the user name">
		</div>
		<div class="check123">
			<input type="password" class="text1" name="pass" placeholder="Please enter the password">
		</div>
		<div class="check123">
			<input  type="radio" name="gender" value="male">Male
		</div>
		<div class="check123">
			<input  type="radio" name="gender" value="female">Female
		</div>
		<div class="check123">
			<input class="text1" name="email" type="email" placeholder="Please enter the email address">
		</div>
		<div class="check123">
			<input class="text1" name="phno" min="10" max="10" placeholder="Please enter the phone number">
		</div>
		<div class="check123">
			<input  type="submit" value="Register">
		</div>
	</div>
	</form>
</body>
</html>