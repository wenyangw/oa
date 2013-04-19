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
			org1.setName("经理办公室");
			
			Organization org2 = new Organization();
			org2.setName("综合办公室");
			
			Organization org3 = new Organization();
			org3.setName("管理督察部");
			
			Organization org4 = new Organization();
			org4.setName("行政事务部");
			
			Organization org5 = new Organization();
			org5.setName("清欠组");
			
			Organization org6 = new Organization();
			org6.setName("计划账务部");
			
			Organization org7 = new Organization();
			org7.setName("市场经营部");
			
			Organization org8 = new Organization();
			org8.setName("物流仓储中心");
			
			Organization org9 = new Organization();
			org9.setName("教材分公司");
			
			Organization org10 = new Organization();
			org10.setName("大连分公司");
			
			Organization org11 = new Organization();
			org11.setName("文达纸业");
			
			Organization org12 = new Organization();
			org12.setName("文达印刷");
			
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
