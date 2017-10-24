package online.qsx.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_user_good")
public class UserAndGood {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ug_id")
	private Integer ugId;
	
	@Column(name = "user_id")
	private Long uesrId;
	
	@Column(name = "good_id")
	private Integer goodId;
	
	@Column(name = "good_num")
	private Integer goodNum;
	
	@Column(name = "total_money")
	private Double totalMoney;
	
	//setter and getter
	public Integer getUgId() {
		return ugId;
	}

	public void setUgId(Integer ugId) {
		this.ugId = ugId;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public Long getUesrId() {
		return uesrId;
	}

	public void setUesrId(Long uesrId) {
		this.uesrId = uesrId;
	}

	public Integer getGoodNum() {
		return goodNum;
	}

	public void setGoodNum(Integer goodNum) {
		this.goodNum = goodNum;
	}

	public Double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}
}
