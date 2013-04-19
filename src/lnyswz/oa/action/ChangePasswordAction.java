package lnyswz.oa.action;

import javax.servlet.http.HttpSession;

import lnyswz.oa.bean.Person;
import lnyswz.oa.bean.User;
import lnyswz.oa.service.UserService;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordAction extends ActionSupport {
	UserService userService;
	
	private String password;
	private String newPassword;
	
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		Person person = (Person)session.getAttribute("person");
		
		User user = person.getUser();
		System.out.println("password=" + password);
		System.out.println("newPassword=" + newPassword);
		if(password.equals(user.getPassword())){
			user.setPassword(newPassword);
			userService.modifyPassword(user);
			return SUCCESS;
		}
		return INPUT;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
