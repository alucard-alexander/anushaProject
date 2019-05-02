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
.pos {
	top: 30%;
	left: 50%;
	position: absolute;
	max-width: 80%;
	max-height: 80%;
	width: 40%;
}

.container {
	padding: 5%;
}

#contents{
margin: 5%;
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
					<li><a href="Login">Log in</a></li>
					<li><a href="">Register</a></li>
					<li><a href="">Items List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<form>
		<div class="pos">
			<div class="container">
				<div class="myText"	id="contents">Login</div>
				<input type="text" class="input2" name="uname" id="contents">
				<input type="password" class="input2" id="contents">
			</div>
		</div>

	</form>

</body>
</html>