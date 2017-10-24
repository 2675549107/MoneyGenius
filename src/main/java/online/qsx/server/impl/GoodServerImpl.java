/**
 * 
 */
package online.qsx.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import online.qsx.dao.GoodDao;
import online.qsx.dao.UserDao;
import online.qsx.model.Good;
import online.qsx.model.GoodGroup;
import online.qsx.model.User;
import online.qsx.model.UserAndGood;
import online.qsx.server.GoodServer;

/**
 * Good的业务层
 * @author Dike
 */
@Transactional
@Service(value = "goodServerImpl")
public class GoodServerImpl implements GoodServer{
	@Autowired
	private GoodDao goodDao;

	@Override
	public List<Good> getAllGoods() {
		return goodDao.getAllGoods();
	}

	@Override
	public List<Good> getGoodsByGroupId(int id) {
		return goodDao.getGoodsByGroupId(id);
	}
	
	@Override
	public Good getGoodsById(int id) {
		return goodDao.getGoodsById(id);
	}
	
	@Override
	public GoodGroup getGoodsGroupByGroupId(int id) {
		return goodDao.getGoodsGroupByGroupId(id);
	}
	
	@Override
	public void investment(Long userId, Integer goodId, Integer goodNum) {
		UserAndGood uag = new UserAndGood();
		uag.setUesrId(userId);
		uag.setGoodId(goodId);
		uag.setGoodNum(goodNum);
		
		goodDao.investment(uag);
	}
	
	//setter and getter
	public GoodDao getGoodDao() {
		return goodDao;
	}

	public void setGoodDao(GoodDao goodDao) {
		this.goodDao = goodDao;
	}
}
