<%@page import="DTO.mypage.ProductInquiryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style2.css" rel="stylesheet" type="text/css">
<link href="../css/mypage.css?after" rel="stylesheet" type="text/css">
<style type="text/css">
	table{
		border: 1px solid black;
		border-collapse: collapse;
	}
	tr,td{
		border: 1px solid black;
	}
	
	#inquirybt {
		width: 50px;
		height: 30px;
		margin-right : 15px;
		background: yellow;
		border: none;
		margin-top: 10px;
	
	}
	
	
	
</style>
</head>
<body>
	<main>
		<%@ include file="./mypage_module/mypage_header.jsp" %>
		<section>
			<%@ include file="./mypage_module/mypage_menu_list.jsp" %>
			<section>
				<header><h3>1:1 문의</h3></header>
				<nav>
					<button id="inquirybt">최근</button>
					<button id="inquirybt">1개월</button>
					<button id="inquirybt">3개월</button>
					<button id="inquirybt">6개월</button>
					<button id="inquirybt">1년</button>
					<input type="date" value="2024-06-01">
					~
					<input type="date" value="2024-07-30">
					<input id="inquirybt" type="button" value="조회">
				</nav>
				<article>
					<table>
						<tr>
							<td width="200px;">주문 번호</td>
							<td width="400px;">문의 제목</td>
							<td width="200px;">작성일</td>
							<td width="200px;">처리 상태</td>
						</tr>
						<%
							ArrayList<ProductInquiryDTO> pidtoArr = 
							(ArrayList<ProductInquiryDTO>)request.getAttribute("pidtoArr");
							for(int i=0;i<pidtoArr.size();i++){
						%>
						<tr>
							<td><%=pidtoArr.get(i).getOrder_no() %></td>
							<td><%=pidtoArr.get(i).getPi_title() %></td>
							<td><%=pidtoArr.get(i).getPi_date() %></td>
							<td>
								<%
									if(pidtoArr.get(i).getPi_answer()=="" || pidtoArr.get(i).getPi_answer()==null){
								%>
								<a>
								미답변
								</a>
								<% }else{ %>
								답변완료
								<% } %>
							</td>
						</tr>
						<%} %>
					</table>
				</article>
			</section>
			<div style="clear: both;"></div>
		</section>
	</main>
</body>
</html>