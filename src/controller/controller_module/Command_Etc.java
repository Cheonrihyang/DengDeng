package controller.controller_module;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.community.CommunityDTO;
import model.CommandProsessor;
import model.community.FAQWrite;
import model.community.NoticeWrite;
import model.member.QuitUser;

//어느 카테고리도 속하지 않은 페이지를 처리
public class Command_Etc extends Command_Parents{

	@Override
	public CommandProsessor command_Operate(HttpServletRequest req, HttpServletResponse resp, String servletPath) {
		//경로가 /noticeWrite.do라면
		if(servletPath.equals("/noticeWrite.do")) {
			//DTO생성 
			CommunityDTO cndto = new CommunityDTO();
			//noticeTitle parameter와 noticeContent parameter를 받아 cndto에 넣는다
			cndto.setCommunityTitle(req.getParameter("noticeTitle"));
			cndto.setCommunityContent(req.getParameter("noticeContent"));
			//notice작성 업캐스팅
			processor = new NoticeWrite(cndto);
		}
		
		//경로가 /faqWrite.do라면
		if(servletPath.equals("/faqWrite.do")) {
			//DTO생성 
			CommunityDTO cfdto = new CommunityDTO();
			//title parameter와 content parameter와 정수변환한 category cndto parameter를 받아 cfdto에 넣는다
			cfdto.setCommunityTitle(req.getParameter("title"));
			cfdto.setCommunityContent(req.getParameter("content"));
			cfdto.setIQCNo(Integer.parseInt(req.getParameter("category")));
			//faq작성 업캐스팅
			processor = new FAQWrite(cfdto);
		}
		
		//경로가 /kickUser.do라면
		if(servletPath.equals("/kickUser.do")) {
			//id parameter를 받고 유저 강제탈퇴를 알려주는 0을 넣어 강제탈퇴를 업캐스팅
			processor = new QuitUser(req.getParameter("id"),0);
		}
		
		return processor;
	}

}
