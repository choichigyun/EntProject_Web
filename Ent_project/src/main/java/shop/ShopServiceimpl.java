package shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopServiceimpl implements ShopService {
	@Autowired private ShopDAO dao;
	
	@Override
	public List<ShopVO> shop_list() {
		return dao.shop_list();
	}
  }
 