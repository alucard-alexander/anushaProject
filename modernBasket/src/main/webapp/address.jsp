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

<style type="text/css">
.cen {
	padding-top: 5%;
	justify-content: center;
	display: flex;
	max-width: 100%;
	padding-bottom: 10px;
}

.cen1 {

	
	/*
	border: 2px solid #A8EB12;
	border-radius: 10px; */
}

.space1 {
	width: 80px;
}
</style>

</head>
<body class="centered" id="imageFullFit"
	style="background-image: url('systemImages/address1.jpg'); background-size: cover;">
	<form action="userRegistration.do" method="post" class="container">
		
		<div class="cen">
			<div class="cen1">
				 <div style="font-size: 20px; justify-content: center; display: flex;">
					<h1>Sign up</h1>
				</div> 


				<input class="text1" name="dno" placeholder="Enter Door Number">

				<input class="text1" name="area" placeholder="Enter Area"> 
				<input class="text1" name="state" placeholder="Enter State">
				<input class="text1" name="landmark" placeholder="Enter Lanbdmark">

				<input class="text1" name="pincode" min="6" max="6"	placeholder="Enter pincode">
				<input class="text1" name="street" placeholder="Enter street"> 
				<input class="text1" name="city" placeholder="enter city">
				
				<div style="display: flex; margin: 5px;">
					<input type="submit" class="normal" value="Register" style="margin-right: 10px;"> 
					<input type="Reset"	class="opposite" value="Reset">
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