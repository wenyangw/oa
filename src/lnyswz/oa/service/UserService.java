package lnyswz.oa.service;

import lnyswz.oa.action.ChangePasswordAction;
import lnyswz.oa.bean.Person;
import lnyswz.oa.bean.User;

public interface UserService {
	public void modifyPassword(User user);
	public Person login(String username, String password);
	public boolean check(String username);
}
