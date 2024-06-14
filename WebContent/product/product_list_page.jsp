
<%@page import="DTO.ProductDTO"%>
<%@page import="DTO.CategoryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트 페이지</title>
<link href="../css/style2.css" rel="stylesheet" type="text/css">
<style type="text/css">
	body>main{
		display: flex;
		justify-content: center;
		width: 100%;
	}
	main>section{
		display: flex;
		width: 100%;
		max-width: 1200px;
		background-color: #ddddff;
	}
	main>section>aside{
		width:16.6666%;
		height: 600px;
		background-color: #ffffdd;
		position: sticky;
		top: 0;
		align-self: flex-start;
	}
	main>section>aside>header{
		width: 100%; height: 40px;
		background-color: #ffdddd;
	}
	main>section>section{
		width:66.66%; height: 900px;
		margin-top: 40px;
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 20px;
	}
	
	.product-card{
		background-color: white;
		border: 1px solid #ddd;
		padding: 10px;
		height: 200px;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}

	.product-card img {
		width: 100%;
		height: auto;
	}
	.product-card h5, .product-card p {
		margin: 10px 0;
	}
	.pagination {
		display: flex;
		justify-content: center;
		list-style: none;
		padding: 0;
	}
	.pagination li {
		margin: 0 5px;
	}
	.pagination a {
		text-decoration: none;
		padding: 8px 16px;
		color: black;
		border: 1px solid #ddd;
	}
	.pagination .active a {
		background-color: #007bff;
		color: white;
		border-color: #007bff;
	}
</style>
</head>
<body>
	<main>
		<section>
			<aside>
				<header>상품분류</header>
				<%
                    List<CategoryDTO> subCategoryList = (List<CategoryDTO>)request.getAttribute("subCategoryList");
                    if (subCategoryList != null && !subCategoryList.isEmpty()) {
                        for (CategoryDTO category : subCategoryList) {
                %>
                    <div>
                        <a href="list.do?pc_no=<%= category.getPc_no() %>"><%= category.getPc_name() %></a>
                    </div>
                <%
                        }
                    }else{
				%>
					<p>상품리스트 없음</p>
				<%
				}
                %>
			</aside>
			<section>
				<%
					List<ProductDTO> productList = (List<ProductDTO>)request.getAttribute("productList");
					int maxProductsPerPage = 15;
					int productCount = productList != null ? productList.size() : 0;
					int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
					int start = (currentPage - 1) * maxProductsPerPage;
					int end = Math.min(start + maxProductsPerPage, productCount);
				
					if(productList != null && !productList.isEmpty()){
						for (int i=start; i<end; i++){
							ProductDTO product = productList.get(i);
					%>
				<div class="product-card">
					<img src="<%= product.getProduct_imgurl() %>">
					<h5><%= product.getProduct_name() %></h5>
					<p><%= product.getProduct_price() %>원</p>
				</div>
					<%
							}
						}
					%>
				
			</section>
			<aside>section-aside(최근 본 상품)</aside>
		</section>
	</main>
	<nav>
					<ul class="pagination">
						<%
							int totalPages = (int)Math.ceil((double)productCount / maxProductsPerPage);
							for(int i=1; i<= totalPages; i++){	
						%>
						<li class="page-item <%=(i == currentPage) ? "active" : "" %>">
							<a class="page-link" href="?page=<%=i %>"><%=i %></a>
						</li>
						<%
							}
						%>
					</ul>
				</nav>
	<script type="text/javascript">
		$(document).ready(function () {
			let $window = $(window);
			let $asideLeft = $('main>section>aside').first();
			let $asideRight = $('main>section>aside').last();
			let offset = $asideLeft.offset();
			
			$window.scroll(function(){
				let scrollTop = $window.scrollTop();
				if(scrollTop > offset.top){
					$asideLeft.stop().animate({top: scrollTop - offset.top + 10}, 'slow');
					$asideRight.stop().animate({top: scrollTop - offset.top + 10}, 'slow');
				}else{
					$asideLeft.stop().animate({top: 0}, 'slow');
					$asideRight.stop().animate({top: 0}, 'slow');
				}
			});
		});
	</script>
</body>
</html>