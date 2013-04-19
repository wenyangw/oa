package lnyswz.oa.dao;

import java.util.List;

import lnyswz.oa.bean.Organization;
import lnyswz.oa.utils.PagerModel;

public interface OrgDAO {
	public void addOrg(Organization org);
	
	public void deleteOrg(int orgId);
	
	public void modifyOrg(Organization org);
	
	public Organization findOrg(int orgId);
	
	public PagerModel findOrganizations();
	
	public List<Organization> findOrgs();
}
