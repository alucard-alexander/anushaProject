<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/InputBox.css">

<!-- start -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!--  -->



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