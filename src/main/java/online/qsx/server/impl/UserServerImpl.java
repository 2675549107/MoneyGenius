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
	 * 根据Id查找
	 */
	public User getUserById(Long id) {
	    return userDao.getUserById(id);
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
	public void deleteUser(User user,Long id) {
	        userDao.deleteUser(user,id);
	}
	
	/**
	 * 通过email得到用户
	 * */
	@Override
	public User getUserByEmail(User user) {
		return userDao.getUserByEmail(user.getEmail());
	}

	/**
	 * 通过用户组id得到用户组
	 * */
	@Override
	public UserGroup getGroupByGroupId(int id) {
		return userDao.getGroupByGroupId(id);
	}
	
	/**
	 * 获得所有用户组
	 * */
	@Override
	public List<UserGroup> getAllUserGroup() {
		return userDao.getAllUserGroup();
	}
	
	//setter and getter
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
