package lnyswz.oa.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.bean.Person;
import lnyswz.oa.service.MessageService;
import lnyswz.oa.utils.PagerModel;

import com.opensymphony.xwork2.ActionSupport;

public class SendedMessagesAction extends ActionSupport {
	private MessageService messageService;

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		
		PagerModel pagerModel = messageService.sendedMessages(((Person)session.getAttribute("person")).getId());
		request.setAttribute("pm", pagerModel);
		return SUCCESS;
	}
	
	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

}
