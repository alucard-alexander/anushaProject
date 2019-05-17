<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/InputBox.css">




</head>




<body class="centered" id="imageFullFit"
	style="background-image: url('systemImages/UserLogin1.jpg');">
	<form action="userQuestion.do" method="post" class="container">
		<div style="margin: 50% 5px;">
			<div class="row">
				<div class="col" style="margin: 10px 10px 10px 10%;">
					<h3>Enter the Name of your Best teacher?</h3>
				</div>
			</div>
			<div class="row">
				<div class="col" >
					<input name="question" class="text1" style="margin: 10px 10px 10px 10%;">
				</div>
			</div>
			<div class="row">
				<div class="col" style="margin: 10px 10px 10px 10%;padding: 10px 10px 10px 10%">
					<input type="submit" class="btn btn-success">
					<input type="reset" class="btn btn-success">
				</div>
			</div>
		</div>
	</form>
</body>
</html>