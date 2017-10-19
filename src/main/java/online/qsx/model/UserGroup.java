/**
 * 
 */
package online.qsx.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 用户组实体类
 * @author Dike
 */
@Entity
@Table(name = "tb_userGroup")
public class UserGroup {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "usergroup_id")
	private Integer userGroupId;
	
	@Column(name = "usergroup_name")
	private String userGroupName;
	
	//用户组与用户关系
	@OneToMany(fetch = FetchType.EAGER,cascade={CascadeType.ALL})
	@JoinColumn(name="usergroup_id")
	private Set<User> users;

	//setter and getter
	public Integer getUserGroupId() {
		return userGroupId;
	}

	public void setUserGroupId(Integer userGroupId) {
		this.userGroupId = userGroupId;
	}

	public String getUserGroupName() {
		return userGroupName;
	}

	public void setUserGroupName(String userGroupName) {
		this.userGroupName = userGroupName;
	}

	public Set<User> getUser() {
		return users;
	}

	public void setUser(Set<User> users) {
		this.users = users;
	}
}
