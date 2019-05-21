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
<link rel="stylesheet" href="css/CheckBoxDesign.css">
<link rel="stylesheet" href="css/Buttons.css">
<link rel="stylesheet" href="css/RadioButton.css">
<link rel="stylesheet" href="css/myText.css">
</head>
<body>

	<%
		if (session.getAttribute("id") == null) {
	%>
		<header
		style="background: linear-gradient(to right, #a1c4fd, #764ba2); height: auto;">
		<div class="container1">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>


				<ul>
					<li><input></li>
					<li><a href="Login.jsp">Log In</a></li>
					<li><a href="UserRegistration.jsp">Register</a></li>
					<li><a href="Index.jsp">Items List</a></li>
				</ul>
			</nav>
		</div>
	</header>
	
	<%
		} else if(session.getAttribute("type").toString().contentEquals("u")){
	%>
	<header
		style="background: linear-gradient(225deg, #764ba2,#a1c4fd);height: auto;">
		<div class="container1">
			<nav>
				<h2 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h2>
				<ul>
					<li><a href="UserHomePage.jsp">Items List</a></li>
					<li><a href="UserOrderedList.jsp">Ordered List</a></li>
					<li><a href="UserDeliveredList.jsp">Delivered List</a></li>
					<li><a href="Logout.do">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	
	<%
		}
	%>

</body>
</html>