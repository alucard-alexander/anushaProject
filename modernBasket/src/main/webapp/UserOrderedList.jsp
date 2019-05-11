<%@page import="com.anu.DAO.ViewDAO"%>
<%@page import="com.anu.bean.Order"%>
<%@page import="com.sun.tools.javac.util.List"%>
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
	<%if(session.getAttribute("id") == null){ 
		response.sendRedirect("Login.jsp");	
	}
	%>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2));">
		<div class="container1">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>
				<ul>
					<li><a href="ItemsUser.jsp">Items List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
					<li><a href="Logout.do">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<% for(Order o1: new ViewDAO().getorderedList(Integer.parseInt(session.getAttribute("id").toString()))){  %>
			

	<%} %>
</body>
</html>