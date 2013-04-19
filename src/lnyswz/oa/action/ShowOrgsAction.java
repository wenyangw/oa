package lnyswz.oa.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.service.ShowOrgsService;
import lnyswz.oa.utils.PagerModel;

import com.opensymphony.xwork2.ActionSupport;

public class ShowOrgsAction extends ActionSupport {
	private ShowOrgsService showOrgsService;
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		
		PagerModel pagerModel = showOrgsService.showOrgs();
		request.setAttribute("pm", pagerModel);
		
		return SUCCESS;
	}

	public void setShowOrgsService(ShowOrgsService showOrgsService) {
		this.showOrgsService = showOrgsService;
	}
	
	
}
