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
<link rel="stylesheet" href="css/Buttons.css">
<style type="text/css">

.cen123{
	
	justify-content: center;
	display: flex;
	min-height: 100vh;
	overflow: hidden;
}

.check123{
	margin: 15%;
	padding: 10px;
	background-color:red;
	justify-content: center;
	height: 100%;

	display: grid;
}

.spacing{
	margin: 10px;
}

</style>

<script type="text/javascript">

function submission(){
	if (condition) {
		
	}
}

function notANumber(){
	var inputtxt=document.getElementById("fname").value;
	if (!isNaN(inputtxt)) {
	
		document.getElementById("fname").value= "";
	}
}

function number1(){
	var inputtxt=document.getElementById("phno").value;
	alert(inputtxt);
	if (isNaN(inputtxt)) {
		alert("here");
		document.getElementById("phno").value= "";
	}

}

</script>


</head>
<body style="background-image: url('systemImages/UserLogin1.jpg');">
	<form action="address.jsp" method="post">
	<div class="cen123">
		<div class="check123">
			<h1>Sign up</h1>
		
			<input class="text1 spacing" name="fname" placeholder="Enter First name" id="fname" onkeyup="notANumber()">
		
			<input class="text1" name="mname" placeholder="Enter middle name" id="mname">
		
			<input class="text1" name="lname" placeholder="Enter last name" id="lname">
		
			<input class="text1" type="date" name="dob" id="dob">
		
			<input class="text1" name="uname" placeholder="Please enter the user name" id="uname">
		
			<input type="password" class="text1" name="pass" placeholder="Please enter the password" id="pass">
		
			<input  type="radio" name="gender" value="male">Male
		
			<input  type="radio" name="gender" value="female">Female
		
			<input class="text1" name="email" type="email" id="email" placeholder="Please enter the email address">
		
			<input class="text1" name="phno" min="10" max="10" placeholder="Please enter the phone number" id="phno" onkeyup="number1()">
			<div style="display: flex; margin: 5px;">
				<input  type="submit" class="normal" value="Register">
				<input  type="Reset" class="opposite" value="Reset">
			</div>
		</div>
	</div>
	
	</form>
</body>
</html>