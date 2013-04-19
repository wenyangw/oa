package lnyswz.oa.service;

import java.util.List;

import lnyswz.oa.bean.Duty;

public interface DutyService {
	public List<Duty> getDuties();
	public Duty getDuty(int dutyId);
}
