package online.qsx.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import online.qsx.dao.UserDao;
import online.qsx.model.User;
import online.qsx.model.UserGroup;
import online.qsx.server.UserServer;


@Transactional
@Service(value = "userServerImpl")
public class UserServerImpl implements UserServer{
	
	@Autowired
	private UserDao userDao;
	
	/**
	 * 添加用户
	 * */
	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}
	
	/**
	 * 查找所有用户
	 * */
	@Override
	public List<User> getAllUser() {
		return userDao.getAll();
	}
	
	/**
	 * 根据姓名查找
	 * */
	@Override
	public List<User> getUserByName(User user) {
		return userDao.getUserByName(user.getUserName());
	}
	
	/**
	 * 修改用户
	 * */
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	
	/**
	 * 删除用户
	 * */
	@Override
	public void deleteUser(User user) {
		userDao.deleteUser(user);
	}
	
	//setter and getter
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
