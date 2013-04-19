package lnyswz.oa.dao.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;

import lnyswz.oa.bean.Duty;
import lnyswz.oa.bean.Organization;
import lnyswz.oa.bean.Person;
import lnyswz.oa.dao.PersonDAO;
import lnyswz.oa.utils.AbstractPagerManager;
import lnyswz.oa.utils.HibernateUtils;
import lnyswz.oa.utils.PagerModel;

public class PersonDAOImpl extends AbstractPagerManager implements
		PersonDAO {

	public void addPerson(Person person) {
		this.getHibernateTemplate().save(person);
	}

	public void deletePerson(int personId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().load(Person.class, personId));
	}

	public void modifyPerson(Person person) {
		this.getHibernateTemplate().update(person);
	}

	public Person findPerson(int personId) {
		return (Person)this.getHibernateTemplate().load(Person.class, personId);
	}
	
	public List<Person> findPersons(int orgId) {
		return this.getHibernateTemplate().find("select p from Person p where p.org.id = " + orgId);
	}
	
	public PagerModel findPersons() {
		return this.searchPaginated("from Person p order by p.org.id, p.id, p.duty.id ");
	}

	public PagerModel findPersonsByDuty(int dutyId) {
		return this.searchPaginated("from Person p where p.duty.id = ?", dutyId);
	}

	public PagerModel findPersonsByOrg(int orgId) {
		return this.searchPaginated("from Person p where p.org.id = ?", orgId);
	}

	public PagerModel findPersonsBySW(String hql, Object[] params) {
		return this.searchPaginated(hql, params);
	}

}
