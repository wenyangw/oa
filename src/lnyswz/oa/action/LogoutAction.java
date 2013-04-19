package lnyswz.oa.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import lnyswz.oa.bean.Person;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		Person person = (Person)session.getAttribute("person");
		person = null;
		session.removeAttribute("person");
		return SUCCESS;
	}
}
