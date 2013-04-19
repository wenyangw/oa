package lnyswz.oa.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.service.ShowDutiessService;
import lnyswz.oa.utils.PagerModel;

import com.opensymphony.xwork2.ActionSupport;

public class ShowDutiesAction extends ActionSupport {
	private ShowDutiessService showDutiesService;
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
				
		PagerModel pagerMpdel = showDutiesService.showDutys();
		request.setAttribute("pm", pagerMpdel);
		
		return SUCCESS;
	}

	public void setShowDutiesService(ShowDutiessService showDutiesService) {
		this.showDutiesService = showDutiesService;
	}
	
	
}
