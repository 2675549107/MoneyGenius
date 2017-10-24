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
	public void investment(Long userId, Integer goodId, Integer goodNum, Double totalMoney) {
		UserAndGood uag = new UserAndGood();
		uag.setUesrId(userId);
		uag.setGoodId(goodId);
		uag.setGoodNum(goodNum);
		uag.setTotalMoney(totalMoney);
		
		goodDao.investment(uag);
	}
	
	@Override
	public void Sell(Good good) {
		goodDao.sell(good);
	}
	
	@Override
	public List<GoodGroup> getAllGoodGroup() {
		return goodDao.getAllGoodGroup();
	}
	
	//setter and getter
	public GoodDao getGoodDao() {
		return goodDao;
	}

	public void setGoodDao(GoodDao goodDao) {
		this.goodDao = goodDao;
	}
    //删除产品
    @Override
    public void delete(Integer index) {
        goodDao.delete(index);
    }
    //更新产品列表
    @Override
    public void updateGood(Long uesrId, String username, String email, Integer tel,
            Integer userStatus, Integer userStatus1, String description) {
        goodDao.updateGood(uesrId,  username, email,  tel, userStatus,userStatus1, description);
    }

    //得到用户的投资产品
	@Override
	public List<UserAndGood> getMyFund(long userId) {
		return goodDao.getMyFund(userId);
	}
}
