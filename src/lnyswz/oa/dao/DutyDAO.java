package lnyswz.oa.dao;

import java.util.List;

import lnyswz.oa.bean.Duty;
import lnyswz.oa.utils.PagerModel;

public interface DutyDAO {
	public void addDuty(Duty duty);
	
	public void deleteDuty(int dutyId);
	
	public void modifyDuty(Duty duty);
	
	public Duty findDuty(int dutyId);
	
	public PagerModel findDuties();
	
	public List<Duty> getDuties();
}
