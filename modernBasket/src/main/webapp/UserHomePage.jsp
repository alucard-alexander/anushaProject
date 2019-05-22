<%@page import="com.anu.DAO.ViewDAO"%>
<%@page import="com.anu.bean.Items"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function order(id,name){
	
	/* console.log(name);
	x=prompt("Enter the quantity of elements "+ name);
	formname='frm'+id; 
	document.forms[formname].action='Order.do?quantity='+x;
	document.forms[formname].submit();  */
	formname='frm'+id; 
	document.forms[formname].action='Calculation.jsp';
	document.forms[formname].submit();
}
</script>
<%@ include file="Headings.jsp"%>
</head>
<body>
	<%
		if (session.getAttribute("id") == null) {
			response.sendRedirect("Login.jsp");
		}
	%>

	<%
		if (session.getAttribute("msg") != null) {
			String msg = session.getAttribute("msg").toString();
			session.removeAttribute("msg");
			//String msg = "Logged in properly";
	%>
	<div class="cen111">
		<div
			style="color: green; top: 10%; position: absolute; font-size: 25px;">
			<h3><%=msg%></h3>
		</div>
	</div>
	<%
		}
	%>

	<div class="container" style="top: 20%; left: 100px; right: 100px; position: absolute;" >
		<%
			try {
				for (Items i : new ViewDAO().getUserItems()) {
		%>
		<div class="box">
			<div class="imgBox">
				<img src="itemsimages/<%=i.getId()%>.jpg">
			</div>
			<div class="details">
				<h4 class="myTextNormal" style="justify-content: center;display: grid;">
				Name: <%=i.getItemName()%><br>
				Price: <%=i.getPrice()%><br>
				</h4>
				<form name="frm<%=i.getId()%>" method="post" style="justify-content: center;display: grid;">
					<input type="hidden" value=<%=i.getId()%> name="id"> 
					<input type="button" value="order" class="btnItem" onclick="order(<%=i.getId()%>,'<%=i.getItemName()%>')">
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