package lnyswz.oa.bean;

import org.hibernate.Session;

import junit.framework.TestCase;
import lnyswz.oa.utils.HibernateUtils;

public class PersonTest extends TestCase {
	public void testAddPerson() {
		
		Session session = null;
		
		try {
			session = HibernateUtils.getSession();
			session.beginTransaction();
			
			Organization org = (Organization)session.get(Organization.class, 12);
			
			Person p1 = new Person();
			p1.setName("李强");
			p1.setOrg(org);
			
			Person p2 = new Person();
			p2.setName("张朝华");
			p2.setOrg(org);
			
			Person p3 = new Person();
			p3.setName("许忠");
			p3.setOrg(org);
			
			Person p4 = new Person();
			p4.setName("张玉明");
			p4.setOrg(org);
			
			Person p5 = new Person();
			p5.setName("白淑艳");
			p5.setOrg(org);
			
			Person p6 = new Person();
			p6.setName("蹇霜");
			p6.setOrg(org);
			
			Person p7 = new Person();
			p7.setName("杨帅");
			p7.setOrg(org);
			
			Person p8 = new Person();
			p8.setName("刘恩庆");
			p8.setOrg(org);
//			
			Person p9 = new Person();
			p9.setName("卢功利");
			p9.setOrg(org);
//			
			Person p10 = new Person();
			p10.setName("曾欣");
			p10.setOrg(org);
//			
			Person p11 = new Person();
			p11.setName("于伟亮");
			p11.setOrg(org);
//			
			Person p12 = new Person();
			p12.setName("刘晓川");
			p12.setOrg(org);
			
			Person p13 = new Person();
			p13.setName("陈东");
			p13.setOrg(org);
			
			Person p14 = new Person();
			p14.setName("李淼");
			p14.setOrg(org);
			
			session.save(p1);
			session.save(p2);
			session.save(p3);
			session.save(p4);
			session.save(p5);
			session.save(p6);
			session.save(p7);
			session.save(p8);
			session.save(p9);
			session.save(p10);
			session.save(p11);
			session.save(p12);
			session.save(p13);
			session.save(p14);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
