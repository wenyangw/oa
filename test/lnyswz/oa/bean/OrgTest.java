package lnyswz.oa.bean;

import org.hibernate.Session;
import org.hibernate.criterion.Expression;

import junit.framework.TestCase;
import lnyswz.oa.utils.HibernateUtils;

public class OrgTest extends TestCase {
	public void testAddOrg() {
		
		Session session = null;
		
		try {
			session = HibernateUtils.getSession();
			session.beginTransaction();
						
			Organization org1 = new Organization();
			org1.setName("����칫��");
			
			Organization org2 = new Organization();
			org2.setName("�ۺϰ칫��");
			
			Organization org3 = new Organization();
			org3.setName("�����첿");
			
			Organization org4 = new Organization();
			org4.setName("��������");
			
			Organization org5 = new Organization();
			org5.setName("��Ƿ��");
			
			Organization org6 = new Organization();
			org6.setName("�ƻ�����");
			
			Organization org7 = new Organization();
			org7.setName("�г���Ӫ��");
			
			Organization org8 = new Organization();
			org8.setName("�����ִ�����");
			
			Organization org9 = new Organization();
			org9.setName("�̲ķֹ�˾");
			
			Organization org10 = new Organization();
			org10.setName("�����ֹ�˾");
			
			Organization org11 = new Organization();
			org11.setName("�Ĵ�ֽҵ");
			
			Organization org12 = new Organization();
			org12.setName("�Ĵ�ӡˢ");
			
			session.save(org1);
			session.save(org2);
			session.save(org3);
			session.save(org4);
			session.save(org5);
			session.save(org6);
			session.save(org7);
			session.save(org8);
			session.save(org9);
			session.save(org10);
			session.save(org11);
			session.save(org12);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
