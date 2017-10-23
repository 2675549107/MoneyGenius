package online.qsx.server;

import java.util.List;

import online.qsx.model.Good;

public interface GoodServer {
	public List<Good> getAllGoods();
	
	public List<Good> getGoodsById(int id);
}
