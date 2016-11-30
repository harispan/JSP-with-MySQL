package exercise3Lib_8140181;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class EmploeeDAO_EX3_8140181 {

	public EmploeeDAO_EX3_8140181() {

	}

	public List<Emploee> findEmploeesBySalaryRange(double from, double to) throws Exception {

		Connection con = null;
		List<Emploee> emploeeList = new ArrayList<Emploee>();

		DB_EX3_8140181 db = new DB_EX3_8140181();

		try {

			db.open(); //open connection

			con = db.getConnection(); //get Connection

			String sqlquery = "SELECT * FROM emploee_8140181 WHERE salary BETWEEN ? AND ?;";

			PreparedStatement stmt1 = con.prepareStatement(sqlquery);
			stmt1.setDouble(1, from);
			stmt1.setDouble(2, to);

			ResultSet rs = stmt1.executeQuery();



			while (rs.next()) {

				emploeeList.add(new Emploee(rs.getInt("id"), rs.getString("name"), rs.getString("surname"),
						rs.getString("email"), rs.getInt("age"), rs.getDouble("salary")));

			}

			rs.close();
			stmt1.close();

			db.close(); //close connection

			return emploeeList;

		} catch (Exception e) {

			throw new Exception("An error occured while getting Emploees from database: " + e.getMessage());

		} finally {

			if(con != null)
				con.close();

		}

	}// End of findEmploeesBySalaryRange


} //End of class
