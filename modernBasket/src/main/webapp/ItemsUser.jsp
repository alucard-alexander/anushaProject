<%@page import="com.anu.bean.Items"%>
<%@page import="com.anu.DAO.ViewDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/itemsuser.css">
</head>
<body style="margin: 10px; padding: 5px; background-color: #4a5656">
	<div class="container">

		<%
			try {
				for (Items i : new ViewDAO().getUserItems()) {
		%>



		<div class="box">
			<img src="itemsimages/<%=i.getId()%>.jpg" class="imag1">
			<div class="details">
					<%=i.getType()%><br>
					<%=i.getItemName()%><br>
					<%=i.getPrice()%><br>
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

</body>
</html>