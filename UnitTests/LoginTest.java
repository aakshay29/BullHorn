import static org.junit.Assert.*;

import org.junit.Test;

public class LoginTest {

	@Test
	public void test_returnDollar() {
		UserData.User u = new UserData.User();
		u.setUsername("dave");
		u.setPassword("dave");
		boolean test = u.isValidUser();
		assertTrue(test == true);
	}
}
