<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <%@ page import = "java.sql.DriverManager" %>
 <%@ page import = "java.sql.ResultSet" %>
 <%@ page import = "java.sql.Statement" %>
 <%@ page import = "java.sql.Connection" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Laborotary</title>
<link rel = "stylesheet" href = "css/DeleteLaborotry.css">
</head>
<body>
		<%
	     if(session.getAttribute("email")==null)
	     {
	    	 response.sendRedirect("UserLogin.jsp");
	     }
	 
		   String ID = null;
		
		   ID = request.getParameter("id");
		
		%>
		
		 
  
    <hr>
		 <div class = "top">
		 	<img src = "images/logo.png" alt = "logo image" width = "150px" hieght = "100px">
		 	<div class = "top-inner">
		 		<h1>Property Management System</h1>
				<h4>number one property management system in sri lanka</h4>
		 	</div>
		 </div>
		
	 <hr>
	  
		  
		 
		  
	  <div class = "profile">
	  	<input type = "text" value = "<%= session.getAttribute("email") %>" readonly>
		<a href = "userProfile.jsp"><img src = "images/profile.png" alt = "profile image" width = "50px" hieght = "50px"></a>
	 </div>
	 
	 <br><br>
	 <div class = "back-image">
	 	<br>
		 <div class = "middle">
		 	
		<h1>Delete Your Post</h1>
	 	<h4>Are You Sure to Delete the item ????</h4>
	 	<hr>
	 	
	 	
	 	<br><br><br>
	 	<form action = "deletePost" method = "post">
	 		<label>Delete ID:</label><br>
	 		<input type = "text" name = "id" required value="<%= ID %>" readonly>
	 		<br><br>
	 		
	 	    
	 	    <input type = "submit" name = "delete" value = "Delete" id = "delete">
	 	    <br><br>
	 	    
	 	</form>
			  
		 </div>
		 <br>
	 </div>
	 
	 <br>
	 <div class = "bottom">
	 
	  <h4>@hospital Management</h4>
	 </div>
</body>
</html>