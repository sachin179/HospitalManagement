<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Laborotory Page</title>
<link rel = "stylesheet" href = "css/AddNewDoctor.css">
<script src = "js/AddNewLabrotory.js"></script>
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
	                <h2>Add New Laborotory</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "AddNewLaborotry">
	                   
	                   <label>Email</label><br>
	                   <input type = "email" name = "email" id = "email" required><br><br>
	                   
	                   <label>Name</label><br>
	                   <textarea name = "name"></textarea><br><br>
	                   
	                   <label>Type</label><br>
	                   <textarea name = "type" required></textarea><br><br>
	                   
	                   
	                    <label>Quntity</label><br>
	                   <input type = "number" name = "qty" id = "qty" onInput = "checkqty()" required><br>
	                   <br><span id = "check_qty"></span><br>
	                   
	                   <label>Description</label><br>
	                   <textarea name = "description" id = "description" onInput = "checkdescription()"></textarea><br>
	                   <br><span id = "check_description"></span><br>
	                   
	                   <label>Phone</label><br>
	                   <input type = "number" name = "phone" id = "phone" onInput = "checkPhone()" required><br>
	                   <br><span id = "check_phone"></span><br>
	                   
	                    <label>Date</label><br>
	                    <input type = "date" name = "date" required><br><br>
	                   
	                    <label>Price</label><br>
	                    <input type = "number" name = "price" id = "price" required onInput = "checkprice()"><br>
	                   <br><span id = "check_price"></span><br><br>
	                   
	                   <input type = "submit" name = "submit" id = "submit"><br><br>
	                </form>
			     </div>
	         
	      </div>
    </div>
</body>
</html>