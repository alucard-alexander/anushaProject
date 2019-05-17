<%@page import="com.anu.DAO.ViewDAO"%>
<%@page import="com.anu.bean.Order_Items"%>
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

<style type="text/css">
.but {
	border-radius: 10px;
	font-size: 15px;
	background: transparent;
	width: 100px;
	height: 30px;
}

.can {
	color: #EF5353;
	border: 2px solid #EF5353
}

.can:hover {
	/*background-color: green;*/
	background-color: #EF5353;
	color: black;
}

.mod {
	color: #EFEA53;
	border: 2px solid #EFEA53;
}

.mod:hover {
	background-color: #EFEA53;
	color: black;
}

.cen {
	justify-content: center;
	display: flex;
}

table {
	top: 30%;
	width: 100%;
	max-width: 90%;
	position: absolute;
	text-align: center;
	border-collapse: collapse;
}

th:first-child {
	border-left: transparent;
}

th:last-child {
	border-right: transparent;
}

th {
	background: linear-gradient(black, gray);
	color: white;
	border: 1px solid #080808;
	border-top-color: transparent;
	font-size: 15px;
	padding-top: 5px;
	padding-bottom: 5px;
}

td {
	font-size: 20px;
	border: 1px solid #080808;
	padding: 10px;
}

th:first-child {
	border-top-left-radius: 25px;
}

th:last-child {
	border-top-right-radius: 25px;
}
</style>


<script type="text/javascript">
	function modify(id) {
		formname='frm'+id; 
		document.forms[formname].action='UserModifyOrder.jsp';
		document.forms[formname].submit();
	}
	
	function cancelOrder1(id){
		formname='frm'+id; 
		document.forms[formname].action='UserOrderCancelConfirm.jsp';
		document.forms[formname].submit();
	}
</script>


<body>
	<%
		if (session.getAttribute("id") == null) {
			response.sendRedirect("Login.jsp");
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
					<li><a href="UserHomePage.jsp">Items List</a></li>
					<li><a href="UserOrderedList.jsp">Order List</a></li> 
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
					<li><a href="Logout.do">Logout</a></li>
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
	
	<div class="cen">
		<table>
			<tr>
				<th><h1>ITEM NAME</h1></th>
				<th><h1>QUANTITY</h1></th>
				<th><h1>PRICE</h1></th>
				<th><h1>GST</h1></th>
				<th><h1>TOTAL PRICE</h1></th>
				<th><h1>STATUS</h1></th>
			</tr>
			<%
				//for (Order_Items o1 : new ViewDAO().getorderedList(2)) {
					for (Order_Items o1 : new ViewDAO()
							.getDeliveredList(Integer.parseInt(session.getAttribute("id").toString()))) {
			%>
			<tr>
				<td><%=o1.getItems_name().toUpperCase()%></td>
				<td><%=o1.getQuantity()%></td>
				<td><%=o1.getPrice()%></td>
				<td>10%</td>
				<td><%=o1.getTotal_price()%></td>

				<td><%=o1.getStatus()%></td>
				
			</tr>
			<%
				}
			%>
		</table>
	</div>
	<%
		}
	%>
</body>
</html>