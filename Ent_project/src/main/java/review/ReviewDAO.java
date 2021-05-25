package review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO implements ReviewService {
	@Autowired private SqlSession sql;
	
	@Override
	public int review_insert(ReviewVO vo) {
		return sql.insert("review.mapper.insert", vo);
	}

	@Override
	public ReviewPage review_list(ReviewPage page) {
		page.setTotalList(
				(Integer)sql.selectOne("review.mapper.totalList", page));
		List<ReviewVO> list = sql.selectList("review.mapper.list", page);
		page.setList(list);
		return page;
	}

	@Override
	public ReviewVO review_detail(int id) {
		return sql.selectOne("review.mapper.detail", id);
	}

	@Override
	public int review_read(int id) {
		return sql.update("review.mapper.readcnt", id);
	}

	@Override
	public int review_update(ReviewVO vo) {
		return sql.update("review.mapper.update", vo);
	}

	@Override
	public int review_delete(int id) {
		return sql.delete("review.mapper.delete", id);
	}

	@Override
	public void review_reply_insert(ReviewVO vo) {
		sql.update("review.mapper.replyinsert", vo);
	}

	@Override
	public void review_reply_update(int id) {
		// TODO Auto-generated method stub
	}

	@Override
	public void review_reply_delete(int id) {
		sql.update("review.mapper.replyDelete", id);
	}
	
	
}
