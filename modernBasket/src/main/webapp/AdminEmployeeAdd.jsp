<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/itemsuser.css">
<link rel="stylesheet" href="css/Buttons.css">
<link rel="stylesheet" href="css/RadioButton.css">



<link rel="stylesheet" href="css/shake.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/shake.js"></script>
<!-- 
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/itemsuser.css">
 -->
 <%@ include file="Headings.jsp"%>
</head>

<style type="text/css">
body {
	left: 30%;
}

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

.check123 {
	background-color: green;
	padding: 10px;
	width: 100%;
}

.but {
	border-radius: 10px;
	font-size: 15px;
	background: transparent;
	width: 100px;
	height: 30px;
}

.can {
	color: #EF5353;
	border: 2px solid #EF5353
}

.can:hover {
	/*background-color: green;*/
	background-color: #EF5353;
	color: black;
}

.mod {
	color: #EFEA53;
	border: 2px solid #EFEA53;
}

.mod:hover {
	background-color: #EFEA53;
	color: black;
}

{
/*background-color: green;*/
background-color :
	#EF5353 ; color
	.mod {
	/*background-color: green;*/
	background-color: #EF5353;
	color: black;
}

.mod {
	color: #EFEA53;
	border: 2px solid #EFEA53;
}

.mod
:hover {
	background-color: #EFEA53;
	color: black;
}

table {
	top: 30%;
	width: 100%;
	max-width: 90%;
	position: absolute;
	text-align: center;
	border-collapse: collapse;
}

th:first-child {
	border-left: transparent;
}

th:last-child {
	border-right: transparent;
}

th {
	background: linear-gradient(black, gray);
	color: white;
	border: 1px solid #080808;
	border-top-color: transparent;
	font-size: 15px;
	padding-top: 5px;
	padding-bottom: 5px;
}

td {
	font-size: 20px;
	border: 1px solid #080808;
	padding: 10px;
}

th:first-child {
	border-top-left-radius: 25px;
}

th:last-child {
	border-top-right-radius: 25px;
}
</style>


<script type="text/javascript">
	function delete1(id) {
		formname = 'frm' + id;
		document.forms[formname].action = 'AdminDeleteOrder.do';
		document.forms[formname].submit();

	}
</script>


<body>
	<%
		if (session.getAttribute("id") == null) {
			System.out.println("Testing");
			response.sendRedirect("AdministratorLogin.jsp");
		} else {

		if (session.getAttribute("msg") != null) {
				String msg = session.getAttribute("msg").toString();
				session.removeAttribute("msg");
				//String msg = "Logged in properly";
	%>
	<div class="cen111">
		<div
			style="color: green; top: 20%; position: absolute; font-size: 25px;">
			<h3><%=msg%></h3>
		</div>
	</div>
	<%
		}
	%>

<body>
	<form action="AdminAddressAdd.jsp" method="post">
		<div
			style="font-size: 20px; justify-content: center; display: flex; top: 20%; position: absolute; left: 40%;">
			<h1>Employee Sign up</h1>
		</div>
		<div class="cen">
			<div class="cen1">

				<div
					style="font-size: 20px; justify-content: center; display: flex; color: red">
					<h3></h3>
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

<%
	}
%>

</html>