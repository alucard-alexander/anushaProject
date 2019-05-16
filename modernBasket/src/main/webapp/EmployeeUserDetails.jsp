<%@page import="com.anu.bean.Address"%>
<%@page import="com.anu.bean.Person"%>
<%@page import="com.anu.DAO.ViewDAO"%>
<%@page import="com.anu.bean.Order"%>
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

<style type="text/css">
.cen {
	justify-content: center;
	display: flex;
	
}

.cen1 {
	top: 30%;
	position: absolute;
	color: white;
	font-size: 25px;
}

b{
	font-size: 35px;
	color: navy;
	
}

label {
	color: silver;
}
</style>
</head>
<body>
	<%
		if (session.getAttribute("id") == null) {
			System.out.println("Testing");
			response.sendRedirect("AdministratorLogin.jsp");
		} else {
	%>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2));">
		<div class="container1">
			<nav>
				<h2 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h2>
				<ul>
					<li><a href="EmployeeHomePage.jsp">Ordered List </a></li>
					<li><a href="EmployeeDeliveredList.jsp">Delivered List </a></li>
					<li><a href="Logout.do">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<%
	Order o1= new ViewDAO().getorder1(Integer.parseInt(request.getParameter("oid")));
	String[] ItemName= new ViewDAO().getitemName_Price(o1.getItem_id()); 
	Person p1 = new ViewDAO().getPerson(o1.getPid());
	Address a1= new ViewDAO().getAddress(p1.getAddressId());
	%>
	<div class="cen">
		<div class="cen1">
			<div>
				<label><b> Item Name: </b></label><label><%=ItemName[0]%></label>
			</div>
			<div>
				<label><b>Quantity: </b></label><label><%=o1.getQuantity()%></label>
			</div>
			<div>
				<label><b>Total Cost: </b></label><label><%=o1.getTotal_price()%></label>
			</div>
			<div>
				<label><b>Customer Name: </b></label><label><%=p1.getFname()%> <%=p1.getMname()%> <%=p1.getLname()%></label>
			</div>
			<div>
				<label><b>Customer Address: </b></label><label><%=a1.getDoor_no()%> <%=a1.getStreet()%> <%=a1.getLandmark()%><br><div style="left: 20px;"> <%=a1.getArea()%> <%=a1.getPincode()%> <%=a1.getState()%> <%=a1.getCity()%></div></label>
			</div>
			<div>
				<label><b>Customer Phno: </b></label><label><%=p1.getPh_no()%></label>
			</div>
		</div>
	</div>
	<%
		}
	%>

</body>
</html>