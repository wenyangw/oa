package lnyswz.oa.dao;

import java.util.List;

import lnyswz.oa.bean.Person;
import lnyswz.oa.utils.PagerModel;

public interface PersonDAO {
	public void addPerson(Person person);
	
	public void deletePerson(int personId);
	
	public void modifyPerson(Person person);
	
	public Person findPerson(int personId);
	
	public List<Person> findPersons(int orgId);
	
	public PagerModel findPersons();
	
	public PagerModel findPersonsByDuty(int dutyId);
	
	public PagerModel findPersonsByOrg(int orgId);
	
	/*
	 * 根据某些条件查询人员
	 */
	public PagerModel findPersonsBySW(String hql, Object[] params);
	
}
