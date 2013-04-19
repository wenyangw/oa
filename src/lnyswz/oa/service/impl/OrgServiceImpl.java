package lnyswz.oa.service.impl;

import java.util.List;
import java.util.Map;

import lnyswz.oa.bean.Organization;
import lnyswz.oa.dao.OrgDAO;
import lnyswz.oa.service.OrgService;

public class OrgServiceImpl implements OrgService {
	private OrgDAO orgDAO;
	
	
	public List<Organization> getOrgs() {
		return orgDAO.findOrgs();
	}
	
	public Organization getOrg(int orgId){
		return orgDAO.findOrg(orgId);
	}

	public void setOrgDAO(OrgDAO orgDAO) {
		this.orgDAO = orgDAO;
	}
	
	
}
