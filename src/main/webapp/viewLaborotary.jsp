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
<title>Laborotary Employee</title>
<link rel = "stylesheet" href = "css/viewLaborotary.css">
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
	                <hr>
	                <h2>Laboratory Details</h2>
	                <hr>
	                
	                <table>
			<thead>
					<tr>
						<th>ID</th>
						<th>Email</th>
						<th>Name</th>
						<th>Type</th>
						<th>qty</th>
						<th>Description</th>
						<th>Phone</th>
						<th>Date</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
						<%
						
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							String userName = "root";
							String password = "root";
							String url = "jdbc:mysql://localhost:3306/hospital_db";
							Connection con = DriverManager.getConnection(url,userName,password);
						    Statement stat = con.createStatement();  
							String query = "";
							String sql;
							if(query!=null)
							{
								
								sql = "select * from hospital_db.laborotary";
								
							}
							else
							{
								sql = "select * from hospital_db.laborotary";
								
							}
							ResultSet rs = stat.executeQuery(sql);
							
							
							while(rs.next())
							{
								%>
							<tr>	
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
								<td><%=rs.getString(6) %></td>
								<td><%=rs.getString(7) %></td>
								<td><%=rs.getString(8) %></td>
							   <td><%=rs.getString(9) %></td>
								<td><a href='updateLaborotary.jsp?id=<%=rs.getInt("idlaborotary")%>' class="update-btn">Update</a></td>
								<td>
								   <form action = "deleteLaborotary" method = "post">
								       <input type = "text" name = "id" value = "<%= rs.getInt("idlaborotary")%>" hidden>
								       
								       <input type = "submit" value = "Delete" class = "delete">
								   </form>
								</td>
								<td><a href='AddNewLabrotory.jsp?id=<%=rs.getInt("idlaborotary")%>' class="salary-btn">Add Laborotary</a></td>
							</tr>
							<%
							}



							
						}
						catch(Exception e)
						{
							out.println("Exception :"+e.getMessage());
							System.out.println("Error");
							e.printStackTrace();
						}
						%>	
						
					<!-- } -->
				</tbody>
			</table>
	                <br>
	                
			     </div>
	         
	      </div>
    </div>
</body>
</html>