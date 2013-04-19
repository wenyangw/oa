package lnyswz.oa.service;

import lnyswz.oa.bean.Person;

public interface PersonService {
	public Person findPerson(int personId);
	public void modifyPerson(Person person);
}
