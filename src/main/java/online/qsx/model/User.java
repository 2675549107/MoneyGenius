package online.qsx.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
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
	
	//toStirng
	@Override
	public String toString() {
		return "User [uesrId=" + uesrId + ", userName=" + userName + ", phone=" + phone + ", email=" + email
				+ ", status=" + status + ", creditworthiness=" + creditworthiness + ", password=" + password + "]";
	}
}
