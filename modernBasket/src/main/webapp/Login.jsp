<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/Buttons.css">
<link rel="stylesheet" href="css/RadioButton.css">
<link rel="stylesheet" href="css/myText.css">
<link rel="stylesheet" href="css/shake.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/shake.js"></script>

<style type="text/css">
.myContainer1 {
	max-width: 100%;
	width: 100%;
	position: absolute;
	display: grid;
	top: 30%;
	justify-content: center;
}

.myContainer1 .myContainer2 {
	display: flex;
	justify-content: space-around;
}



</style>

<script type="text/javascript">



function forg(){
	document.frm.action="UserPasswordReset.jsp";
	document.frm.submit();
	
	
}
</script>

</head>
<body>
	<header
		style="background: linear-gradient(225deg, #764ba2,#a1c4fd);">
		<div class="container">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>
				<ul>
					<li><a href="Login.jsp">Log in</a></li>
					<li><a href="UserRegistration.jsp">Register</a></li>		
					<li><a href="AdministratorLogin.jsp">Adminstration</a></li>
				</ul>
			</nav>
		</div> 
	</header>
	<%System.out.println();%>
	
	
	<%
		if (session.getAttribute("msg") != null) {
		String msg = session.getAttribute("msg").toString();
		session.removeAttribute("msg");
		//String msg = "Logged in properly";
	%>
	<div class="cen111">
		<div style="color:green;; top: 20%; position: absolute;font-size: 25px;">
			<h3><%=msg%></h3>
		</div>
	</div>
	<%
		}
	%>
	<form action="Login.do" method="post" name="frm">
		<div class="myContainer1"> 
			<div class="myTextHeadings" style="justify-content: center;">Login</div>
			<br> 
			<h2></h2>
			<input type="text" class="text1" name="uname" id="uname" placeholder="User Name"><br>
			<%System.out.println(request.getParameter("id"));%>
			<input type="password" class="text1" name="pass" id="pass" placeholder="password"><br>
			<div class="myContainer2">
				<input type="hidden" value=<%=request.getParameter("id")%> name="iid">
				<input type="submit" class="btnGreen" Value="Log In" id="clickhere"> 
				<input type="reset" class="btnGreen">
			</div>
			<div class="myContainer2">
				<input type="button" class="btnGreen" value="Forgot Password"  onclick="forg()">
			</div>
		</div>
	</form>
</body>
</html>