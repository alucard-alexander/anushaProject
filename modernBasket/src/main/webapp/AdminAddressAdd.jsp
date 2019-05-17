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
	function delete1(id) {
		formname = 'frm' + id;
		document.forms[formname].action = 'AdminDeleteOrder.do';
		document.forms[formname].submit();

	}
</script>


<body>
	<%
		if (session.getAttribute("id") == null) {
			System.out.println("Testing");
			response.sendRedirect("AdministratorLogin.jsp");
		} else {
	%>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2)); height: 100%;">
		<div class="container1">
			<nav>
				<h2 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h2>
				<ul>
					<li><a href="Admin.jsp">Ordered List </a></li>
					<li><a href="AdminDeliveredList.jsp">Delivered List </a></li>
					<li><a href="AdminEmployeeAdd.jsp">Add employee</a></li>
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

	<%
		}
	%>

<body class="centered" id="imageFullFit" style="background-image: url('systemImages/address1.jpg');">
	<form action="AdminEmolyeeAdd.do" method="post" class="container">>
		
		<div class="row" >
			<div class="col" style="margin: 10px 30%  20px">
				<h1>Address Registration</h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="dno" placeholder="Enter Door Number">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="area" placeholder="Enter Area">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="state" placeholder="Enter State">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="landmark" placeholder="Enter Lanbdmark">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="pincode" min="6" max="6" placeholder="Enter pincode">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="street" placeholder="Enter street">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<input class="text1" name="city" placeholder="enter city">
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<div style="margin: 10px 30%  20px">
					<input type="submit" value="Register" class="btn btn-success">
				</div>
			</div>
		</div>
					<input type="hidden" name="fname" value=<%=request.getParameter("fname")%>>
					<input type="hidden" name="mname" value=<%=request.getParameter("mname") %>>
					<input type="hidden" name="lname" value=<%=request.getParameter("lname")%>>
					<input type="hidden" name="dob" value=<%=request.getParameter("dob") %>>
					<input type="hidden" name="uname" value=<%=request.getParameter("uname") %>>
					<input type="hidden" name="pass" value=<%=request.getParameter("pass") %>>
					<input type="hidden" name="gender" value=<%=request.getParameter("gender") %>>
					<input type="hidden" name="email" value=<%=request.getParameter("email") %>>
					<input type="hidden" name="phno" value=<%=request.getParameter("phno") %>>
	</form>
</body>
</html>