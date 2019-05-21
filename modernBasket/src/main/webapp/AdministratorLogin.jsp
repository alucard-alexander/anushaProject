<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/CheckBoxDesign.css">
<link rel="stylesheet" href="css/Buttons.css">
<link rel="stylesheet" href="css/shake.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/shake.js"></script>

<style type="text/css">


.myContainer1 {
	max-width: 100%;
	width: 100%;
	position: absolute;
	display: grid;
	top: 30%;
	justify-content: center;
}

.myContainer1 .myContainer2 {
	display: flex;
	justify-content: space-around;
}


</style>

<script type="text/javascript">
	function change() {
		if (document.getElementById("chec").checked) {
			document.getElementById("check1").innerHTML = "Admin";
		} else {
			document.getElementById("check1").innerHTML = "Employee";
		}
	}

	
</script>

</head>
<body>
	<header
		style="background: linear-gradient(225deg, #764ba2,#a1c4fd)">
		<div class="container">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>
				<ul>
					<li><a href="Login.jsp">Log in</a></li>
					<li><a href="UserRegistration.jsp">Register</a></li>
					<li><a href="UserHomePage.jsp">Items List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
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
		<div style="color: green; top: 20%; position: absolute;font-size: 25px;">
			<h3><%=msg%></h3>
		</div>
	</div>
	<%
		}
	%>
	<form action="" method="post" name="frm" id="frm">
		<div class="myContainer1">
			<div class="myTextHeadings" style="font-size: 70px;color: white;">Login</div>
			<br>
			<div style="display: flex;" class="c">
				<input type="checkbox" value="admin" id="chec" onclick="change()"
					style="margin-left: 20px; margin-top: 15px;"> <label
					style="color: white; margin-left: 40px; font-size: 40px; margin-bottom: 10px; text-shadow: 0 0 5px #13b3ff;"
					id="check1">Employee</label>
			</div>
			<input type="text" class="text1" name="uname" id="uname" placeholder="User Name"><br> <input
				type="password" class="text1" name="pass" id="pass" placeholder="password"><br>
			<div class="myContainer2">
				<input type="button" class="btnGreen" Value="Log In" id="clickhere4"> <input type="reset" class="btnGreen">
			</div>
		</div>
	</form>
</body>
</html>