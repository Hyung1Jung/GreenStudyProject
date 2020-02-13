<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String id = (String) session.getAttribute("idinputLog");
%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Header.css">



<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>


<title>Insert title here</title>
</head>

<body>
	<header>
		<div class="Title">
			<a onclick="location.href='Main2.jsp'"><font size="6px;"
				weight="bold" text-aling="center" color=#2196f3>그린스터디</font></a>
		</div>

		<ul class="topMenu">
			<li><a class="topMenuFont"
				onclick="location.href='StudyHome2.jsp'">&nbsp;&nbsp;&nbsp;스터디</a></li>
			<li><a class="topMenuFont" onclick = "location.href='sang.do?command=studyArchive'">아카이브 </a></li>
			<li><a class="topMenuFont"
				onclick="location.href='QuizHome22.jsp'">문제 </a></li>
			<li><a class="topMenuFont"
				onclick="location.href='BoardHome2.jsp'">게시판 </a></li>
		</ul>

		<ul class="Login">
			<li><a class="LoginFont" onclick="location.href='Login.jsp'">로그아웃</a></li>
			<li><a class="LoginFont" onclick="location.href='MyPage.jsp'">myPage&nbsp;&nbsp;&nbsp;</a></li>
			<li><a class="LoginFont"><%=id%>님 환영합니다&nbsp;&nbsp;&nbsp;</a></li>


		</ul>
	</header>
</body>
</html>