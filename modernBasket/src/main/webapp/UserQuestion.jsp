<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/Buttons.css">
<link rel="stylesheet" href="css/shake.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/shake.js"></script>

<style type="text/css">
.cen {
	padding-top: 5%;
	justify-content: center;
	display: flex;
	max-width: 100%;
	padding-bottom: 10px;
}

.cen1 {
	justify-content: center;
	display: grid;
	width: 50%;
	border: 2px solid #A8EB12;
	border-radius: 10px;
}

.space1 {
	width: 500px;
}
</style>

</head>




<body
	style="background: linear-gradient(#e66465, #9198e5); height: 100vh; overflow-y: hidden;">
	<div style="font-size: 20px; justify-content: center; display: flex;position: absolute;top: 25px;left: 40%;margin-bottom: 20px;">
					<h1>For security Purpose</h1>
				</div>
	<form action="userQuestion.do" method="post" class="container">
		<div class="cen">
			<div class="cen1">
				<h3>Enter the Name of your Best teacher?</h3>

				<input name="question" class="text1 space1" id="question">
				 <input type="submit" class="btnGreen" id="clickhere3"> 
				 <input type="reset" class="btnGreen">
			</div>
		</div>

	</form>
</body>
</html>