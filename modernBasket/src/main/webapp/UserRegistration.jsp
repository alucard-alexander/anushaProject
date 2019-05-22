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
<link rel="stylesheet" href="css/shake.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/shake.js"></script>
<style type="text/css">
.cen {
	padding-top: 5%;
	justify-content: center;
	display: flex;
	max-width: 100%;
	padding-bottom: 10px;
}

.cen1 {
	justify-content: center;
	display: grid;
	width: 50%;
	border: 2px solid #A8EB12;
	border-radius: 10px;
}

.space1 {
	width: 500px;
}
</style>



</head>
<body style="background: linear-gradient(45deg, #764ba2, #a1c4fd);height: 100vh;">
	<form action="address.jsp" method="post">
		<div
			style="font-size: 20px; justify-content: center; display: flex; top: 20px; position: absolute; left: 40%;">
			<h1>Registration</h1>
		</div>
		<div class="cen">
			<div class="cen1">

				<div
					style="font-size: 20px; justify-content: center; display: flex; color: red">
					<h2></h2>
				</div>
				<input class="text1 space1" name="fname" id="fname"
					placeholder="Enter First name"> <input
					class="text1 space1" name="mname" id="mname"
					placeholder="Enter middle name"> <input
					class="text1 space1" name="lname" placeholder="Enter last name"
					id="lname"> <input class="text1 space1" type="date"
					name="dob" id="dob" required> <input class="text1 space1"
					name="uname" placeholder="Please enter the user name" id="uname">

				<input type="password" class="text1 space1" name="pass"
					placeholder="Please enter the password" id="pass" required
					onkeyup="pass1()">
				<div style="display: flex; left: 10px;">
					<div style="margin-left: 10px; margin-right: 20px;">
						<input type="radio" name="gender" value="male" class="form-radio"
							id="m"><label style="top: 30em" class="label1">Male</label>
					</div>
					<div>
						<input type="radio" name="gender" value="female"
							class="form-radio" id="f"><label style="top: 30em"
							class="label1">Female</label>
					</div>
				</div>
				<input class="text1 space1" name="email" type="email" id="email"
					placeholder="Please enter the email address"> <input
					class="text1 space1" name="phno" min="10" max="10"
					placeholder="Please enter the phone number" id="phno">
				<div style="display: flex; margin: 5px;">
					<input type="submit" class="btnGreen" id="clickhere1"
						value="Register" style="margin-right: 10px;"> <input
						type="Reset" class="btnGreen" value="Reset">
				</div>
			</div>
		</div>

	</form>
</body>
</html>