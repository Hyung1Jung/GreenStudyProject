<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Nav.css">
<link rel="stylesheet" type="text/css" href="Css/Article.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">


<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>


<title>Insert title here</title>
</head>

<body>
		<jsp:include page ="Header.jsp"></jsp:include>
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='QuizHome.jsp'"><p
							style="text-decoration: underline">문제홈</p></a></li>

				<li><a class="underMenuFont" onclick="location.href='Quiz.jsp'">단게별문제
						<a class="underMenuFont"></a></li>

				<li><a class="underMenuFont"
					onclick="location.href='Registrtion.jsp'">랭킹</a></li>
			</ul>
		</div>
	</nav>

	<section>
	</section>
</body>
</html>