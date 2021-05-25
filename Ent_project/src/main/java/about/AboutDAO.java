package about;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AboutDAO implements AboutService {
	@Autowired private SqlSession sql;

	@Override
	public int about_insert(AboutVO vo) {
		return sql.insert("about.mapper.insert", vo);
	}

	@Override
	public AboutPage about_list(AboutPage page) {
		page.setTotalList(
				(Integer)sql.selectOne("about.mapper.totalList", page));
		List<AboutVO> list = sql.selectList("about.mapper.list", page);
		page.setList(list);
		return page;
	}

	@Override
	public AboutVO about_detail(int id) {
		return sql.selectOne("about.mapper.detail", id);
	}

	@Override
	public int about_read(int id) {
		return sql.update("about.mapper.readcnt", id);
	}

	@Override
	public int about_update(AboutVO vo) {
		return sql.update("about.mapper.update", vo);
	}

	@Override
	public int about_delete(int id) {
		return sql.delete("about.mapper.delete", id);
	}

}
