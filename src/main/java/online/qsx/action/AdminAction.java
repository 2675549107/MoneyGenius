/**
 * 
 */
package online.qsx.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import online.qsx.model.User;
import online.qsx.model.UserGroup;
import online.qsx.server.UserServer;

/**
 * 管理员控制层
 * @author Dike
 */
@Component(value = "adminAction")
public class AdminAction {
	@Autowired
	private UserServer userServer;
	
	private User user;
	
	private UserGroup userGroup;
	
	private List<User> userList;
	
	private Long index;
	/**
	 * 查看所有用户
	 * */
	public String getAllUser() {
		userList = userServer.getAllUser();
		return "getAllUser";
	}
	
	public String openS() {
		return "openS";
	}
	
	/**
	 * 根据用户名进行查询
	 * */
	public String getByName() {
		userList = userServer.getUserByName(user);
		return "getAllUser";
	}
	
	/**
	 * 修改用户信息
	 * */
	public String modifyUser() {
		userList = userServer.getAllUser();
		return "getAllUser";
	}
	
	/**
	 * 删除用户
	 * */
	public String deleteUser() {
	    System.out.println(index+1);
	    User user = userServer.getUserById(index+1);
	    if(user != null) {
	        userServer.deleteUser(user,index+1);
	    }
		userList = userServer.getAllUser();
		return "getAllUser";
	}
	
	/**
	 * 产品审批
	 * */ 
	
	/**
	 * 产品下架
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

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

    public Long getIndex() {
        return index;
    }

    public void setIndex(Long index) {
        this.index = index;
    }

}
