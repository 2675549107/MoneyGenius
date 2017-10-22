package online.qsx.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import online.qsx.common.BaseDao;
import online.qsx.dao.UserDao;
import online.qsx.model.User;
import online.qsx.model.UserGroup;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private BaseDao baseDao;

	/**
	 * 查找所有用户
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAll() {
		return (List<User>)baseDao.getHibernateTemplate().find("from User");
	}
	
	/**
	 * 根据姓名查找
	 * */
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUserByName(String userName) {
		return (List<User>)baseDao.getHibernateTemplate().find("from User where userName like ?", "%"+userName+"%");
	}

	/**
	 * 添加用户
	 * */
	@Override
	public void addUser(User user) {
		baseDao.getHibernateTemplate().save(user);
	}

	/**
	 * 修改用户
	 * */
	@Override
	public void updateUser(User user) {
		baseDao.getHibernateTemplate().update(user);
	}

	/**
	 * 删除指定用户
	 * */
	@Override
	public void deleteUser(User user) {
		baseDao.getHibernateTemplate().delete(user);
	}

	/**
	 * 通过邮箱得到用户
	 * */
	@Override
	public User getUserByEmail(String email) {
		try {
			User u = new User();
			u = (User)(baseDao.getHibernateTemplate().find("from User where email = ?", email).get(0));
			return u;
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 通过用户组id得到用户组
	 * */
	@Override
	public UserGroup getGroupByGroupId(int id) {
		UserGroup ug = (UserGroup)(baseDao.getHibernateTemplate().find("from UserGroup where userGroupId = ?", id).get(0));
		return ug;
	}

	/**
	 * 获取所有用户组
	 * */
	@Override
	public List<UserGroup> getAllUserGroup() {
		return (List<UserGroup>)baseDao.getHibernateTemplate().find("from UserGroup");
	}
}
