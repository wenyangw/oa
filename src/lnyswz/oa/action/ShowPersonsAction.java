package lnyswz.oa.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.service.ShowPersonsService;
import lnyswz.oa.utils.PagerModel;

import com.opensymphony.xwork2.ActionSupport;

public class ShowPersonsAction extends ActionSupport {
	private ShowPersonsService showPersonsService;
	@Override
	public String execute() throws Exception {
		//HttpSession session = ServletActionContext.getRequest().getSession();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("pager.offset: " + request.getParameter("pager.offset"));
		PagerModel pagerModel = showPersonsService.showPersons();
		request.setAttribute("pm", pagerModel);
		return SUCCESS;
	}
	public void setShowPersonsService(ShowPersonsService showPersonsService) {
		this.showPersonsService = showPersonsService;
	}
	
}
