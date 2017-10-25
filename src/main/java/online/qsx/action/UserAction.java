package online.qsx.action;

import java.util.ArrayList;
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
import online.qsx.model.UserAndGood;
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
	
	private List<UserAndGood> uags;
	
	private List<Good> goods = new ArrayList<Good>(100);
	
	/**购买的数量*/
	private Integer num;
	
	/**
	 * 投资功能（买）
	 * */
	public String buyGoods() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		user = (User)session.getAttribute("currentuser");
		goodServer.investment(user.getUesrId(), good.getGoodId(), num, num*good.getPrice());
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
		good.setStatus(0);
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
		userServer.updateUser(user);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("currentuser", user);
		return "midifyMy";
	}
	
	public String openfund() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		user = (User)session.getAttribute("currentuser");
		uags = goodServer.getMyFund(user.getUesrId());
		System.out.println(uags.size());
		for(int i=0 ; i<uags.size(); i++) {
			goods.add(goodServer.getGoodsById(uags.get(i).getGoodId()));
		}
		return "openfund";
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

	public List<UserAndGood> getUags() {
		return uags;
	}

	public void setUags(List<UserAndGood> uags) {
		this.uags = uags;
	}

	public List<Good> getGoods() {
		return goods;
	}

	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}
}
