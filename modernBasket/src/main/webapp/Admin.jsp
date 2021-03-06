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
	function process(id) {
		formname='frm'+id; 
		document.forms[formname].action='EmployeeUpdateStatus.do?status=Processing...';
		document.forms[formname].submit();
	}
	
	function details(id){
		formname='frm'+id; 
		document.forms[formname].action='EmployeeUserDetails.jsp';
		document.forms[formname].submit();
	}
	
	function delivery(id){
		formname='frm'+id; 
		document.forms[formname].action='EmployeeUpdateStatus.do?status=Delivered';
		document.forms[formname].submit();
	}
	
</script>


<body>
	<%
		if (session.getAttribute("id") == null) {
			System.out.println("Testing");
			response.sendRedirect("AdministratorLogin.jsp");
		} else {
	
		if (session.getAttribute("msg") != null) {
				String msg = session.getAttribute("msg").toString();
				session.removeAttribute("msg");
				//String msg = "Logged in properly";
	%>
	<div class="cen111">
		<div
			style="color: green; top: 20%; position: absolute; font-size: 25px;">
			<h3><%=msg%></h3>
		</div>
	</div>
	<%
		}
	%>


	<div class="cen">
		<table style="top: 25%">
			<tr>
				<td colspan="7" style="border: transparent; height: 50px;">
					<div
						style="width: 100%; border: 2px solid black; border-radius: 10px; height: 50px; padding-top: 10px;">
						<label style="font-size: 30px;">Pending</label>
					</div>
				</td>
			</tr>
			<tr>
				<th><h1>ITEM NAME</h1></th>
				<th><h1>QUANTITY</h1></th>
				<th><h1>PRICE</h1></th>
				<th><h1>GST</h1></th>
				<th><h1>TOTAL PRICE</h1></th>
				<th><h1>STATUS</h1></th>
				<th><h1>UPDATE</h1></th>
			</tr>
			<%
				//for (Order_Items o1 : new ViewDAO().getorderedList(2)) {
					for (Order_Items o1 : new ViewDAO().getAllUserorderedListPending("pending")) {
			%>
			<tr>
				<td><%=o1.getItems_name().toUpperCase()%></td>
				<td><%=o1.getQuantity()%></td>
				<td><%=o1.getPrice()%></td>
				<td>10%</td>
				<td><%=o1.getTotal_price()%></td>

				<td><%=o1.getStatus()%></td>
				<form name="frm<%=o1.getOrder_id()%>" method="post">
					<input type="hidden" value=<%=o1.getOrder_id()%> name="oid">
					<input type="hidden" value=<%=o1.getItem_id()%> name="iid">
					<td><input type="button" class="but" value="Details"
						onclick="details(<%=o1.getOrder_id()%>)"> <input
						type="button" class="but" value="Process.."
						onclick="process(<%=o1.getOrder_id()%>)"></td>
				</form>
			</tr>
			<%
				}
			%>

			<tr>
				<td colspan="7" style="border: transparent;">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="7" style="border: transparent; height: 50px;">
					<div
						style="width: 100%; border: 2px solid black; border-radius: 10px; height: 50px; padding-top: 10px;">
						<label style="font-size: 30px;">Process...</label>
					</div>
				</td>
			</tr>
			<tr>
				<th><h1>ITEM NAME</h1></th>
				<th><h1>QUANTITY</h1></th>
				<th><h1>PRICE</h1></th>
				<th><h1>GST</h1></th>
				<th><h1>TOTAL PRICE</h1></th>
				<th><h1>STATUS</h1></th>
				<th><h1>UPDATE</h1></th>
			</tr>
			<%
				//for (Order_Items o1 : new ViewDAO().getorderedList(2)) {
					for (Order_Items o1 : new ViewDAO().getAllUserorderedListPending("processing...")) {
			%>
			<tr>
				<td><%=o1.getItems_name().toUpperCase()%></td>
				<td><%=o1.getQuantity()%></td>
				<td><%=o1.getPrice()%></td>
				<td>10%</td>
				<td><%=o1.getTotal_price()%></td>
				<td><%=o1.getStatus()%></td>
				<form name="frm<%=o1.getOrder_id()%>" method="post">
					<input type="hidden" value=<%=o1.getOrder_id()%> name="oid">
					<input type="hidden" value=<%=o1.getItem_id()%> name="iid">
					<td><input type="button" class="but" value="Details"
						onclick="details(<%=o1.getOrder_id()%>)"> <input
						type="button" class="but" value="Delivered"
						onclick="delivery(<%=o1.getOrder_id()%>)"></td>
				</form>
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