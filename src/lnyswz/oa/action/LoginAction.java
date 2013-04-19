package lnyswz.oa.action;

import java.io.IOException;
import java.io.PrintStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.bean.Person;
import lnyswz.oa.bean.User;
import lnyswz.oa.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	UserService userService;
	private String username;
	private String password;
	
	@Override
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		Person person = userService.login(username, password); 
		if(person != null){
			session.setAttribute("person", person);
			return SUCCESS;
		}
		return INPUT;
	}
	
	public String check() throws IOException{
		//String str="xxoohuai";
		System.out.println("Check");
		boolean isExist = userService.check(username);
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");//�����������
		PrintStream out = new PrintStream(response.getOutputStream());//��ȡout�������
		if(isExist){
			out.println("1");
		}else{
			out.println("0");	
		}
		return null;//���ﷵ�ص���null
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}
