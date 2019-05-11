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

<script type="text/javascript">
function order(id,name){
	
	console.log(name);
	x=prompt("Enter the quantity of elements "+ name);
	formname='frm'+id; 
	document.forms[formname].action='Order.do?quantity='+x;
	document.forms[formname].submit(); 
}
</script>

</head>
<body>
	<% if(session.getAttribute("id") != null){
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
					<li><a href="UserOrderedList.jsp">Order List</a></li> 
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
					<li><a href="Logout.do">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<%
	}else{
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
					<li><a href="Login.jsp">Log in</a></li>
					<li><a href="UserRegistration.jsp">Register</a></li>
					<li><a href="ItemsUser.jsp">Items List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
				</ul>
			</nav>
		</div>
	</header>
	
	<%} %>
	
	<div class="container"
		style="top: 20%; left: 100px; right: 100px; position: absolute;">
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
				<form name="frm<%=i.getId()%>" method="post">
					<input type="hidden" value=<%=i.getId()%> name="id">
					<input type="button" value="input" onclick="order(<%=i.getId()%>,'<%=i.getItemName()%>')">
				</form>
			</div>
		</div>
		<%
			}
			} catch (Exception e) {

			}
		%>
	</div>

</body>
</html>