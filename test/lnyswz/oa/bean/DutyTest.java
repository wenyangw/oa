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
			duty1.setName("�ܾ���");
			
			Duty duty2 = new Duty();
			duty2.setName("��ί���");
			
			Duty duty3 = new Duty();
			duty3.setName("���ܾ���");
			
			Duty duty4 = new Duty();
			duty4.setName("�ܻ��ʦ");
			
			Duty duty5 = new Duty();
			duty5.setName("�ܾ�������");
			
			Duty duty6 = new Duty();
			duty6.setName("����");
			
			Duty duty7 = new Duty();
			duty7.setName("����");
			
			Duty duty8 = new Duty();
			duty8.setName("������");
			
			Duty duty9 = new Duty();
			duty9.setName("����Ա");
			
			Duty duty10 = new Duty();
			duty10.setName("���");
			
			Duty duty11 = new Duty();
			duty11.setName("����");
			
			Duty duty12 = new Duty();
			duty12.setName("ҵ��Ա");
			
			Duty duty13 = new Duty();
			duty13.setName("�ƻ�Ա");
			
			Duty duty14 = new Duty();
			duty14.setName("����");
			
			Duty duty15 = new Duty();
			duty15.setName("��ƱԱ");
			
			Duty duty16 = new Duty();
			duty16.setName("����Ա");
			
			Duty duty17 = new Duty();
			duty17.setName("˾��");
			
			
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
