<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/shake.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/shake.js"></script>
<%@ include file="Headings.jsp"%>
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

.but1 {
	max-width: 40%;
	width: 30%;
	margin-top: 10px;
	background-color: #c7e8be;
	color: black;
}

.but1:hover, .but2:hover {
	color: white;
	background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .6))
}

.but2 {
	max-width: 40%;
	width: 30%;
	margin-top: 10px;
	background-color: yellow;
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
	<form action="PassReset.do" method="post" name="frm">
		<div class="myContainer1">
			<div class="myTextHeadings" style="justify-content: center;">Password reset</div>
			<br> <input type="text" class="text1" name="uname" placeholder="User Name" id="uname"><br>
			<input type="text" class="text1" name="ques" placeholder="Enter the Name of your Best teacher?" id=""><br>
			<input type="password" class="text1" placeholder="Enter the Password" name="pass" id="pass">
			<input type="password" class="text1" placeholder="Re-enter the Password" name="repass" id="repass">
			<div class="myContainer2">
				<input type="submit" class="btnGreen" Value="Reset Password" id="passResetClick"> 
				<input type="reset" class="btnGreen" value="Reset Form">

			</div>
			<div class="myContainer2">
				
			</div>
		</div>
	</form>


</body>
</html>