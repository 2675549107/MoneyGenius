/**
 * 
 */
package online.qsx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import online.qsx.common.BaseDao;
import online.qsx.dao.GoodDao;
import online.qsx.model.Good;
import online.qsx.model.GoodGroup;
import online.qsx.model.User;
import online.qsx.model.UserAndGood;

/**
 * @author Dike
 */
@Repository
public class GoodDaoImpl implements GoodDao{
	@Autowired
	private BaseDao baseDao;

	/**
	 * 得到所有商品
	 * */
	@Override
	public List<Good> getAllGoods() {
		return 	(List<Good>)baseDao.getHibernateTemplate().find("from Good");
	}

	/**
	 * 通过商品类型得到商品
	 * */
	@Override
	public List<Good> getGoodsByGroupId(int id) {
		return (List<Good>)baseDao.getHibernateTemplate().find("from Good where goodGroupId = ?", id);
	}

	/**
	 * 通过id得到商品
	 * */
	@Override
	public Good getGoodsById(int id) {
		return baseDao.getHibernateTemplate().get(Good.class, id);
	}

	/**
	 * 通过类型id得到类型
	 * */
	@Override
	public GoodGroup getGoodsGroupByGroupId(int id) {
		return baseDao.getHibernateTemplate().get(GoodGroup.class, id);
	}
	
	/**
	 * 用户投资
	 * */
	@Override
	public void investment(UserAndGood udg) {
		baseDao.getHibernateTemplate().save(udg);
	}

	//删除产品
    @Override
    public void delete(Integer index) {
        Good good = baseDao.getHibernateTemplate().get(Good.class, ++index);
        baseDao.getHibernateTemplate().delete(good);
       Query query = baseDao.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery("update Good  set goodId = goodId-1 where goodId > "+index);
       query.executeUpdate();
    }
    //提交更新产品信息
    @Override
    public void updateGood(Long uesrId, String username, String email,
            Integer tel, Integer userStatus, Integer userStatus1,
            String description) {
        System.out.println(Integer.valueOf(uesrId.toString()));
        Good good = baseDao.getHibernateTemplate().get(Good.class, Integer.valueOf(uesrId.toString()));
        System.out.println(good.toString());
        good.setGoodName(username);
        good.setGoodNum(tel);
        good.setPrice(Double.parseDouble(email));
        good.setGoodGroupId(userStatus);
        good.setDescription(description);
        good.setStatus(userStatus1);
        baseDao.getHibernateTemplate().update(good);
    }
    


	/**
	 * 得到所有商品类 
	 * */
	@Override
	public List<GoodGroup> getAllGoodGroup() {
		return (List<GoodGroup>)baseDao.getHibernateTemplate().find("from GoodGroup");
	}
	
	/**
	 * 融资
	 * */
	@Override
	public void sell(Good good) {
		baseDao.getHibernateTemplate().save(good);
	}
}
