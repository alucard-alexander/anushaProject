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

.but1 {
	max-width: 40%;
	width: 30%;
	margin-top: 10px;
	background-color: #c7e8be;
	color: black;
}

.but1:hover, .but2:hover {
	color: white;
	background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .6))
}

.but2 {
	max-width: 40%;
	width: 30%;
	margin-top: 10px;
	background-color: yellow;
}
</style>

<script type="text/javascript">
	function change(){
		if (document.getElementById("chec").checked) {
			document.getElementById("check1").innerHTML ="Admin";
		}else{
			document.getElementById("check1").innerHTML ="Employee";
		}
	}

	function fun() {
		if (document.getElementById("chec").checked) {
			var uname = document.frm.uname.value;
			var pass = document.frm.pass.value;
			if (uname == "") {
				alert("Sorry, username should be entered")
				document.frm.uname.focus();
			} else if (pass == "") {
				alert("Sorry, password should be entered")
				document.frm.pass.focus();
			} else {
				document.frm.action = "AdminLogin.do?type=a";
				document.frm.submit();
			}
		} else {
			var uname = document.frm.uname.value;
			var pass = document.frm.pass.value;
			if (uname == "") {
				alert("Sorry, username should be entered")
				document.frm.uname.focus();
			} else if (pass == "") {
				alert("Sorry, password should be entered")
				document.frm.pass.focus();
			} else {
				document.frm.action = "AdminLogin.do?type=e";
				document.frm.submit();
			}
		}
	}
</script>

</head>
<body>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2)), url('systemImages/login.jpg') center no-repeat; background-size: cover">
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
	<form action="" method="post" name="frm">
		<div class="myContainer1">
			<div class="myText" style="font-size: 70px;">Login</div>
			<br>
			<div style="display: flex;" class="c">
				<input type="checkbox" value="admin" id="chec" onclick="change()" style="margin-left: 20px;margin-top: 15px;">
				<label style="color: white; margin-left: 40px; font-size: 40px; margin-bottom: 10px; text-shadow: 0 0 5px #13b3ff;" id="check1">Employee</label>
			</div>
			<input type="text" class="input2" name="uname"><br> <input
				type="password" class="input2" name="pass"><br>
			<div class="myContainer2">
				<input type="button" class="but1 input2" Value="Log In"
					onclick="fun()"> <input type="reset" class="but2 input2">
			</div>
		</div>
	</form>
</body>
</html>