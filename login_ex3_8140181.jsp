<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error_ex3_8140181.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="css/ex3_theme_8140181.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>3η Ατομική Άσκηση</h1>
			<p>Πανίδης Χαράλαμπος 8140181</p>
		</div>
		<h1 class="text-danger">Είσοδος</h2>
		<form class="form-inline" method='POST'
			action='loginController_ex3_8140181.jsp'>
			<div class='form-group'>
				<strong>username:</strong> <input type='text' name='username'
					placeholder='username' id='username' class='form-control'>
			</div>
			<br> <br>
			<div class='form-group'>
				<strong>password:</strong> <input type='password' name='password'
					placeholder='password' id='password' class='form-control'>
				<br> <br> <input type='submit' value='Sign in'
					class='btn btn-md btn-primary'>
			</div>
		</form>
	</div>
	<footer class="navbar-inverse navbar-fixed-bottom">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<p class="text-center">&copy; Copyright 2016 by ismgroup12</p>
			</div>
		</div>
	</div>
	</footer>

</body>

</html>
