<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/InputBox.css">
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
<body style="background: linear-gradient(315deg, #764ba2, #a1c4fd);height: 100vh;">
	<form action="userRegistration.do" method="post" class="">
		<div style="font-size: 20px; justify-content: center; display: flex;position: absolute;top: 25px;left: 40%">
					<h1>Address</h1>
				</div>
		<div class="cen">
			<div class="cen1">
				  
				<h2 style="color: red; text-align: center;font-size: 20px;"></h2>

				<input class="text1 space1" name="dno" id="dno" placeholder="Enter Door Number" required>

				<input class="text1 space1" name="area" id="area" placeholder="Enter Area" required> 
				
				<input class="text1 space1" name="state" id="state" placeholder="Enter State" required>
				
				<input class="text1 space1" name="landmark" id="landmark" placeholder="Enter Lanbdmark" required>

				<input class="text1 space1" name="pincode" id="pincode" min="6" max="6"	placeholder="Enter pincode" required>
				
				<input class="text1 space1" name="street" id="street" placeholder="Enter street" required>
				 
				<input class="text1 space1" name="city" id="city" placeholder="enter city" required>
				
				<div style="display: flex; margin: 5px;">
					<input type="submit" class="btnGreen" value="Register" id="clickhere2" style="margin-right: 10px;"> 
					<input type="Reset"	class="btnGreen" value="Reset">
				</div>
			</div>
		</div>
			<input type="hidden" name="fname"
				value=<%=request.getParameter("fname")%>> <input
				type="hidden" name="mname" value=<%=request.getParameter("mname")%>>
			<input type="hidden" name="lname"
				value=<%=request.getParameter("lname")%>> <input
				type="hidden" name="dob" value=<%=request.getParameter("dob")%>>
			<input type="hidden" name="uname"
				value=<%=request.getParameter("uname")%>> <input
				type="hidden" name="pass" value=<%=request.getParameter("pass")%>>
			<input type="hidden" name="gender"
				value=<%=request.getParameter("gender")%>> <input
				type="hidden" name="email" value=<%=request.getParameter("email")%>>
			<input type="hidden" name="phno"
				value=<%=request.getParameter("phno")%>>

		
	</form>
</body>

</html>