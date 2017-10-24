package online.qsx.dao;

import java.util.List;

import online.qsx.model.Good;
import online.qsx.model.GoodGroup;
import online.qsx.model.User;
import online.qsx.model.UserAndGood;

public interface GoodDao {
	public List<Good> getAllGoods();
	
	public List<Good> getGoodsByGroupId(int id);
	
	public Good getGoodsById(int id);
	
	public GoodGroup getGoodsGroupByGroupId(int id);
	
	public void investment(UserAndGood uag);

    public void delete(Integer index);

    public void updateGood(Long uesrId, String username, String email,
            Integer tel, Integer userStatus, Integer userStatus1,
            String description);
}
