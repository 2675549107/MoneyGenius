package online.qsx.server;

import java.util.List;

import online.qsx.model.Good;
import online.qsx.model.GoodGroup;
import online.qsx.model.User;

public interface GoodServer {
	public List<Good> getAllGoods();
	
	public List<Good> getGoodsByGroupId(int id);
	
	public Good getGoodsById(int id);
	
	public GoodGroup getGoodsGroupByGroupId(int id);
	
	public void investment(Long userId, Integer goodId, Integer goodNum);


    public void delete(Integer integer);

    public void updateGood(Long uesrId, String username, String email, Integer tel,
            Integer userStatus, Integer userStatus1, String description);

	
	public List<GoodGroup> getAllGoodGroup();
	
	public void Sell(Good good);
}
