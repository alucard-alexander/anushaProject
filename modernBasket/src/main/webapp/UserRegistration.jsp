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
<link rel="stylesheet" href="css/RadioButton.css">

<style type="text/css">

.cen{
	padding-top:5%;
	justify-content: center;
	display: flex;
	max-width: 100%;
	padding-bottom: 10px;
}

.cen1{
	
	justify-content: center;
	display: grid;
	width: 50%;
	border: 2px solid #A8EB12;
	border-radius: 10px;
	
}

.space1{
	width: 80px;
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
<body style="background-image: url('systemImages/UserLogin1.jpg');background-size: cover;">
	<form action="address.jsp" method="post">
	<div class="cen">
		<div class="cen1">
			<div style="font-size: 20px;justify-content: center;display: flex;">
				<h1>Sign up</h1>
			</div>
		
			<input class="text1" name="fname" placeholder="Enter First name" id="fname" onkeyup="notANumber()">
		
			<input class="text1" name="mname" placeholder="Enter middle name" id="mname">
		
			<input class="text1" name="lname" placeholder="Enter last name" id="lname">
		
			<input class="text1" type="date" name="dob" id="dob">
		
			<input class="text1" name="uname" placeholder="Please enter the user name" id="uname">
		
			<input type="password" class="text1" name="pass" placeholder="Please enter the password" id="pass">
			<div style="display: flex;left: 10px;">
				<div style="margin-left: 10px;margin-right: 20px;">
					<input  type="radio" name="gender" value="male" class="form-radio"><label style="top:30em">Male</label>
				</div>
				<div>
					<input  type="radio" name="gender" value="female" class="form-radio"><label style="top:30em">Female</label>
				</div>
			</div>
			<input class="text1" name="email" type="email" id="email" placeholder="Please enter the email address">
		
			<input class="text1" name="phno" min="10" max="10" placeholder="Please enter the phone number" id="phno" onkeyup="number1()">
			<div style="display: flex; margin: 5px;">
				<input  type="submit" class="normal" value="Register" style="margin-right: 10px;">
				<input  type="Reset" class="opposite" value="Reset">
			</div>
		</div>
	</div>
	
	</form>
</body>
</html>