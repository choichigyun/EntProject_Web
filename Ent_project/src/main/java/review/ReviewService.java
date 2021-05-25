package review;

import java.util.List;

public interface ReviewService {
	int review_insert(ReviewVO vo);	//신규리뷰 저장
	ReviewPage review_list(ReviewPage page); //리뷰 목록조회
	ReviewVO review_detail(int id); //리뷰 상세조회
	int review_read(int id); //리뷰 글 조회수 증가
	int review_update(ReviewVO vo); //리뷰 수정
	int review_delete(int id); //리뷰 삭제
	void review_reply_insert(ReviewVO vo); //리뷰 답글 등록
	void review_reply_update(int id); //리뷰 답글 수정
	void review_reply_delete(int id); //리뷰 답글 삭제
}
