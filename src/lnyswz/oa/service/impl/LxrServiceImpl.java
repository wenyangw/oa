package lnyswz.oa.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import lnyswz.oa.bean.Lxr;
import lnyswz.oa.bean.Organization;
import lnyswz.oa.bean.Person;
import lnyswz.oa.dao.OrgDAO;
import lnyswz.oa.dao.PersonDAO;
import lnyswz.oa.service.LxrService;

public class LxrServiceImpl implements LxrService {
	private OrgDAO orgDAO;
	private PersonDAO personDAO;
	
	public Map<String, List<Lxr>> getLxrs() {
		Map<String, List<Lxr>> map = new LinkedHashMap<String, List<Lxr>>();
		
		List<Organization> orgs = orgDAO.findOrgs(); 
		
		for(Organization org : orgs){
			
			List<Person> persons = personDAO.findPersons(org.getId());
			List<Lxr> lxrs = new ArrayList<Lxr>();
			for(Person person : persons){
				Lxr lxr = new Lxr();
				lxr.setId(person.getId());
				lxr.setName(person.getName());
				lxrs.add(lxr);
			}
			
			map.put(org.getName(), lxrs);
		}
		return map;
	}
	
	public Map<Integer, String> getReceivers() {
		System.out.println("LxrServiceImpl:getReceivers()");
		Map<Integer, String> maps = new LinkedHashMap<Integer, String>();
		List<Object> persons = personDAO.findPersons().getList();
		for(Object o : persons){
			Person person = (Person)o;
			System.out.println(person.getName());
			maps.put(person.getId(), person.getName());
		}
		return maps;
	}
	
	public void setOrgDAO(OrgDAO orgDAO) {
		this.orgDAO = orgDAO;
	}
	
	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}
	
}
