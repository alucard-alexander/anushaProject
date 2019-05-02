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
	position: absolute; top : 30%;
	left: 30%; 
	max-width: 100%;
	max-height: 100%;
	width: 50%;
	height: auto;
	top: 30%;
	justify-content: center;
	display: grid;
	place-items: center;
	/*display: flex;
	align-items: center;
	justify-content: center;*/
	
}

 .pos .but{
 	width: 100%;
 	position: relative;
 	height: auto;
	background-color: white;
	justify-content: space-between ;
	margin: auto;
	
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
			<div class="myText">Login</div><br>
			<input type="text" class="input2" name="uname"><br> 
			<input type="password" class="input2"><br>
			<div class="but">
				<input type="submit"> <input type="reset">
			</div>
		</div>

	</form>

</body>
</html>