package HospitalManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class labororaty {
	
	public static int Insertlabororaty(String email,String name, String type, String qty, String description, String phone,String date,String price) {
		int isSuccess = 0;
		// connect DB
		String url = "jdbc:mysql://localhost:3306/hospital_db";
		String user = "root";
		String pwd = "root";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "insert into laborotary values(0,'" + email + "','" + name + "','" + type + "','"
					+ qty + "','" + description + "','" + phone + "','" + date + "','" + price + "')";

			int at = stmt.executeUpdate(sql);

			if (at > 0) {

				isSuccess = 1;
			} else if (at < 0) {

				isSuccess = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static int Updatelabororaty(int id,String email,String name, String type,String qty,String description,String phone,String date,String price) {
		
		int result = 0;
		
		String url = "jdbc:mysql://localhost:3306/hospital_db";
		String user = "root";
		String pwd = "root";
  
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			
			Statement stmt = con.createStatement();	
			String sql = "update laborotary set email = '"+email+"',name = '"+name+"',type = '"+type+"',qty = '"+qty+"',description = '"+description+"',phone = '"+phone+"',date = '"+date+"',price = '"+price+"' where idlaborotary = '"+id+"'";
			System.out.println("SQL Result: "+sql);
			int rs = stmt.executeUpdate(sql);
			System.out.println("SQL Result: "+rs);
			
			if(rs > 0) {
				result = 1;
			}
			else {
				result = 0;
			}
			
		
	}catch(Exception e){
		
		e.printStackTrace();
	}
		
		return result;
	}
	
	
	public static int deleteLaborotary(int id) {
	    int result=0;
	    
	    String url = "jdbc:mysql://localhost:3306/hospital_db";
		String user = "root";
		String pwd = "root";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "delete from laborotary where idlaborotary ='"+id+"'" ;

			int rn = stmt.executeUpdate(sql);
			if(rn>0)
			{
				result=1;
			}
			else
			{
				result=0;
			}
			
		
	}catch(Exception e)
		
	    {
		e.printStackTrace();
	    }
		
		return result;
	}

}
