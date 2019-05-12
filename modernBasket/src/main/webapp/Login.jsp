<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">

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
					<li><a href="ItemsUser.jsp">Items List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
				</ul>
			</nav>
		</div> 
	</header>
	<form action="Login.do" method="post">
		<div class="myContainer1">
			<div class="myText">Login</div>
			<br> 
			<input type="text" class="input2" name="uname"><br>
			<input type="password" class="input2" name="pass"><br>
			<div class="myContainer2">
				<input type="submit" class="but1 input2" Value="Log In"> 
				<input type="reset" class="but2 input2">
			</div>
		</div>
	</form>
</body>
</html>