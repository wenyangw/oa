package lnyswz.oa.service.impl;

import lnyswz.oa.dao.PersonDAO;
import lnyswz.oa.service.ShowPersonsService;
import lnyswz.oa.utils.PagerModel;

public class ShowPersonsServiceImpl implements ShowPersonsService {
	private PersonDAO personDAO;

	public PagerModel showPersons() {
		return personDAO.findPersons();
	}

	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}

}
