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
					onclick="location.href='.jsp'">개인정보 수정</a></li>

				<li><a class="underMenuFont" onclick="location.href='MyStudy.jsp'" ><p
							style="text-decoration: underline">내 스터디</p>
						<a class="underMenuFont"></a></li>

				<li><a class="underMenuFont"
					onclick="location.href='.jsp'">문제</a></li>
			</ul>
		</div>
	</nav>
	

	<section style="Height : 1000px;">
	
    </section>



	<footer>
	</footer>
</body>
</html>