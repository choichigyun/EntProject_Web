package contact;


public interface ContactService {
	ContactPage contact_list(ContactPage page); //1:1문의 글 조회
	void contact_insert(ContactVO vo); //1:1문의 글 등록
	ContactVO contact_detail(int id); //선택된 1:1문의글 조회
	void contact_delete(int id); //선택된 1:1문의글 삭제
	void contact_update(ContactVO vo); //선택된 1:1문의글 수정
	void contact_reply_insert(ContactVO vo); //선택된 1:1문의글 답글 등록
	void contact_reply_delete(int id);	//선택된 1:1문의글 답글 삭제
	void contact_reply_update(int id); // 선택된 1:1문의글 답글 수정
}
