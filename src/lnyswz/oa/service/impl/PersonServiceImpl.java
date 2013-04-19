package lnyswz.oa.service.impl;

import lnyswz.oa.bean.Person;
import lnyswz.oa.dao.PersonDAO;
import lnyswz.oa.service.PersonService;

public class PersonServiceImpl implements PersonService {
	private PersonDAO personDAO;

	public Person findPerson(int personId) {
		return personDAO.findPerson(personId);
	}
	
	public void modifyPerson(Person person){
		personDAO.modifyPerson(person);
	}

	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}
}
