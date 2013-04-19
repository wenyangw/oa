package lnyswz.oa.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import lnyswz.oa.bean.User;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class TestMapAction extends ActionSupport{
	@Override
	public String execute() throws Exception {
		Map map = new HashMap();
		
		List<User> list1 = new ArrayList<User>();
		
		User user1 = new User();
		user1.setName("wwy");
		user1.setPassword("111111");
		list1.add(user1);
		User user2 = new User();
		user2.setName("lfb");
		user2.setPassword("222222");
		list1.add(user2);
		
		map.put("a", list1);
		
		List<User> list2 = new ArrayList<User>();
		
		User user3 = new User();
		user3.setName("th");
		user3.setPassword("111111");
		list2.add(user3);
		User user4 = new User();
		user4.setName("zqj");
		user4.setPassword("222222");
		list2.add(user4);
		
		map.put("b", list2);
		
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("maps", map);
		return SUCCESS;
	}
}
