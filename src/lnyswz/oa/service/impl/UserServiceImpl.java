package lnyswz.oa.service.impl;

import lnyswz.oa.bean.Person;
import lnyswz.oa.bean.User;
import lnyswz.oa.dao.UserDAO;
import lnyswz.oa.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO userDAO;
	
	public void modifyPassword(User user) {
		userDAO.modifyUser(user);
	}
	
	public Person login(String username, String password){
		User user = userDAO.findUserByName(username);
		if(user == null){
			return null;
		}
		if(password.equals(user.getPassword())){
			return user.getPerson();
		}
		return null;
	}
	
	public boolean check(String username){
		User user = userDAO.findUserByName(username);
		if(user != null){
			return true;
		}
		return false;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
}
