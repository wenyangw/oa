package lnyswz.oa.action;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.bean.Message;
import lnyswz.oa.bean.Paper;
import lnyswz.oa.service.MessageService;
import lnyswz.oa.service.PersonService;
import lnyswz.oa.utils.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class ShowMessageAction extends ActionSupport {
	private MessageService messageService;
	private PersonService personService;
	private int id;
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		
 		Message message = messageService.findMessage(id);
		if(message != null){
			//处理收件人
			Set set = message.getReceivers();
			String recsStr = "";
			for(Object i : set){
				recsStr += (personService.findPerson((Integer)i).getName() + ";");
			}
			
			//处理附件
			Set<Paper> papers = message.getAttachments();
			
			//处理读取时间
			
//			String readTime = message.getReadTime();
//			if("".equals(readTime)){
//				message.setIsRead("1");
//				message.setReadTime(Tools.getTimeForField());
//				messageService.modifyMessage(message);
//			}
			
			request.setAttribute("papers", papers);
			request.setAttribute("receivers", recsStr);
			request.setAttribute("message", message);
			return SUCCESS;
		}
		return null;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}
	
}
