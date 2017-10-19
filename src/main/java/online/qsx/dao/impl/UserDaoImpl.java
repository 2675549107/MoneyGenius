package online.qsx.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import online.qsx.common.BaseDao;
import online.qsx.dao.UserDao;
import online.qsx.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private BaseDao baseDao;

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAll() {
		return (List<User>)baseDao.getHibernateTemplate().find("from User");
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUserByName(String userName) {
		return (List<User>)baseDao.getHibernateTemplate().find("from User where userName = ?", userName);
	}

	@Override
	public void addUser(User user) {
		baseDao.getHibernateTemplate().save(user);
	}
}
