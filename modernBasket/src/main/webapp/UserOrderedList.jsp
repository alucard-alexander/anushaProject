<%@page import="com.anu.bean.Order_Items"%>
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
<link rel="stylesheet" href="css/test.css">
<%@ include file="Headings.jsp"%>
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

.cen .cen1{
	position: relative;
	margin: 10%;
	box-sizing: border-box;
	display: flex;
	height:auto;
	width:auto;
	max-height: 100%;
	max-width: 100%;
	overflow: hidden;
	padding: 20px;
	width: 70%;
	border: 2px solid #A8EB12;
	border-radius: 10px;
}

.cen .cen1 .imgleft{
	margin: 10px;
	margin-right: 30px;
}

.cen .cen1 .contenets1{
	margin: 10px;
	margin-left: 30px;
}


.cen1 .imgleft img{
	position : relative;
	max-height: 100%;
	max-width: 100%;
	height: 300px;
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
			System.out.println("Testing");
			response.sendRedirect("Login.jsp");
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
	else {
	%>
	<div class="cen111">
		<div
			style="color: green; top: 20%; position: absolute; font-size: 25px;">
			<h3>Ordered List</h3>
		</div>
	</div>
	<%
		}
	%>

	<div class="cen">

		<%
			//for (Order_Items o1 : new ViewDAO().getorderedList(2)) {
				for (Order_Items o1 : new ViewDAO()
						.getorderedList(Integer.parseInt(session.getAttribute("id").toString()))) {
		%>


		<div class="cen1">

			<div class="imgleft">
				<img src="itemsimages/<%=o1.getItem_id()%>.jpg">
			</div>


			<div class="contents1">

				<div class="myTextNormal">
					<b>ITEM NAME:</b>
					<%=o1.getItems_name().toUpperCase()%>
				</div>
				<div class="myTextNormal">
					<b>QUANTITY:</b><%=o1.getQuantity()%>
				</div>
				<div class="myTextNormal">
					<b>PRICE:</b><%=o1.getPrice()%>
				</div>
				<div class="myTextNormal">
					<b>GST:</b>2%
				</div>
				<div class="myTextNormal">
					<b>TOTAL PRICE:</b><%=o1.getTotal_price()%>
				</div>
				<div class="myTextNormal">
					<b>STATUS:</b><%=o1.getStatus()%>
				</div>


				<form name="frm<%=o1.getOrder_id()%>">
					<input type="hidden" value=<%=o1.getOrder_id()%> name="oid">
					<input type="hidden" value=<%=o1.getItem_id()%> name="iid">
					<input type="button" value="CANCEL" class="btnOrder"
						onclick="cancelOrder1(<%=o1.getOrder_id()%>)">
					<%
						if (!(o1.getStatus().equalsIgnoreCase("processing..."))) {
					%>
					<input type="button" value="MODIFY" class="btnOrder"
						onclick="modify(<%=o1.getOrder_id()%>)">
					<%
						}
					%>
				</form>
			</div>
		</div>
		<%
			}
		%>

	</div>
	<%
		}
	%>

</body>
</html>