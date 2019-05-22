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

<%@ include file="Headings.jsp"%>


<script type="text/javascript">
function order(id,name){
	
	/* console.log(name);
	x=prompt("Enter the quantity of elements "+ name);
	formname='frm'+id; 
	document.forms[formname].action='Order.do?quantity='+x;
	document.forms[formname].submit();  */
	formname='frm'+id; 
	document.forms[formname].action='userBeforeLoginItem.do';
	document.forms[formname].submit();
}
</script>
</head>
<body>

	
	
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