<%@page import="Dao.RegistrtionDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ page import = "com.green.study.dto.RegistrtionDto"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "Dao.RegistrtionDao"%>
<%
String id = (String)session.getAttribute("idinputLog");
%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Nav.css">
<link rel="stylesheet" type="text/css" href="Css/Article.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">

<script src="//code.jquery.com/jquery.min.js"></script>




<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>



<title>스터디홈</title>
</head>

<body>
<!-- 정형일 -->

	
		<jsp:include page ="Header2.jsp"></jsp:include>
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='QuizHome22.jsp'"><p
							style="text-decoration: underline">문제홈</p></a></li>

				<li><a class="underMenuFont" onclick="location.href='Quiz2.jsp'">단게별문제
						<a class="underMenuFont"></a></li>

				<li><a class="underMenuFont"
					onclick="location.href='Registrtion2.jsp'">랭킹</a></li>
			</ul>
		</div>
	</nav>

	<section>
	</section>
</body>
</html>