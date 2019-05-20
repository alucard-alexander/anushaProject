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

<!-- 
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/itemsuser.css">
 -->
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
	.mod

{
	/*background-color: green;*/
	 
	background-color :
	#EF5353 ; color
	: black; }
	.mod

{
color
:
#EFEA53;
border
:
2px
solid
#EFEA53;
}
.mod
:hover
{
background-color
:
#EFEA53;
color
:
black;
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
	%>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2)); height: 100%;">
		<div class="container1">
			<nav>
				<h2 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h2>
				<ul>
					<li><a href="Admin.jsp">Ordered List </a></li>
					<li><a href="AdminDeliveredList.jsp">Delivered List </a></li>
					<li><a href="AdminEmployeeAdd.jsp">Add employee</a></li>
					<li><a href="Logout.do">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<%
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

<body style="background-image: url('systemImages/UserLogin1.jpg');">
	<form action="AdminAddressAdd.jsp" method="post">
		<div class="cen">
			<div class="cen1">
				<div class="ceck1234">
					<h1>Employee Sign up</h1>
				</div>

				<input class="text1" name="fname" placeholder="Enter First name">


				<input class="text1" name="mname" placeholder="Enter middle name">


				<input class="text1" name="lname" placeholder="Enter last name">


				<input class="text1" type="date" name="dob"> <input
					class="text1" name="uname" placeholder="Please enter the user name">


				<input type="password" class="text1" name="pass"
					placeholder="Please enter the password"> 
					
					<div style="display: flex;left: 10px;">
						<div style="margin-left: 10px;margin-right: 20px;">
							<input type="radio" name="gender" value="male" class="form-radio"><label style="top:30em" class="label1"> Male</label>
						</div>
						<div> 
							<input type="radio" name="gender" value="female" class="form-radio"><label style="top:30em" class="label1"> Female </label>
						</div>
					</div>
					<input class="text1" name="email" type="email" placeholder="Please enter the email address"> 
					<input class="text1" name="phno" min="10" max="10" placeholder="Please enter the phone number"> 
					<input type="submit" value="Register" class="normal">
			</div>
		</div>
	</form>
</body>

<%
	}
%>

</html>