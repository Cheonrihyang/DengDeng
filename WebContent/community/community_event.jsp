<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script>
<script type="text/javascript"></script>
<link href="../css/style2.css" rel="stylesheet" type="text/css">
<link href="../css/community.css" rel="stylesheet" type="text/css">
<style type="text/css">
	section{
		padding-bottom: 40px;
	}
	section>article{
		height: 120px;
		margin-top:40px;
		position: relative;
	}
	section>article:nth-child(2){
		margin-top:80px;
	}
	section>article>div{
		width: 320px; height: 120px;
		background-color: #ddddff;
		position: absolute;
	}
	section>article>div:nth-child(1) {
		left: 80px;
	}
	section>article>div:nth-child(2) {
		left: 440px;
	}
	section>article>div:nth-child(3) {
		left: 800px;
	}
</style>
</head>
<body>
	<header>header</header>
	<main>
		<section>
			<header>section-header</header>
			<article>
				<div>section-article-div</div>
				<div>section-article-div</div>
				<div>section-article-div</div>
			</article>
			<article>
				<div>section-article-div</div>
				<div>section-article-div</div>
				<div>section-article-div</div>
			</article>
			<article>
				<div>section-article-div</div>
				<div>section-article-div</div>
				<div>section-article-div</div>
			</article>
			<article>
				<div>section-article-div</div>
				<div>section-article-div</div>
			</article>
		</section>
	</main>
	<footer>footer</footer>
</body>
</html>