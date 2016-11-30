<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ page import="exercise3Lib_8140181.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="/ismgroup12/css/ex3_theme_8140181.css">
</head>
<body>

	<%
		if (session.getAttribute("user-object") == null) {
	%>
	<div class="container">
		<div class="jumbotron">
			<h1>3η Ατομική Άσκηση</h1>
			<p>Πανίδης Χαράλαμπος 8140181</p>
		</div>

		<h2>Σφάλμα</h2>

		<div class="alert alert-danger">
			<%=exception.getMessage() %>
		</div>

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


	<%
		} else {
			String name = "";
			User user = (User) session.getAttribute("user-object");
			name = user.getUsername();
	%>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="page1_ex3_8140181.jsp">ismgroup12</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="page1_ex3_8140181.jsp">Page 1</a></li>
				<li><a href="page2_ex3_8140181.jsp">Page 2</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><i class="glyphicon glyphicon-user"><%=name%></i>
						<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logout_ex3_8140181.jsp">Logout</a></li>

					</ul></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="container theme-showcase" role="main">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>3η Ατομική Άσκηση</h1>
			<p>Πανίδης Χαράλαμπος 8140181</p>
		</div>

		<div class="page-header">
			<h1>Σφάλμα</h1>
		</div>
		<div class="alert alert-danger">
			<%= exception.getMessage() %>

		</div>

		
		<!-- /container -->

		<!-- footer -->
		<footer class="navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p class="text-center">&copy; Copyright 2016 by ismgroup12</p>
				</div>
			</div>
		</div>
		</footer>
		<!-- End footer -->

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>







		<%
		}
	%>
	
</body>
</html>