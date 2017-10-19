/**
 * 
 */
package online.qsx.action;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.model.User;
import online.qsx.model.UserGroup;
import online.qsx.server.UserServer;

/**
 * 进入主页
 * @author Dike
 */
@Component(value = "homeAction")
public class HomeAction {
	@Autowired
	private UserServer userServer;
	
	private User user;
	
	private UserGroup userGroup;
	
	private Set<User> users;
	
	/**
	 * 前台入口
	 * */
	public String home() {
		return "home";
	}
	
	/**
	 * 管理员入口
	 * */
	public String adminHome() {
		return "adminHome";
	}
	
	/**
	 * 注册功能
	 * */
	public String register() {
		user.setUserGroupId(userGroup.getUserGroupId());
		userServer.addUser(user);
		return "success";
	}
	
	/**
	 * 登录功能
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
