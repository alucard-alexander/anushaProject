<%@page import="com.anu.DAO.ViewDAO"%>
<%@page import="com.anu.bean.Items"%>
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
</head>
<body>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2));">
		<div class="container1">
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

		<div class="container" style="top: 30%; position: absolute;">
			<%
				try {
					for (Items i : new ViewDAO().getUserItems()) {
			%>
			<div class="box">
				<div class="imgBox">
					<img src="itemsimages/<%=i.getId()%>.jpg">
				</div>
				<div class="details">
					<h4>
						<%=i.getType()%><br>
						<%=i.getItemName()%><br>
						<%=i.getPrice()%><br>
					</h4>
					<form action="" name="frm<%=i.getId()%>">
						<input type="button" value="input">
					</form>
				</div>
			</div>
			<%
				}
				} catch (Exception e) {

				}
			%>
		</div>
	</header>
</body>
</html>