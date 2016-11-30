<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error_ex3_8140181.jsp" %>
<%@ page
	import="exercise3Lib_8140181.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
String name = request.getParameter("username");
String password = request.getParameter("password");

 UserDAO_EX3_8140181 user1 = new UserDAO_EX3_8140181();
User user= user1.authenticateUser(name, password);
session.setAttribute("user-object",user); 
%>
 <jsp:forward page="page1_ex3_8140181.jsp"></jsp:forward> 
	</body>
</html>