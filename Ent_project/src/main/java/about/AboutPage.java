package about;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class AboutPage extends PageVO {
	private List<AboutVO> list;

	public List<AboutVO> getList() {
		return list;
	}

	public void setList(List<AboutVO> list) {
		this.list = list;
	}
	
}
