package lnyswz.oa.service.impl;


import lnyswz.oa.dao.DutyDAO;
import lnyswz.oa.service.ShowDutiessService;
import lnyswz.oa.utils.PagerModel;

public class ShowDutiesServiceImpl implements ShowDutiessService {
	private DutyDAO dutyDAO;
	
	public PagerModel showDutys() {
		return dutyDAO.findDuties();
	}
	
	public void setDutyDAO(DutyDAO dutyDAO) {
		this.dutyDAO = dutyDAO;
	}

}
