package exercise3Lib_8140145;

import java.sql.*;
public class UserDAO_EX3_8140145 {
	public User authenticateUser(String username, String password) throws Exception {
		Connection con = null;
		DB_EX3_8140145 db = new DB_EX3_8140145();
		try {
		  db.open();
	      con = db.getConnection();
		  String sqlquery = "SELECT * FROM user_8140145 WHERE username = ? AND password = ?;";
		  PreparedStatement stmt1 = con.prepareStatement(sqlquery);
          stmt1.setString(1, username);
		  stmt1.setString(2, password);
		  ResultSet rs = stmt1.executeQuery();

		  if (rs.next() ) {
		    User user = new User(rs.getString("username"), rs.getString("password"), rs.getString("email"));
		    rs.close();
		    stmt1.close();
		    db.close();
		    return user;
		  } else {
		    rs.close();
			stmt1.close();
		    db.close();
		    throw new Exception("Wrong username or password");
		  }

		} catch (SQLException e) {
		  throw new Exception("An error occured while getting User from database: " + e.getMessage());

		}

	}
}