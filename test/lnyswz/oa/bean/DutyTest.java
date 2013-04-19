package lnyswz.oa.bean;

import org.hibernate.Session;

import junit.framework.TestCase;
import lnyswz.oa.utils.HibernateUtils;

public class DutyTest extends TestCase {
public void testAddDuty() {
		
		Session session = null;
		
		try {
			session = HibernateUtils.getSession();
			session.beginTransaction();
						
			Duty duty1 = new Duty();
			duty1.setName("总经理");
			
			Duty duty2 = new Duty();
			duty2.setName("党委书记");
			
			Duty duty3 = new Duty();
			duty3.setName("副总经理");
			
			Duty duty4 = new Duty();
			duty4.setName("总会计师");
			
			Duty duty5 = new Duty();
			duty5.setName("总经理助理");
			
			Duty duty6 = new Duty();
			duty6.setName("主任");
			
			Duty duty7 = new Duty();
			duty7.setName("经理");
			
			Duty duty8 = new Duty();
			duty8.setName("副经理");
			
			Duty duty9 = new Duty();
			duty9.setName("管理员");
			
			Duty duty10 = new Duty();
			duty10.setName("会计");
			
			Duty duty11 = new Duty();
			duty11.setName("出纳");
			
			Duty duty12 = new Duty();
			duty12.setName("业务员");
			
			Duty duty13 = new Duty();
			duty13.setName("计划员");
			
			Duty duty14 = new Duty();
			duty14.setName("内勤");
			
			Duty duty15 = new Duty();
			duty15.setName("开票员");
			
			Duty duty16 = new Duty();
			duty16.setName("保管员");
			
			Duty duty17 = new Duty();
			duty17.setName("司机");
			
			
			session.save(duty1);
			session.save(duty2);
			session.save(duty3);
			session.save(duty4);
			session.save(duty5);
			session.save(duty6);
			session.save(duty7);
			session.save(duty8);
			session.save(duty9);
			session.save(duty10);
			session.save(duty11);
			session.save(duty12);
			session.save(duty13);
			session.save(duty14);
			session.save(duty15);
			session.save(duty16);
			session.save(duty17);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
