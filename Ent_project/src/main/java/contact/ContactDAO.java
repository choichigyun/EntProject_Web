package contact;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContactDAO implements ContactService {
	@Autowired private SqlSession sql;
	
	@Override
	public ContactPage contact_list(ContactPage page) {
		page.setTotalList(
				(Integer) sql.selectOne("contact.mapper.totallist", page) );
		List<ContactVO> list = sql.selectList("contact.mapper.list", page);
		page.setList(list);
		return page;
	}

	@Override
	public void contact_insert(ContactVO vo) {
		System.out.println("vo.id : " +vo.getWeb_pw());
		System.out.println("vo.type : " +vo.getType());
		sql.insert("contact.mapper.insert", vo);
	}

	@Override
	public ContactVO contact_detail(int id) {
		return sql.selectOne("contact.mapper.selectOne", id);
	}
	
	@Override
	public void contact_delete(int id) {
		sql.delete("contact.mapper.delete", id);
	}
	
	@Override
	public void contact_update(ContactVO vo) {
		sql.update("contact.mapper.update", vo);
	}
	
	@Override
	public void contact_reply_insert(ContactVO vo) {
		sql.update("contact.mapper.replyInsert", vo);
	}
	
	@Override
	public void contact_reply_delete(int id) {
		sql.update("contact.mapper.replyDelete", id);
	}
	
	@Override
	public void contact_reply_update(int id) {
		// TODO Auto-generated method stub
		
	}
}
