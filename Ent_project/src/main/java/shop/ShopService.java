package shop;

import java.util.List;

public interface ShopService {
	List<ShopVO> shop_list();//앱에 연결된 db에서 사업자 가게 위치 가져오기
}
