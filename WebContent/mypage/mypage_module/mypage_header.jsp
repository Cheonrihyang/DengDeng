<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage header Module</title>
<style>
  .mypage-header {
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 20px;
    background-color: #f5f5f5;
  }

  .mypage-header h1 {
    margin: 0;
  }

  .mypage-header-article {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
  }

  .mypage-header-article img {
    width: 40px;
    height: 40px;
    margin-bottom: 5px;
  }

  .mypage-header-article div {
    margin: 2px 0;
  }
</style>
</head>
<body>
	<header class="mypage-header">
        <h1>홍길동</h1>
        <article class="mypage-header-article">
            <a href="mypage_main.jsp">
                <img src="mypage_img/icon_truck.png" alt="주문배송 아이콘">
            </a>
            <div>주문배송</div>
            <div>10</div>
        </article>
        <article class="mypage-header-article">
            <a href="mypage_review.jsp">
                <img src="mypage_img/icon_review.png" alt="리뷰 아이콘">
            </a>
            <div>리뷰</div>
            <div>5</div>
        </article>
        <article class="mypage-header-article">
            <a href="mypage_reserve.jsp">
                <img src="mypage_img/icon_point.png" alt="적립금 아이콘">
            </a>
            <div>적립금</div>
            <div>2000</div>
        </article>
        <article class="mypage-header-article">
            <a href="mypage_coupon.jsp">
                <img src="mypage_img/icon_ticket.png" alt="쿠폰 아이콘">
            </a>
            <div>쿠폰</div>
            <div>3</div>
        </article>
    </header>
</body>
</html>