package about;

import java.util.List;

public interface AboutService {
	int about_insert(AboutVO vo); //공지 저장
	AboutPage about_list(AboutPage page); //공지글목록 조회
	AboutVO about_detail(int id); //공지 상세 조회
	int about_read(int id); //공지 조회수 증가
	int about_update(AboutVO vo); //공지 변경
	int about_delete(int id); //공지 삭제
}
