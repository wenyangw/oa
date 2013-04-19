package lnyswz.oa.dao.impl;

import java.util.List;

import lnyswz.oa.bean.User;
import lnyswz.oa.dao.UserDAO;
import lnyswz.oa.utils.AbstractPagerManager;
import lnyswz.oa.utils.PagerModel;

public class UserDAOImpl extends AbstractPagerManager implements UserDAO {

	public void addUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	public void deleteUser(int userId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().load(User.class, userId));
	}

	public void modifyUser(User user) {
		this.getHibernateTemplate().update(user);
	}

	public User findUser(int userId) {
		return (User)this.getHibernateTemplate().load(User.class, userId);
	}
	
	public User findUserByName(String username) {
		List<User> users = this.getHibernateTemplate().find("from User u where u.name = ?", username);
		if(users.size() == 1){
			return users.get(0);
		}
		//User user = (User)this.getSession().createCriteria(User.class).add(Expression.eq("name", username)).uniqueResult();
		return null;
	}
	
	public PagerModel findUsers() {
		return this.searchPaginated("from UserInfo");
	}
	
}
