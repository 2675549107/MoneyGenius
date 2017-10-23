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
	public List<Good> getGoodsById(int id) {
		return (List<Good>)baseDao.getHibernateTemplate().find("from Good where goodGroupId = ?", id);
	}
}
