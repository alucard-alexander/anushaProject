<%@page import="com.anu.DAO.ViewDAO"%>
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
<link rel="stylesheet" href="css/Buttons.css">
<link rel="stylesheet" href="css/RadioButton.css">


<style type="text/css">
.cen {
	justify-content: center;
	display: flex;
}

.con {
	top: 25%;
	position: absolute;
	max-width: 90%;
	max-height: 50%;
	display: flex;
}

.img1 {
	background-size: contain;
	display: flex;
	background-repeat: no-repeat;
	width: 500px;
	height: 500px;
	margin: 20px;
}

.details {
	font-size: 25px;
	color: white;
	margin: 20px;
	display: grid;
}

label b {
	font-size: 30px;
}

label {
	margin-right: 5px;
}
</style>


<script type="text/javascript">
	function cal() {
		var d=parseFloat(document.getElementById('pri').textContent);
		var e=parseInt(document.getElementById('quantity').value);
		var f=d*e;
		f=(0.02*f)+f;
		document.getElementById('tpr').innerText= f;
		document.getElementById('sub').focus;
		
		
	}
</script>

</head>
<body>

	<%
		if(session.getAttribute("id")==null){
			response.sendRedirect("Login.jsp");
		}else{
			/*System.out.println("hERE");
			System.out.println(request.getParameter("id"));
			System.out.println(request.getParameter("iid"));*/
			System.out.println(request.getParameter("id"));
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
	%>
	
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2));">
		<div class="container1">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>
				<ul>
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
	<%
		String[] itemName = new ViewDAO().getitemName_Price(id);
	
	%>
	<form name="frm" action="Order.do" method="post">
	<%//request.setAttribute("id", Integer.toString(id)); 
		//request.setAttribute("id", "4");
		session.setAttribute("item_id", id);
	%>
		<div class="cen">
			<div class="con">
				<div class="img1">
					<img src="itemsimages/<%=id%>.jpg">
				</div>
				<div class="details">
					<div>
						<label><b>Item Name: </b></label> <label><%=itemName[0].substring(0, 1).toUpperCase() + itemName[0].substring(1)%></label>
					</div>
					<div>
						<label><b>Item Price: </b></label> <label id="pri"><%=itemName[1]%></label>
					</div>
					<div>
						<label><b>Quantity:</b></label><input type="number" 
							name="quantity" id="quantity" onblur="cal()" class="text1" required>
					</div>
					<div>
						<label style="margin-right: 30px;"><b>GST:</b></label><label>2%</label>
					</div>
					<div>
						<label><b>Total Cost:</b></label><label id="tpr"></label>
					</div>
					<div>
						<input type="submit" value="Order" id="sub">
					</div>
					
				</div>
			</div>
		</div>
	</form>
	<%}%>
</body>
</html>