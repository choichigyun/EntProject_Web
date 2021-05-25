package contact;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class ContactPage extends PageVO {
	private List<ContactVO> list;

	public List<ContactVO> getList() {
		return list;
	}

	public void setList(List<ContactVO> list) {
		this.list = list;
	}
	
}
