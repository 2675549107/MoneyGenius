package online.qsx.dao;

import java.util.List;

import online.qsx.model.Good;

public interface GoodDao {
	public List<Good> getAllGoods();
	
	public List<Good> getGoodsById(int id);
}
