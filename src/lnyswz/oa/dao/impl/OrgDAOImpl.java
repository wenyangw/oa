package lnyswz.oa.dao.impl;

import java.util.List;

import lnyswz.oa.bean.Organization;
import lnyswz.oa.dao.OrgDAO;
import lnyswz.oa.utils.AbstractPagerManager;
import lnyswz.oa.utils.PagerModel;

public class OrgDAOImpl extends AbstractPagerManager implements OrgDAO {

	
	public void addOrg(Organization org) {
		this.getHibernateTemplate().save(org);
	}

	
	public void deleteOrg(int orgId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().load(Organization.class, orgId));
	}

	public void modifyOrg(Organization org) {
		this.getHibernateTemplate().update(org);
	}

	public Organization findOrg(int orgId) {
		return (Organization)this.getHibernateTemplate().load(Organization.class, orgId);
	}

	public PagerModel findOrganizations() {
		return this.searchPaginated("from Organization");
	}
	
	public List<Organization> findOrgs() {
		return this.getHibernateTemplate().find("from Organization");
	}

}
