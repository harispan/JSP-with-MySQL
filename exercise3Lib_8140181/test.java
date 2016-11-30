package exercise3Lib_8140181;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserDAO_EX3_8140181 usr = new UserDAO_EX3_8140181();
		try {
			User user = usr.authenticateUser("jdoe", "1234");
			System.out.println(user.getUsername());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
