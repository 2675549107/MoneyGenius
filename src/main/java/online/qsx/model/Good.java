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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 产品列表
 * @author Dike
 */
@Entity
@Table(name = "tb_good")
public class Good {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "good_id")
	private Integer goodId;
	
	@Column(name = "good_name")
	private String goodName;
	
	@Column
	private String description;
	
	@Column
	private Double price;
	
	@Column
	private Integer goodNum;
	
	@Column
	private Integer status;
	
	@Column(name = "goodgroup_id")
	private Integer goodGroupId;
	
	@Column()
	private String url;
	
	//用户与产品关系
	@OneToMany(fetch = FetchType.EAGER,cascade={CascadeType.ALL})
	@JoinColumn(name="good_id")
	private Set<UserAndGood> ugs;
	
	//setter and getter
	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public String getGoodName() {
		return goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getGoodNum() {
		return goodNum;
	}

	public void setGoodNum(Integer goodNum) {
		this.goodNum = goodNum;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getGoodGroupId() {
		return goodGroupId;
	}

	public void setGoodGroupId(Integer goodGroupId) {
		this.goodGroupId = goodGroupId;
	}

	public Set<UserAndGood> getUgs() {
		return ugs;
	}

	public void setUgs(Set<UserAndGood> ugs) {
		this.ugs = ugs;
	}


    @Override
    public String toString() {
        return "Good [goodId=" + goodId + ", goodName=" + goodName
                + ", description=" + description + ", price=" + price
                + ", goodNum=" + goodNum + ", status=" + status
                + ", goodGroupId=" + goodGroupId + "]";
    }

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
