<%@page import="com.anu.DAO.ViewDAO"%>
<%@page import="com.anu.bean.Person"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/test.css">
<%@ include file="Headings.jsp"%>

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

.cen .cen1 {
	position: relative;
	margin: 10%;
	box-sizing: border-box;
	display: flex;
	height: auto;
	width: auto;
	max-height: 100%;
	max-width: 100%;
	overflow: hidden;
	padding: 20px;
	width: 70%;
	border: 2px solid #A8EB12;
	border-radius: 10px;
}

.cen .cen1 .imgleft {
	margin: 10px;
	margin-right: 30px;
}

.cen .cen1 .contenets1 {
	margin: 10px;
	margin-left: 30px;
}

.cen1 .imgleft img {
	position: relative;
	max-height: 100%;
	max-width: 100%;
	height: 300px;
}
</style>

<script type="text/javascript">
	function reset1(id) {
		formname='frm'+id; 
		document.forms[formname].action='AdminEmployeePassReset.jsp';
		document.forms[formname].submit();
	}
	
	function delete1(id){
		formname='frm'+id; 
		document.forms[formname].action='EmployeeDelete.do';
		document.forms[formname].submit();
	}
</script>


</head>
<body>
	<div class="cen">

		<%
			//for (Order_Items o1 : new ViewDAO().getorderedList(2)) {
				for (Person p : new ViewDAO().getAllEmployee()) {
		%>


		<div class="cen1">

			<div class="imgleft">
				<img src="systemImages/male.jpg">
			</div>


			<div class="contents1">

				<div class="myTextNormal">
					<b>Employee NAME:</b>
					<%=p.getFname()+" "+p.getMname()+" "+p.getLname()%>
				</div>
				<div class="myTextNormal">
					<b>Date of birth:</b><%=p.getDob()%>
				</div>
				<div class="myTextNormal">
					<b>Gender:</b><%=p.getGender()%>
				</div>
				<div class="myTextNormal">
					<b>User Name:</b><%=p.getUserName()%>
				</div>
				<div class="myTextNormal">
					<b>Phone nulber:</b><%=p.getPh_no()%>
				</div>
				<div class="myTextNormal">
					<b>Email:</b><%=p.getEmail()%>
				</div>


				<form name="frm<%=p.getId()%>" method="post">
					<input type="hidden" value=<%=p.getId()%> name="id">
					<input type="hidden" value=<%=p.getUserName()%> name="uname">
					<input type="hidden" value=<%=p.getAddressId()%> name="aid">
					<input type="button" value="Delete" class="btnOrder"
						onclick="delete1(<%=p.getId()%>)">
					
					<input type="button" value="Password Reset" class="btnOrder"
						onclick="reset1(<%=p.getId()%>)">
					
				</form>
			</div>
		</div>
		<%
			}
		%>

	</div>


</body>
</html>