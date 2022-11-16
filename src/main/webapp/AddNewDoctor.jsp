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
<title>Add Doctors Page</title>
<link rel = "stylesheet" href = "css/AddNewDoctor.css">
<script src = "js/AddNewEmployee.js"></script>
</head>
<body>
 <br>
		
		<div class="topnav">
		  <a class="first" href="home.jsp">Home</a>
		  <a href="AddNewDoctor.jsp">Add Doctors</a>
		   <a href="viewDoctorsDetails.jsp">View Doctors</a>
		   <a href="ViewSalary.jsp">View Salary</a>
		  <a href="userProfile.jsp">Profile</a>
		   <a href="AddNewLabrotory.jsp">Add Laborotary</a>
		   <a href="viewLaborotary.jsp">View Laborotary</a>
		  <a href="UserLogin.jsp">LogOut</a>
		</div>
		
       <div class = "hole">
       <br><br>
	      <div class = "middle">
	         <br><br>
	                <h2>Add Your Doctors Details</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "AddNewDoctor">
	                   
	                   <label>Doctor Name</label><br>
	                   <input type = "text" name = "name" required><br><br>
	                   
	                   <label>Address</label><br>
	                   <textarea name = "address"></textarea><br><br>
	                   
	                   <label>Contact Number</label><br>
	                   <input type = "number" name = "phone" id = "phone" onInput = "checkPhone()" required><br>
	                   <br><span id = "check_phone"></span><br>
	                   
	                   <label>E-Mail</label><br>
	                   <input type = "email" name = "email" id = "email" required><br><br>
	                 
	                   
	                   <label>Specelization</label><br>
	                   <select name = "designation">
	                       <option value = "Radiology">Radiology</option>
	                       <option value = "Oncology">Oncology</option>
	                       <option value = "Cardiology">Cardiology</option>
	                       <option value = "Psychiatry">Psychiatry</option>
	                   </select><br><br>
	                   
	                    <label>Date of Birth</label><br>
	                    <input type = "date" name = "dob" required><br><br>
	                   
	                    <label>Basic Salary</label><br>
	                    <input type = "number" name = "salary" id = "salary" required onInput = "checkSalary()"><br>
	                   <br><span id = "check_salary"></span><br><br>
	                   
	                   <input type = "submit" name = "submit" id = "submit"><br><br>
	                </form>
			     </div>
	         
	      </div>
    </div>
</body>
</html>