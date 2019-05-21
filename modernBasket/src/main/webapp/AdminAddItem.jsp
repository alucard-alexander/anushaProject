<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="Headings.jsp"%>
</head>

<style type="text/css">
.inside {
	top: 30%;
	position: absolute;
	display: grid;
}

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
	/*function process() {
		var iname = document.getElementById("iname").value;
		var iprice1 = document.getElementById("iprice").value;
		//var str='ItemAdd.do?iname='+iname+'&iprice='+iprice1;
		//alert(str);
		document.frm.action = 'ItemAdd.do?iname='+iname+'&iprice='+iprice;
		document.frm.submit();
	}*/
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

<body>
	<div class="cen">
		<div class="inside">
			<form action="AdminAddItem1.do" method="post" name="frm"
				enctype="multipart/form-data">
				<div>
					<input type="text" style="width: 500px;" name="iname" id="iname" class="text1" placeholder="Enter the Item name">
				</div>
				<div>
					<input type="text" style="width: 500px;" name="iprice" id="iprice" class="text1" placeholder="Enter the Item Price">
				</div>
				<div>
					<label class="myTextNormal">Upload File image:</label> <input type="file" name="file">
				</div>
				<input type="submit" class="btnGreen" value="click here" id="clickhere5">
			</form>
		</div>
	</div>
</body>
<%
	}
%>
</html>