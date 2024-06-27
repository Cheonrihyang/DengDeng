package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import DTO.community.CommunityFAQDTO;
import DTO.community.CommunityNoticeDTO;
import DTO.community.CommunityQNADTO;

public class CommunityDAO extends DAO{
	
	//notice 등록
	public void noticeWrite(CommunityNoticeDTO cndto) {
		openConnection();
		try {
			query = "insert into notice(notice_title,notice_content) "+
					"values('"+cndto.getCommunityTitle()+"','"+cndto.getCommunityContent()+"');";
			stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(query);
		}catch (Exception e) {
			System.out.println("notice 등록 오류발생");
		}finally {
			closeConnection();
		}
	}
	
	//notice 검색
	public ArrayList<CommunityNoticeDTO> getCommunityList(String board,String select,String search) {
		ArrayList<CommunityNoticeDTO> res = new ArrayList<CommunityNoticeDTO>();
		openConnection();
		try {
			query = "select * from "+board+" where "+select+" like '%"+search+"%';";
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()) {
				CommunityNoticeDTO ndto = new CommunityNoticeDTO();
				ndto.setCommunityNo(rs.getInt(board+"_no"));
				ndto.setCommunityTitle(rs.getString(board+"_title"));
				ndto.setCommunityContent(rs.getString(board+"_content"));
				ndto.setCommunityViews(rs.getInt(board+"_views"));
				ndto.setCommunityDate(rs.getTimestamp(board+"_date"));
				res.add(ndto);
			}
		}catch (Exception e) {
			System.out.println("notice 검색 오류발생");
		}finally {
			closeConnection();
		}
		return res;
	}
	//FAQ검색
		public ArrayList<CommunityFAQDTO> getFAQList(String select,String search) {
			ArrayList<CommunityFAQDTO> res = new ArrayList<CommunityFAQDTO>();
			openConnection();
			try {
				query = "select * from faq where "+select+" like '%"+search+"%';";
				stmt = (Statement) conn.createStatement();
				ResultSet rs = stmt.executeQuery(query);
				while(rs.next()) {
					CommunityFAQDTO ndto = new CommunityFAQDTO();
					ndto.setFaqNo((rs.getInt("faq_no")));
					ndto.setFaqTitle(rs.getString("faq_title"));
					ndto.setFaqContent(rs.getString("faq_content"));
					ndto.setFaqIQCNo(rs.getInt("iqc_No"));
					res.add(ndto);
				}
			}catch (Exception e) {
				System.out.println("FAQ검색 오류발생");
			}finally {
				closeConnection();
			}
			return res;
		}
	
	//notice 특정글 검색
	public CommunityNoticeDTO getNoticePost(String no) {
		CommunityNoticeDTO res = new CommunityNoticeDTO();
		openConnection();
		try {
			query = "select * from notice where notice_no="+no+";";
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				res.setCommunityNo(rs.getInt("notice_no"));
				res.setCommunityTitle(rs.getString("notice_title"));
				res.setCommunityContent(rs.getString("notice_content"));
			}
		}catch (Exception e) {
			System.out.println("notice 특정글 검색 오류발생");
		}finally {
			closeConnection();
		}
		return res;
	}
	
	//조회수 상승
	public void communityIncreaseViews(String no) {
		openConnection();
		try {
			query = "update notice set notice_views=notice_views+1 where notice_no="+no+";";
			stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(query);
			
		}catch (Exception e) {
			System.out.println("조회수 상승 오류발생");
		}finally {
			closeConnection();
		}
	}
	
	//FAQ 등록
	public void faqWrite(CommunityFAQDTO cfdto) {
		openConnection();
		try {
			query = "insert into faq(faq_title,faq_content,iqc_no) "+
					"values('"+cfdto.getFaqTitle()+"','"+cfdto.getFaqContent()+"',"+cfdto.getFaqIQCNo()+");";
			System.out.println(query);
			stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(query);
		}catch (Exception e) {
			System.out.println("faq 등록 오류발생");
		}finally {
			closeConnection();
		}
	}

	
	
	//FAQ 특정글 검색
	public CommunityFAQDTO getFAQPost(String no) {
		CommunityFAQDTO res = new CommunityFAQDTO();
		openConnection();
		try {
			query = "select * from faq where faq_no="+no+";";
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
				
			while(rs.next()) {
				res.setFaqNo(rs.getInt("faq_no"));
				res.setFaqTitle(rs.getString("faq_title"));
				res.setFaqContent(rs.getString("faq_content"));
			}
		}catch (Exception e) {
			System.out.println("FAQ 특정글 검색 오류발생");
		}finally {
			closeConnection();
		}
		return res;
	}
	
	//QNA 검색
	public ArrayList<CommunityQNADTO> getQNAList(String select,String search) {
		ArrayList<CommunityQNADTO> res = new ArrayList<CommunityQNADTO>();
		openConnection();
		try {
			query = "select qna.qna_no,qna.qna_title,qna.qna_date,qna.qna_answer,customer.customer_id,qna.iqc_no "+
					"from qna inner join customer on qna.customer_no=customer.customer_no "+
					"where "+select+" like '%"+search+"%';";
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()) {
				CommunityQNADTO cqdto = new CommunityQNADTO();
				cqdto.setQna_no(rs.getInt("qna_no"));
				cqdto.setQna_title(rs.getString("qna_title"));
				cqdto.setQna_date(rs.getTimestamp("qna_date"));
				cqdto.setQna_answer(rs.getString("qna_answer"));
				cqdto.setCustomer_id(rs.getString("customer_id"));
				cqdto.setIqc_no(rs.getInt("iqc_no"));
				res.add(cqdto);
			}
		}catch (Exception e) {
			System.out.println("QNA 검색 오류발생");
		}finally {
			closeConnection();
		}
		return res;
	}
	
	//QNA 특정글 검색
	public CommunityQNADTO getQNAPost(String no) {
		CommunityQNADTO res = new CommunityQNADTO();
		openConnection();
		try {
			query = "select qna.qna_no,qna.qna_title,qna.qna_content,qna.qna_date,qna.qna_answer,customer.customer_id "+
					"from qna inner join customer on qna.customer_no=customer.customer_no "+
					"where qna_no="+no+";";
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
					
			while(rs.next()) {
				res.setQna_no(rs.getInt("qna_no"));
				res.setQna_title(rs.getString("qna_title"));
				res.setQna_content(rs.getString("qna_content"));
				res.setQna_date(rs.getTimestamp("qna_date"));
				res.setCustomer_id(rs.getString("customer_id"));
				res.setQna_answer(rs.getString("qna_answer"));
			}
		}catch (Exception e) {
			System.out.println("QNA 특정글 검색 오류발생");
		}finally {
			closeConnection();
		}
		return res;
	}
	
	//QNA 답변 등록
	public void qnaAnswerWrite(int no,String answer) {
		openConnection();
		try {
			query = "update qna set qna_answer='"+answer+"' where qna_no="+no+";";
			System.out.println(query);
			stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(query);
		}catch (Exception e) {
			System.out.println("QNA 답변 등록 오류발생");
		}finally {
			closeConnection();
		}
	}
	
	//고객id>no변환
	public int getCustomerNo(String customerId) {
		int customerNo=0;
		openConnection();
		try {
			query = "select customer_no from customer where customer_id='"+customerId+"';";
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				customerNo=rs.getInt("customer_no");
			}
		}catch (Exception e) {
			System.out.println("고객id>no변환 오류발생");
		}finally {
			closeConnection();
		}
		return customerNo;
	}
	
	//QNA글 등록
	public void QNAWrite(CommunityQNADTO cqdto) {
		openConnection();
		try {
			query = "insert into qna(qna_title,qna_content,qna_fileurl,qna_imgurl,qna_date,customer_no,iqc_no) "+
					"values('"+cqdto.getQna_title()+"','"+cqdto.getQna_content()+
					"','','',now(),"+cqdto.getCustomer_no()+","+cqdto.getIqc_no()+");";
			stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(query);
		}catch (Exception e) {
			System.out.println("QNA글 등록 오류발생");
			e.printStackTrace();
		}finally {
			closeConnection();
		}
	}
	
	//글 삭제
	public void communityDelete(String board,int QNANo) {
		openConnection();
		try {
			query = "delete from "+board+" where "+board+"_no="+QNANo+";";
			System.out.println(query);
			stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(query);
		}catch (Exception e) {
			System.out.println("글 삭제 오류발생");
			e.printStackTrace();
		}finally {
			closeConnection();
		}
	}
	
	
}
