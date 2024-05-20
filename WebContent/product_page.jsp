<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style2.css" rel="stylesheet" type="text/css">
<style type="text/css">
	
	main>section{
		background-color: #ddddff;
	}
	main>section>header{
		width: 100%; height: 120px;
		background-color: #ddffff;
	}
	main>section>aside{
		width: 360px; height: 360px;
		margin-left:40px;
		margin-top:60px;
		background-color: #ffffdd;
		float: left;
	}
	main>section>section{
		width: 800px;
		background-color: #ddffdd;
		float: left;
	}
	main>section>section>article{
		width:100%;
		background-color: #ffddff;
	}
	main>section>section>article:nth-child(1){
		height: 100px;
	}
	main>section>section>article:nth-child(2){
		height: 140px;
		margin-top: 40px;
	}
	main>section>section>article:nth-child(3){
		height: 280px;
		margin-top: 40px;
	}
</style>
</head>
<body>
	<header>header</header>
	<main>
		<section>
			<header>section-header</header>
			<aside>section-aside</aside>
			<section>
				<article>section-section-article</article>
				<article>section-section-article</article>
				<article>section-section-article</article>
			</section>
			<div style="clear: both;"></div>
		</section>
	</main>
	<footer>footer</footer>
</body>
</html>