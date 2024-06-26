<%@page import="java.util.Random"%>
<%@page import="DTO.product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.Temp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/projectdengdeng/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script src="js/bootstrap.bundle.min.js"></script>
<link href="/projectdengdeng/css/style2.css?after" rel="stylesheet" type="text/css">
<style type="text/css">
	body{
		overflow-x: hidden;
	}
	main>section:first-child{
		margin-left: calc(-50vw + 50%);
		width: 100vw;
		height: 360px;
	}
	main>section:last-child{
		margin-top: 20px;
	}
	main>section>article{
		width: 100%; height: 250px;
		margin-top: 20px;
		padding : 0px;
		position: relative;
		text-align: center;
		
	}
	main>section>article:first-child{
		margin-top: 0px;
	}
	main>section>article>div{
		width:150px; height: 150px; 
		display:inline-block;
		position: relative;
		margin-right:100px;
		left: 0;
		
	}
	
</style>
</head>
<body>
	<%
		int count = 4;
		Temp temp = new Temp();
		ArrayList<ProductDTO> pcArr1 = new ArrayList();
		int a[] = new int[count];
		Random r = new Random();
		MemberDAO mdao = new MemberDAO();
		if(session.getAttribute("id")!=null){
			String id = (String)session.getAttribute("id");
			if(mdao.adminChk(id)==true){
	%>
	<a href='/projectdengdeng/admin.jsp'>관리자페이지</a>
	<%
			}
		}
	%>
	<main>
		<section>
			<div>
				<div id="carouselExampleCaptions" class="carousel slide">
			      <div class="carousel-indicators">
			        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
			        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
			        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
			      </div>
			      <div class="carousel-inner">
			        <div class="carousel-item active">
			          <img src="/projectdengdeng/imagefile/배너1.jpg" class="d-block w-100" height="330px" width="100%">
			          <div class="carousel-caption d-none d-md-block">
			          </div>
			        </div>
			        <div class="carousel-item">
			         <img src="/projectdengdeng/imagefile/배너2.jpg" class="d-block w-100" height="330px" width="100%" >
			          <div class="carousel-caption d-none d-md-block">
			          </div>
			        </div>
			        <div class="carousel-item">
			         <img src="/projectdengdeng/imagefile/배너3.jpg" class="d-block w-100" height="330px" width="100%" >
			          <div class="carousel-caption d-none d-md-block">
			          </div>
			        </div>
			      </div>
			      
			      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			        <span class="visually-hidden">Previous</span>
			      </button>
			      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			        <span class="carousel-control-next-icon" aria-hidden="true"></span>
			        <span class="visually-hidden">Next</span>
			      </button>
    			</div>
			</div>
		</section>
		<section>
			<article>
				<h4>사료추천</h4>
				<%
					pcArr1 = temp.getMypageMain(1);
					for(int i=0; i<count; i++){
						a[i] = r.nextInt(pcArr1.size());
						for(int j=0; j<i; j++){
							if(a[i] == a[j]){
								i--;
							}
						}
					}
					for(int i=0; i<count; i++){
				%>
				<div>
					<img src="<%=pcArr1.get(a[i]).getProduct_imgurl() %>" width="150px" height="150px" >
					<a href=""><%=pcArr1.get(a[i]).getProduct_name() %><br><%=pcArr1.get(a[i]).getProduct_price() %>원</a>
				</div>
				<%
					}
				
				%>
			</article>
			<article>
			<h4>간식추천</h4>
			
				<div><img src="/projectdengdeng/imagefile/image6.png" width="150px" height="150px"><a href="">간식<br>8000원</a></div>
				<div><img src="/projectdengdeng/imagefile/image7.png" width="150px" height="150px"><a href="">간식<br>8000원</a></div>
				<div><img src="/projectdengdeng/imagefile/image8.png" width="150px" height="150px"><a href="">간식<br>5900원</a></div>
				<div style="margin-right: 0"><img src="/projectdengdeng/imagefile/image10.png" width="150px" height="150px"><a href="">간식<br>7900원</a></div>
				
			</article>
			<article>
			<h4>장난감추천</h4>
				<div><img src="/projectdengdeng/imagefile/image12.npng" width="150px" height="150px"><a href="">장난감인형<br>8900원</a></div>
				<div><img src="/projectdengdeng/imagefile/image14.png" width="150px" height="150px"><a href="">장난감인형<br>8900원</a></div>
				<div><img src="/projectdengdeng/imagefile/image16.png" width="150px" height="150px"><a href="">나무장난감<br>20900원</a></div>
				<div style="margin-right: 0"><img src="/projectdengdeng/imagefile/image20.png" width="150px" height="150px"><a href="">브러쉬<br>9900원</a></div>
				
			</article>
		</section>
	</main>
</body>
</html>