<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage menuList module</title>
<style>
  .menu-list-container {
    font-family: Arial, sans-serif;
    padding: 20px;
  }

  .menu-list-aside {
    margin: 10px 0;
    padding: 15px;
    border: 1px solid #ccc;
    border-radius: 8px;
    background-color: #f9f9f9;
  }

  .menu-list-aside h2 {
    margin-top: 0;
  }

  .menu-list-aside ul {
    list-style-type: none;
    padding: 0;
  }

  .menu-list-aside li {
    margin: 3px 0;
    padding: 5px;
    padding-left: 10px;
    background-color: #fff;
    border-bottom: 1px solid #ddd;
    border-radius: 4px;
  }

  .menu-list-aside li a {
    text-decoration: none;
    color: inherit;
    display: block;
    
  }

  .menu-list-aside li:hover {
    background-color: #ffe0e6;
    cursor: pointer;
  }
</style>
</head>
<body>
	<aside class="menu-list-container">
		<div class="menu-list-aside">
			<h2>My 쇼핑</h2>
			<ul>
				<li><a href="./mypage_dibs.jsp">하트(찜)</a></li>
				<li><a href="./mypage_recently_viewed_items.jsp">최근 본 상품</a></li>
				<li><a href="./mypage_cart.jsp">장바구니</a></li>
				<li><a href="./mypage_cancel_refund.jsp">취소/반품/교환</a></li>
				<li><a href="./mypage_product_inquiry.jsp">1:1 문의</a></li>
			</ul>

			<h2>My 정보</h2>
			<ul>
				<li><a href="./mypage_edit_info.jsp">회원정보 수정</a></li>
				<li><a href="./mypage_delivery_address.jsp">배송지 관리</a></li>
			</ul>
		</div>
	</aside>
</body>
</html>