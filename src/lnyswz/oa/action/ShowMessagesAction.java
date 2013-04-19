package lnyswz.oa.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.bean.Person;
import lnyswz.oa.service.ShowMessagesService;
import lnyswz.oa.utils.PagerModel;

import com.opensymphony.xwork2.ActionSupport;

public class ShowMessagesAction extends ActionSupport {
	private ShowMessagesService showMessageService;

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		PagerModel pagerModel = showMessageService.showMessages(((Person)session.getAttribute("person")).getId(), "2");
		
		request.setAttribute("pm", pagerModel);
		
		return SUCCESS;
	}
	
	public void setShowMessageService(ShowMessagesService showMessageService) {
		this.showMessageService = showMessageService;
	}
}
