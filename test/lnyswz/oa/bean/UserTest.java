package lnyswz.oa.bean;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Expression;

import junit.framework.TestCase;
import lnyswz.oa.utils.HibernateUtils;

public class UserTest extends TestCase {
	
	public void testAddUser() {
		
		Session session = null;
		
		try {
			session = HibernateUtils.getSession();
			session.beginTransaction();
			
			Person person = (Person)session.get(Person.class, 94);
			
			User user = new User();
			user.setName("lim");
			user.setPassword("111111");
			user.setPerson(person);
						
			session.save(user);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
