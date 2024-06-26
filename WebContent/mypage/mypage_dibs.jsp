<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style2.css?after" rel="stylesheet" type="text/css">
<link href="../css/mypage.css" rel="stylesheet" type="text/css">
<style type="text/css">
section>article {
	height: auto;
}

.table-container{
	width: 100%;
}
tr{
	text-align: center;
	border-bottom: 1px solid #ccc;
}
button[type=submit]{
	border: none;
	margin : 10px;
	width: 115px;
	height: 30px;
}

</style>
</head>
<body>
	<main>
		<%@ include file="./mypage_module/mypage_header.jsp" %>
		<section>
			<%@ include file="./mypage_module/mypage_menu_list.jsp" %>
			<section>
				<header>찜한 상품 목록</header>
				<article>
					<table class="table-container">
						<tr>
							<th></th>
							<th>상품명</th>
							<th>상품가격</th>
							<th>옵션</th>
						</tr>
						<c:forEach var="dibsList" items="${dibsList }">
							<tr>
								<td><img src="${dibsList.product_imgurl }" width="100px;"></td>
								<td>${dibsList.product_name }</td>
								<td>${dibsList.product_price }원</td>
								<td>
									
									<div>
										<form action="deleteDibs.do" method="post" onsubmit="return confirm('찜하기 취소하시겠습니까?')">
											<input type="hidden" name="product_no" value="${dibsList.product_no }">
											<button type="submit">하트 취소</button>
										</form>
										<form action="insertCart.do" method="post" onsubmit="return confirm('장바구니에 추가하시겠습니까?')">
											<input type="hidden" name="product_no" value="${dibsList.product_no }">
											<button type="submit">장바구니 담기</button>
										</form>
									</div>
								</td>
							</tr>
						</c:forEach>
					</table>

				</article>
			</section>
			<div style="clear: both;"></div>
		</section>
	</main>
</body>
</html>