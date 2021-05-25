package review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceimpl implements ReviewService {
	@Autowired private ReviewDAO dao;

	@Override
	public int review_insert(ReviewVO vo) {
		return dao.review_insert(vo);
	}
	
	@Override
	public ReviewPage review_list(ReviewPage page) {
		return dao.review_list(page);
	}
	
	@Override
	public int review_read(int id) {
		return dao.review_read(id);
	}

	@Override
	public ReviewVO review_detail(int id) {
		return dao.review_detail(id);
	}
	
	@Override
	public int review_update(ReviewVO vo) {
		return dao.review_update(vo);
	}

	@Override
	public int review_delete(int id) {
		return dao.review_delete(id);
	}

	@Override
	public void review_reply_insert(ReviewVO vo) {
		dao.review_reply_insert(vo);
	}

	@Override
	public void review_reply_update(int id) {
		// TODO Auto-generated method stub
	}

	@Override
	public void review_reply_delete(int id) {
		dao.review_reply_delete(id);
	}
}
