<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	select{
		width: 150px;
		height: 40px;
		margin-top: 50px;
		margin-left: 300px;
	
	}
	input{
		width: 300px;
		height: 40px;
	}
	#bt {
		width: 150px;
		height: 40px;
	}
	

</style>
</head>
<body>
	<header>
		<form action="/projectdengdeng/community/community_<%=communityBoard %>.jsp">
			<select name="select">
				<option  value="<%=communityBoard %>_title">제목</option>
				<option  value="<%=communityBoard %>_content">내용</option>
				<%
					if(communityBoard.equals("qna")||communityBoard.equals("faq")){
				%>
				<option  value="iqc_no">카테고리</option>
				<% } %>
			</select>
			<input type="text" name="search" value="">
			<button id=bt type="submit">검색</button>
		</form>
	</header>
</body>
</html>