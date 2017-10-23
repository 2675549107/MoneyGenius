package online.qsx.dao;

import java.util.List;

import online.qsx.model.Good;
import online.qsx.model.GoodGroup;

public interface GoodDao {
	public List<Good> getAllGoods();
	
	public List<Good> getGoodsByGroupId(int id);
	
	public Good getGoodsById(int id);
	
	public GoodGroup getGoodsGroupByGroupId(int id);
}
