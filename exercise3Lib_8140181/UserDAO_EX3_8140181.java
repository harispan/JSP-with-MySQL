package exercise3Lib_8140181;
import java.sql.*;

public class UserDAO_EX3_8140181{
	DB_EX3_8140181 db = new DB_EX3_8140181();
	PreparedStatement stmt= null;
	ResultSet rs = null;
	String ErrorMsg="";
	String sql="select * from ismgroup12.user_8140181 where username=? and password=?";
	Connection con= null;
	

	public User authenticateUser(String username, String password) throws Exception{
		int i=0;
		String email = "";

		try{
			db.open();
			con = db.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setString(1,username);
			stmt.setString(2,password);
			rs =stmt.executeQuery();
			while(rs.next()){
				i++;
				email = rs.getString("email");
			}
			if(i>0){
				User user= new User(username,password,email);
				db.close();
				return user;
			} else {
				db.close();
				
				throw new Exception("Wrong username or password"); 
			}


		}catch(SQLException e){
			
			throw new Exception("SQL Exception "+e);

		}
		
		

	}







}