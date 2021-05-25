package about;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutServiceimpl implements AboutService{
	@Autowired private AboutDAO dao;

	@Override
	public int about_insert(AboutVO vo) {
		return dao.about_insert(vo);
	}

	@Override
	public AboutPage about_list(AboutPage page) {
		return dao.about_list(page);
	}

	@Override
	public AboutVO about_detail(int id) {
		return dao.about_detail(id);
	}

	@Override
	public int about_read(int id) {
		return dao.about_read(id);
	}

	@Override
	public int about_update(AboutVO vo) {
		return dao.about_update(vo);
	}

	@Override
	public int about_delete(int id) {
		return dao.about_delete(id);
	}

}
