/**
 * 
 */
package online.qsx.action;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.model.Good;
import online.qsx.model.GoodGroup;
import online.qsx.model.User;
import online.qsx.model.UserGroup;
import online.qsx.server.GoodServer;
import online.qsx.server.UserServer;

/**
 * 进入主页
 * @author Dike
 */
@Component(value = "homeAction")
public class HomeAction {
	@Autowired
	private UserServer userServer;
	@Autowired
	private GoodServer goodServer;
	
	private User user;
	
	private UserGroup userGroup;
	
	private Set<User> users;
	
	private GoodGroup goodGroup;
	
	private List<UserGroup> userGroupList;

	private List<Good> goods; 

	private List<User> userList;
	private Good good;
	
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
	    userList = userServer.getAllUser();
		return "adminHome";
	}
	
	/**
	 * 管理员left
	 * */
	public String left() {
		return "left";
	}
	
	/**
	 * 管理员投票
	 * */
	public String top() {
		return "top";
	}
	
	/**
	 * 管理员index
	 * */
	public String adminIndex() {
	    
		return "adminIndex";
	}
	
	/**
	 * 打开注册页面
	 * */
	public String openRegister() {
		userGroupList = userServer.getAllUserGroup();
		return "openRegister";
	}
	
	/**
	 * 注册功能
	 * */
	public String register() {
		user.setUserGroupId(userGroup.getUserGroupId());
		user.setCreditworthiness(100);
		user.setStatus(0);
		userServer.addUser(user);
		return "backhome";
	}
	
	/**
	 * 打开登录页面
	 * */
	public String openLogin() {
		return "openLogin";
	}
	
	/**
	 * 登录功能
	 * */
	public String login() {
		User u = userServer.getUserByEmail(user);
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(u == null) {
			session.setAttribute("noUser", 1);
			return "openLogin";
		}
		else if(!u.getPassword().equals(user.getPassword())) {
			session.setAttribute("noPassword", 1);
			return "openLogin";
		}
		else if(u.getStatus()==1) {
			session.setAttribute("sequestered", 1);
			return "openLogin";
		}
		else {
			userGroup = userServer.getGroupByGroupId(u.getUserGroupId());
			session.setAttribute("currentuser", u);
			if(userGroup.getUserGroupName().equals("系统管理员")) {
				return "adminHome";
			}
			else if (userGroup.getUserGroupName().equals("注册会员")) {
				return "home";
			}
		}
		
		return "openLogin";
	}

	/**
	 * 展示商品
	 * */
	public String showGoods() {
		if(goodGroup==null || goodGroup.getGoodGroupId()==0) {
			goods = goodServer.getAllGoods();
		}
		else {
			goods = goodServer.getGoodsByGroupId(goodGroup.getGoodGroupId());
		}
		return "showGoods";
	}
	
	/**
	 *	打开商品详情
	 * */
	public String goodDetails() {
		good = goodServer.getGoodsById(good.getGoodId());
		goodGroup = goodServer.getGoodsGroupByGroupId(good.getGoodGroupId());
		return "goodDetails";
	}
	
	/**
	 * 打开融资
	 * */
	public String openBailout() {
		return "openBailout";
	}
	
	/**
	 * 打开AboutUs
	 * */
	public String openAboutUs() {
		return "openAboutUs";
	}
	
	/**
	 * 打开新手指南
	 * */
	public String openBeginnersGuide() {
		return "openBeginnersGuide";
	}
	
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

	public List<UserGroup> getUserGroupList() {
		return userGroupList;
	}

	public void setUserGroupList(List<UserGroup> userGroupList) {
		this.userGroupList = userGroupList;
	}

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
    
	public GoodGroup getGoodGroup() {
		return goodGroup;
	}

	public void setGoodGroup(GoodGroup goodGroup) {
		this.goodGroup = goodGroup;
	}

	public GoodServer getGoodServer() {
		return goodServer;
	}

	public void setGoodServer(GoodServer goodServer) {
		this.goodServer = goodServer;
	}

	public List<Good> getGoods() {
		return goods;
	}

	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}
}
