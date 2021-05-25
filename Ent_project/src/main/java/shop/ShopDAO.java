package shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShopDAO implements ShopService {
	@Autowired private SqlSession sql;
	
	@Override
	public List<ShopVO> shop_list() {
		return sql.selectList("shop.mapper.list");
	}
}
