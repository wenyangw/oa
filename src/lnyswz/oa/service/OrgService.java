package lnyswz.oa.service;

import java.util.List;
import java.util.Map;

import lnyswz.oa.bean.Organization;

public interface OrgService {
	public List<Organization> getOrgs();
	public Organization getOrg(int orgId);
}
