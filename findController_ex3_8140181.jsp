
<%@ page language="java" contentType="text/html;  charset=UTF-8" pageEncoding="UTF-8" errorPage="error_ex3_8140181.jsp" %>
<%@ page import="exercise3Lib_8140181.*, java.util.ArrayList, java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Insert title here</title>
</head>
<body>
 <% String from = request.getParameter("from");
    String to = request.getParameter("to");
    double dfrom = 0;
    double dto = 0;
    String error="";
   
	  
		   if(!(from.matches("[0-9]*")) && !(to.matches("[0-9]*")) || (from.length()==0 && to.length()==0)){ 
			   
			  	throw new Exception("1)Το πεδιο <strong>Από</strong> δεν είναι έγκυρο <br> 2)Το πεδιο <strong>Έως</strong> δεν είναι έγκυρο");
			  		      
		   }
		   if(!(from.matches("[0-9]*")) && (to.length()==0)){ 
			   throw new Exception("1)Το πεδιο <strong>Από</strong> δεν είναι έγκυρο <br> 2)Το πεδιο <strong>Έως</strong> δεν είναι έγκυρο");
			   
		   }
		   if(!(to.matches("[0-9]*")) && (from.length()==0)){ 
			   throw new Exception("1)Το πεδιο <strong>Από</strong> δεν είναι έγκυρο <br> 2)Το πεδιο <strong>Έως</strong> δεν είναι έγκυρο");
		   }
		   if(!(from.matches("[0-9]*")) || (from.length()==0)){ 
			   throw new Exception("1)Το πεδιο <strong>Από</strong> δεν είναι έγκυρο");
			   
		   }
		   if(!(to.matches("[0-9]*")) || (to.length()==0)){ 
			   throw new Exception("1)Το πεδιο <strong>Έως</strong> δεν είναι έγκυρο");
		   }
		   
		   
		   		   
		   else {
			   try {
			   dfrom = Double.parseDouble(from);
			   dto = Double.parseDouble(to);
			   EmploeeDAO_EX3_8140181 db = new EmploeeDAO_EX3_8140181();
			   
			   List<Emploee> emp_list = new ArrayList<Emploee>();
			   emp_list = db.findEmploeesBySalaryRange(dfrom, dto);
			   RequestDispatcher rd = request.getRequestDispatcher("/page2_ex3_8140181.jsp");
			   request.setAttribute("emploee-list",emp_list);
			   rd.forward(request, response);
			   
			   } catch(Exception e) {
				   
			   }
		   }
		   
	   
	   
   %>
   
   

</body>
</html>