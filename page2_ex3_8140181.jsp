
<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error_ex3_8140181.jsp"%>
<%@ page import="exercise3Lib_8140181.*, java.util.List,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Student registration page">
<title>2η Ατομική Άσκηση</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Custom styles for this template -->
<link rel="stylesheet" href="/ismgroup12/css/ex3_theme_8140181.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<%
		String name = "";

		if (session.getAttribute("user-object") == null) {
			throw new Exception("Unauthorized Access.Please <a href='login_ex3_8140181.jsp'>login</a>");

		} else {
			User user = (User) session.getAttribute("user-object");
			name = user.getUsername();
		}
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
			<h1 class="text-danger">Αποτελέσματα Αναζήτησης</h1>
		</div>

		<%
			ArrayList<Emploee> emplist = new ArrayList<Emploee>();
			emplist = (ArrayList<Emploee>) request.getAttribute("emploee-list");
			int size = 0;
			int kappa = 0;
		%>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Όνομα</th>
					<th>Επώνυμο</th>
					<th>EMAIL</th>
					<th>Ηλίκια</th>
					<th>Ετήσιος Μισθός</th>
				</tr>
			</thead>
			<tbody>
				<%
					try {
						size = emplist.size();

						for (int i = 0; i < emplist.size(); i++) {
							kappa++;
							if (emplist.get(i).getAge() > 50) { //wannabe pensioners
								out.println("<tr class='danger'><td>" + emplist.get(i).getId() + "</td> <td>"
										+ emplist.get(i).getName() + "</td> <td>" + emplist.get(i).getSurname() + "</td> <td>"
										+ emplist.get(i).getEmail() + "</td> <td>" + emplist.get(i).getAge()
										+ "</td> <td>&euro;" + emplist.get(i).getSalary() + "</td> </tr>");

							} else {
								out.println("<tr><td>" + emplist.get(i).getId() + "</td> <td>" + emplist.get(i).getName()
										+ "</td> <td>" + emplist.get(i).getSurname() + "</td> <td>" + emplist.get(i).getEmail()
										+ "</td> <td>" + emplist.get(i).getAge() + "</td> <td>&euro;"
										+ emplist.get(i).getSalary() + "</td> </tr>");
							}

						}
						if (kappa == 0) {
				%>
				<tr class='text-center warning'>
					<td colspan='6'>Δεν Βρέθηκαν εργαζόμενοι</td>
				</tr>

				<%
					}
				%>

			</tbody>
		</table>
		<%
			if (kappa > 0) {
		%>
		<div class="alert alert-info text-center" role="alert">
			<strong>Βρέθηκαν:</strong>
			<%
				out.println(kappa);
			%>
			εργαζόμενοι
		</div>
		<%
			}

			} catch (NullPointerException e) {
				/* String error="Δεν εχετε δωσει τίμες στα πεδια Απο και Εως";  */
				/* RequestDispatcher rd = request.getRequestDispatcher("/error_ex3_8140181.jsp"); */
				/* request.setAttribute("null",error); */
				/* rd.forward(request, response); */
				throw new Exception("Δεν έχετε δώσει τιμές στα πέδια <strong>Άπο</strong> και <strong>Έως</strong>");
			}
		%>
	</div>
	<!-- /container -->
	<footer class="navbar-inverse navbar-fixed-bottom">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<p class="text-center">&copy; Copyright 2016 by ismgroup12</p>
			</div>
		</div>
	</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>