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
	//更新页面字段
	private Long uesrId;
	private String username;
	private String email;
	private Integer tel;
    private Integer userStatus;
	private Integer userStatus1;
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
	    user = userServer.getUserById(index+1);
	    userStatus = user.getCreditworthiness();
		if(userStatus>=0&&userStatus<25) {
		    userStatus = 3;
		} else if(userStatus>=25&&userStatus<50) {
		    userStatus = 2;
		} else if(userStatus>=50&&userStatus<75) {
		    userStatus = 1;
		} else if(userStatus>=75&&userStatus<=100) {
		    userStatus = 0;
		}
		userStatus1 = user.getStatus();
		return "modifyUser";
	}
	/**
	 * 更新修改用户信息
	 */
	public String updateModifyUser() {
	    userServer.updateUser(uesrId,username,email,tel,userStatus,userStatus1);
	    userList = userServer.getAllUser();
	    return "getAllUser";
	}
	/**
	 * 删除用户
	 * */
	public String deleteUser() {
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

    public Integer getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus) {
        this.userStatus = userStatus;
    }

    public Integer getUserStatus1() {
        return userStatus1;
    }

    public void setUserStatus1(Integer userStatus1) {
        this.userStatus1 = userStatus1;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getTel() {
        return tel;
    }

    public void setTel(Integer tel) {
        this.tel = tel;
    }

    public Long getUesrId() {
        return uesrId;
    }

    public void setUesrId(Long uesrId) {
        this.uesrId = uesrId;
    }

}
