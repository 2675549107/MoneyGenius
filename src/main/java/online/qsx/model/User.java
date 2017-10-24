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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.BatchSize;

@Entity
@BatchSize(size=100)
@Table(name = "tb_user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private long uesrId;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "phone")
	private String phone;

	@Column
	private String email;
	
	@Column
	private Integer status;
	
	@Column
	private Integer creditworthiness;
	
	@Column
	private String password;
	
	@Column(name = "usergroup_id")
	private Integer userGroupId;
	
	//用户与用户组关系
/*	@ManyToOne(fetch = FetchType.LAZY,cascade={CascadeType.ALL})
	@JoinColumn(name="usergroup_id")
	private UserGroup userGroup;*/
	
	//用户与产品关系
	@OneToMany(fetch = FetchType.EAGER,cascade={CascadeType.ALL})
	@JoinColumn(name="user_id")
	private Set<UserAndGood> ugs;
		
	//setter and getter
	public long getUesrId() {
		return uesrId;
	}

	public void setUesrId(long uesrId) {
		this.uesrId = uesrId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getCreditworthiness() {
		return creditworthiness;
	}

	public void setCreditworthiness(Integer creditworthiness) {
		this.creditworthiness = creditworthiness;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
/*	public UserGroup getUserGroup() {
		return userGroup;
	}

	public void setUserGroup(UserGroup userGroup) {
		this.userGroup = userGroup;
	}*/

	public Integer getUserGroupId() {
		return userGroupId;
	}

	public Set<UserAndGood> getUgs() {
		return ugs;
	}

	public void setUgs(Set<UserAndGood> ugs) {
		this.ugs = ugs;
	}

	public void setUserGroupId(Integer userGroupId) {
		this.userGroupId = userGroupId;
	}

	//toStirng
	@Override
	public String toString() {
		return "User [uesrId=" + uesrId + ", userName=" + userName + ", phone=" + phone + ", email=" + email
				+ ", status=" + status + ", creditworthiness=" + creditworthiness + ", password=" + password + "]";
	}
}
