/**
 * 
 */
package online.qsx.dao.impl;

import java.util.List;

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
	
}
