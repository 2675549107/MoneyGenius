package online.qsx.action;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.model.User;
import online.qsx.model.UserGroup;
import online.qsx.server.UserServer;
@Component("userAction")
public class UserAction {

	@Autowired
	private UserServer userServer;
	
	private User user;
	
	private UserGroup userGroup;
	
	private Set<User> users;
	
	/**
	 * 投资功能（买）
	 * */
	
	
	/**
	 * 融资功能（卖）
	 * */
	
	
	/**
	 * 查看自己信息
	 * */

	
	/**
	 * 修改自己信息
	 * */
	
	//getter and setter
	public UserServer getUserServer() {
		return userServer;
	}

	public void setUserServer(UserServer userServer) {
		this.userServer = userServer;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserGroup getUserGroup() {
		return userGroup;
	}

	public void setUserGroup(UserGroup userGroup) {
		this.userGroup = userGroup;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
}
