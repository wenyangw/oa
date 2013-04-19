package lnyswz.oa.dao.impl;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import junit.framework.TestCase;
import lnyswz.oa.bean.User;
import lnyswz.oa.dao.UserDAO;

public class UserDAOTest extends TestCase {
	private static BeanFactory factory = new ClassPathXmlApplicationContext("applicationContext-*.xml");

	public void testFindUser() {
		
		UserDAO userDAO = (UserDAO)factory.getBean("userDAO");
		User user = userDAO.findUserByName("wwy");
		
		System.out.println(user.getName() + "==" + user.getPerson().getName());		
	}
}
