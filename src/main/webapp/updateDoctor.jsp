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
<title>Update Employee</title>
<link rel = "stylesheet" href = "css/AddNewDoctor.css">
<script src = "js/AddNewEmployee.js"></script>
</head>
<body>
<%
String ID = null;
String name = null;
String address = null;
String phone = null;
String email = null;
String designation = null;
String dob = null;
String salary = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	String userName = "root";
	String password = "root";
	String url = "jdbc:mysql://localhost:3306/hospital_db";
	Connection con = DriverManager.getConnection(url,userName,password);
    Statement stat = con.createStatement();  
	String query = request.getParameter("id");
	String sql;
	if(query!=null)
	{
		
		sql = "select * from hospital_db.doctor where iddoctor ="+request.getParameter("id");
		System.out.println("Pass");
		
	}
	else
	{
		sql = "select * from hospital_db.doctor";
		
	}
	ResultSet rs = stat.executeQuery(sql);
	

   ID = request.getParameter("id");

	
	while(rs.next())
	{
		
	name = rs.getString(2);
	address = rs.getString(3);
	phone = rs.getString(4);
	email = rs.getString(5);
	designation = rs.getString(6);
	dob = rs.getString(7); 
	salary = rs.getString(8); 
	
	}
	
}
catch(Exception e)
{
	out.println("Exception :"+e.getMessage());
	e.printStackTrace();
}

%>
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
	                <h2>Add Your  Details</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "updateDoctor">
	                   
	                   <input type = "text" name = "id" value = "<%= ID %>" required hidden>
	                   
	                   <label> Name</label><br>
	                   <input type = "text" name = "name" value = "<%= name %>"  required><br><br>
	                   
	                   <label>Address</label><br>
	                   <textarea name = "address"><%= address %></textarea><br><br>
	                   
	                   <label>Contact Number</label><br>
	                   <input type = "number" name = "phone" id = "phone" onInput = "checkPhone()" value = "<%= phone %>" required><br>
	                   <br><span id = "check_phone"></span><br>
	                   
	                   <label>E-Mail</label><br>
	                   <input type = "email" name = "email" id = "email" value = "<%= email %>" required><br><br>
	                 
	                   
	                 <label>Specelization</label><br>
	                   <select name = "designation">
	                       <option value = "Radiology">Radiology</option>
	                       <option value = "Oncology">Oncology</option>
	                       <option value = "Cardiology">Cardiology</option>
	                       <option value = "Psychiatry">Psychiatry</option>
	                   </select><br><br>
	                   
	                    <label>Date of Birth</label><br>
	                    <input type = "date" name = "dob" value = "<%= dob %>" required><br><br>
	                   
	                    <label>Basic Salary</label><br>
	                    <input type = "number" name = "salary" id = "salary" required onInput = "checkSalary()" value = "<%= salary %>"><br>
	                   <br><span id = "check_salary"></span><br><br>
	                   
	                   <input type = "submit" value = "Update" name = "submit" id = "submit"><br><br>
	                </form>
			     </div>
	         
	      </div>
    </div>
</body>
</html>