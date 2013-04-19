package lnyswz.oa.service.impl;

import lnyswz.oa.dao.OrgDAO;
import lnyswz.oa.service.ShowOrgsService;
import lnyswz.oa.utils.PagerModel;

public class ShowOrgsServiceImpl implements ShowOrgsService {
	private OrgDAO orgDAO;
	
	public PagerModel showOrgs() {
		return orgDAO.findOrganizations();
	}

	public void setOrgDAO(OrgDAO orgDAO) {
		this.orgDAO = orgDAO;
	}
	
}
