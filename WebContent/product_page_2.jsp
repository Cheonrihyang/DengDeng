<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style2.css" rel="stylesheet" type="text/css">
<style type="text/css">
	main>nav{
		width: 100%; height: 70px;
		background-color: #ddddff;
	}
	main>section{
		width: 1120px;
		margin-left:40px;
		background-color: #ddffff;
	}
	main>section>article{
		width:100%;
		background-color: #ddffdd;
	}
	main>section>article:nth-child(1) {
		height: 200px;
	}
	main>section>nav{
		width:100%; height:50px;
		background-color: #ffdddd;
	}
	main>section>article:nth-child(3) {
		height: 820px;
		
	}
</style>
</head>
<body>
	<header>header</header>
	<main>
		<nav>nav</nav>
		<section>
			<article>section-article</article>
			<nav>section-nav</nav>
			<article>section-article</article>
		</section>
	</main>
	<footer>footer</footer>
</body>
</html>