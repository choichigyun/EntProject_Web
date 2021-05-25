package contact;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceimpl implements ContactService {
	@Autowired private ContactDAO dao;
	
	@Override
	public ContactPage contact_list(ContactPage page) {
		return dao.contact_list(page);
	}

	@Override
	public void contact_insert(ContactVO vo) {
		dao.contact_insert(vo);
	}

	@Override
	public ContactVO contact_detail(int id) {
		return dao.contact_detail(id);
	}
	
	@Override
	public void contact_delete(int id) {
		dao.contact_delete(id);
	}
	
	@Override
	public void contact_update(ContactVO vo) {
		dao.contact_update(vo);
	}
	
	@Override
	public void contact_reply_insert(ContactVO vo) {
		dao.contact_reply_insert(vo);
	}
	
	@Override
	public void contact_reply_delete(int id) {
		dao.contact_reply_delete(id);
	}
	
	@Override
	public void contact_reply_update(int id) {
		// TODO Auto-generated method stub
		
	}
}
