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
@Table(name = "tb_goodgroup")
public class GoodGroup {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "goodgroup_id")
	private Integer goodGroupId;
	
	@Column(name = "goodgroup_name")
	private String goodGroupName;
	
	//产品类型组与产品关系
	@OneToMany(fetch = FetchType.EAGER,cascade={CascadeType.ALL})
	@JoinColumn(name="goodgroup_id")
	private Set<Good> goods;
	
	//setter and getter
	public Integer getGoodGroupId() {
		return goodGroupId;
	}

	public void setGoodGroupId(Integer goodGroupId) {
		this.goodGroupId = goodGroupId;
	}

	public String getGoodGroupName() {
		return goodGroupName;
	}

	public void setGoodGroupName(String goodGroupName) {
		this.goodGroupName = goodGroupName;
	}

	public Set<Good> getGoods() {
		return goods;
	}

	public void setGoods(Set<Good> goods) {
		this.goods = goods;
	}


}
