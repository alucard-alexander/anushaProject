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
					<li><a href="Admin.jsp">Ordered List </a></li>
					<li><a href="AdminDeliveredList.jsp">Delivered List </a></li>
					<li><a href="AdminEmployeeAdd.jsp">Add an employee</a></li>
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
			<form action="AdminAddItem1.do" method="post" name="frm" enctype="multipart/form-data">
				<div>
					<label>Enter the Item name</label>
					<input  type="text" name="iname" id="iname">
				</div>
				<div>
					<label>Enter the Item Price</label>
					<input  type="text" name="iprice" id="iprice">
				</div>
				<div>
					<label>Upload File image</label>
					<input type="file" name="file">
				</div> 
				<input type="submit" value="click here" onclick="process()">
			</form>
		</div>
	</div>
</body>
<%
	}
%>
</html>