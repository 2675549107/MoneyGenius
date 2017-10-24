package online.qsx.action;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.dao.GoodDao;
import online.qsx.model.Good;
import online.qsx.model.GoodGroup;
import online.qsx.model.User;
import online.qsx.model.UserGroup;
import online.qsx.server.GoodServer;
import online.qsx.server.UserServer;
@Component("userAction")
public class UserAction {

	@Autowired
	private UserServer userServer;
	@Autowired
	private GoodServer goodServer;
	
	private User user;
	
	private UserGroup userGroup;
	
	private GoodGroup goodGroup;
	
	private Set<User> users;
	
	private Good good;
	
	private List<GoodGroup> goodGroupList;
	
	/**购买的数量*/
	private Integer num;
	
	/**
	 * 投资功能（买）
	 * */
	public String buyGoods() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		user = (User)session.getAttribute("currentuser");
		goodServer.investment(user.getUesrId(), good.getGoodId(), num);
		return "success";
	}
	
	/**
	 * 融资页面
	 * */
	public String openSell() {
		goodGroupList = goodServer.getAllGoodGroup();
		return "openSell";
	}
	
	/**
	 * 融资功能（卖）
	 * */
	public String Sell() {
		System.out.println(good.getGoodGroupId());
		good.setStatus(1);
		goodServer.Sell(good);
		return "success";
	}
	
	/**
	 * 进入我的信息
	 * */
	public String openMembers() {
		return "openMembers";
	}
	
	/**
	 * 修改自己信息
	 * */
	public String openModifyMy() {
		return "openModifyMy";
	}
	
	public String midifyMy() {
		System.out.println("jin le");
		userServer.updateUser(user);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("currentuser", user);
		return "midifyMy";
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

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public GoodServer getGoodServer() {
		return goodServer;
	}

	public void setGoodServer(GoodServer goodServer) {
		this.goodServer = goodServer;
	}

	public GoodGroup getGoodGroup() {
		return goodGroup;
	}

	public void setGoodGroup(GoodGroup goodGroup) {
		this.goodGroup = goodGroup;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public List<GoodGroup> getGoodGroupList() {
		return goodGroupList;
	}

	public void setGoodGroupList(List<GoodGroup> goodGroupList) {
		this.goodGroupList = goodGroupList;
	}
}
