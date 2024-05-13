<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
	main>header>h1{
		position: absolute;
		left: 140px;
		top: 60px;
	}
	main>header>article{
		width: 80px; height: 120px;
		background-color: #ddffff;
		position: absolute;
	}
	main>header>article:nth-child(2){
		left: 720px; top:20px;
	}
	main>header>article:nth-child(3){
		left: 820px; top:20px;
	}
	main>header>article:nth-child(4){
		left: 920px; top:20px;
	}
	main>header>article:nth-child(5){
		left: 1020px; top:20px;
	}
	main>header{
		width: 100%; height: 160px;
		background-color: #ffffdd;
		position: relative;
	}
	main>section{
		width: 100%;
		margin-top:20px;
		background-color: #eeffdd;
	}
	section>aside{
		width: 200px; height: 400px;
		float: left;
		background-color: #ddddff;
	}
	section>section{
		width: 980px;
		margin-left: 20px;
		float: left;
		border-left: 1px solid gray;
	}
	section>nav{
		width: 940px; height: 100px;
		margin-top:20px; margin-left:40px;
		background-color: #dfdfdf;
	}
	section>article{
		width: 940px; height: 300px;
		margin-top:20px; margin-left:40px;
		background-color: #dfdfdf;
		border-top: 1px solid gray;
	}
</style>
</head>
<body>
	<header>header</header>
	
	<main>
		<header>
			<h1>홍길동</h1>
			<article>article</article>
			<article>article</article>
			<article>article</article>
			<article>article</article>
		</header>
		<section>
			<aside>aside</aside>
			<section>
				<nav>nav</nav>
				<article>article</article>
			</section>
			<div style="clear: both;"></div>
		</section>
	</main>
	<footer>footer</footer>
</body>
</html>