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
<title>Update laborotary</title>
<link rel = "stylesheet" href = "css/updateLaborotary.css">
<script src = "js/AddNewLabrotory.js"></script>
</head>
<body>
<%
String ID = null;
String email = null;
String name = null;
String type = null;
String qty = null;
String description = null;
String phone = null;
String date = null;
String price =null;
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
		
		sql = "select * from hospital_db.laborotary where idlaborotary ="+request.getParameter("id");
		System.out.println("Pass");
		
	}
	else
	{
		sql = "select * from hospital_db.laborotary";
		
	}
	ResultSet rs = stat.executeQuery(sql);
	

   ID = request.getParameter("id");

	
	while(rs.next())
	{
		
		email = rs.getString(2);
		name = rs.getString(3);
		type = rs.getString(4);
		qty = rs.getString(5);
		description = rs.getString(6);
		phone = rs.getString(7); 
		date = rs.getString(8); 
		price = rs.getString(9); 
	
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
	                <h2>Update Laborotory Details</h2>
	                <hr>
	                <br>
	                 <form method = "post" action = "updateLaborotary">
	                   
	                      <input type = "text" name = "id" value = "<%= ID %>" required hidden>
	                   
	                   <label>Email</label><br>
	                   <input type = "email" name = "email" id = "email"  value = "<%= email %>" required ><br><br>
	                   
	                   <label>Name</label><br>
	                   <input type = "text" name = "name" value = "<%= name %>"  required>
	                 <br><br>
	                   
	                   <label>Type</label><br>
	                    <input type = "text" name = "type" value = "<%= type %>"  required>
	                  <br><br>
	                   
	                   
	                    <label>Quntity</label><br>
	                   <input type = "number" name = "qty" id = "qty" onInput = "checkusage()" value = "<%= qty %>" required><br>
	                   <br><span id = "check_usage"></span><br>
	                   
	                   <label>Description</label><br>
	                   <textarea name = "description" id = "description" onInput = "checkdescription()"></textarea><br>
	                   <br><span id = "check_description"></span><br>
	                  
	                   
	                   <label>Phone</label><br>
	                   <input type = "number" name = "phone" id = "phone" onInput = "checkPhone()" value = "<%= phone %>" required><br>
	                   <br><span id = "check_phone"></span><br>
	                   
	                    <label>Date</label><br>
	                    <input type = "date" name = "date" value = "<%= date %>" required><br><br>
	                   
	                    <label>Price</label><br>
	                    <input type = "number" name = "price" id = "price"  onInput = "checkprice()" value = "<%= price %>" required><br>
	                   <br><span id = "check_price"></span><br><br>
	                   
	                   <input type = "submit" name = "submit" id = "submit"><br><br>
	                </form>
			     </div>
	         
	      </div>
    </div>
</body>
</html>