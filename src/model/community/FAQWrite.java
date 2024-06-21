package model.community;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.community.CommunityFAQDTO;

public class FAQWrite extends Community{
	
	CommunityFAQDTO cfdto = new CommunityFAQDTO();
	
	//faq에 입력할 정보객체를 불러오는 생성자
	public FAQWrite(CommunityFAQDTO cfdto) {
		this.cfdto = cfdto;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {
		//정보객체에 담긴 정보를 이용해 faq작성
		cdao.faqWrite(cfdto);
		return "/admin.jsp";
	}

}
