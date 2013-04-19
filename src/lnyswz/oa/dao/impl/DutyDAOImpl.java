package lnyswz.oa.dao.impl;

import java.util.List;

import lnyswz.oa.bean.Duty;
import lnyswz.oa.dao.DutyDAO;
import lnyswz.oa.utils.AbstractPagerManager;
import lnyswz.oa.utils.PagerModel;

public class DutyDAOImpl extends AbstractPagerManager implements DutyDAO {

	public void addDuty(Duty duty) {
		this.getHibernateTemplate().save(duty);

	}
	

	public void deleteDuty(int dutyId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().load(Duty.class, dutyId));

	}

	public void modifyDuty(Duty duty) {
		this.getHibernateTemplate().update(duty);

	}


	public Duty findDuty(int dutyId) {
		return (Duty)this.getHibernateTemplate().load(Duty.class, dutyId);
	}

	
	public PagerModel findDuties() {
		//return this.getHibernateTemplate().find("from Duty");
		return this.searchPaginated("from Duty");
	}

	public List<Duty> getDuties() {
		return this.getHibernateTemplate().find("from Duty");
		//return this.searchPaginated("from Duty");
	}
}
