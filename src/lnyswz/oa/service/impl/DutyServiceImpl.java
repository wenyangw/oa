package lnyswz.oa.service.impl;

import java.util.List;

import lnyswz.oa.bean.Duty;
import lnyswz.oa.dao.DutyDAO;
import lnyswz.oa.service.DutyService;

public class DutyServiceImpl implements DutyService {
	private DutyDAO dutyDAO;
	
	public List<Duty> getDuties() {
		return dutyDAO.getDuties();
	}
	
	public Duty getDuty(int dutyId){
		return dutyDAO.findDuty(dutyId);
	}
	
	public void setDutyDAO(DutyDAO dutyDAO) {
		this.dutyDAO = dutyDAO;
	}
}
