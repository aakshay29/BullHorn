import static org.junit.Assert.*;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.TypedQuery;

import org.junit.Test;

import Model.Bhpost;
import Model.Bhuser;
import UserData.DBUtil;
import customTools.DBBullHorn;

public class LoginTest {

	@Test
	public void test_returnDollar() {
		UserData.User u = new UserData.User();
		u.setUsername("dave");
		u.setPassword("dave");
		boolean test = u.isValidUser();
		assertTrue(test == true);
	}

	@Test
	public void test() {                                        
		//String nextURL = "/error.jsp";
		Date postdate = new Date();
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String query = "select u from bhuser u where u.useremail=:email";
		TypedQuery<Bhuser> q = em.createQuery(query, Bhuser.class);
		q.setParameter("email", "aakshay29@gmail.com");

		Bhuser bhUser = null;
		try {
			bhUser = q.getSingleResult();
			System.out.println("The user is id: " + bhUser.getBhuserid());
			//nextURL = "/Newsfeed.jsp";
		} catch (NoResultException e) {
			System.out.println(e);
		} catch (NonUniqueResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		System.out.println("Inserting into post table");
		Bhpost bhPost = new Bhpost();
		bhPost.setBhuser(bhUser);
		bhPost.setPostdate(postdate);
		bhPost.setPosttext("This is a unit test post");

		System.out.println("calling DbBullhorn.insert");
		DBBullHorn.insert(bhPost);
	}
}
