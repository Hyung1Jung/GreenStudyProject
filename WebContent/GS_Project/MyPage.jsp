<%@page import="Dao.RegistrtionDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ page import="com.green.study.dto.RegistrtionDto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dao.RegistrtionDao"%>
<%
	String id = (String) session.getAttribute("idinputLog");
%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Nav.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">
<link rel="stylesheet" type="text/css" href="Css/MyPageBox.css">

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
					onclick="location.href='MyPage.jsp'"><p
							style="text-decoration: underline">마이페이지</p></a></li>
			</ul>
		</div>
	</nav>


	<section style="Height: 1000px;">
		<div id=bodybox align=center>
			<div id=MyPageBox>
				<div style="float: left; margin-left: -280px";>
					<p style="font-size: 25px; font-family: 휴먼둥근헤드라인 ; margin-left : -180px "><%=id%>님의
						myPage
					</p>
					<br>
					<ul style="list-style: none; float: left; margin-left: -35px;">
						<li >- 스터디 신청 내역</li>
						<li>- 스터디 승인 내역</li>
					</ul>
					<br> <br> <br> <br> <br>
					<ul class="MyPageBoxMenu" style="margin-left: -35px; line-height: 35px">
						<li><a class="MyPageBoxMenuFont" onclick="location.href='.jsp'">개인정보수정</p></li>
						<li><a class="MyPageBoxMenuFont" onclick="location.href='.jsp'">문제&nbsp;&nbsp;&nbsp;</a></li>
					</ul>
				</div>
			</div>
		</div>
		</div>
				
		<article>
			<div class="menubarColor" style="line-height: 35px">
				<ul class="MyPageUnderMenu" style="margin-left: 420px;">
					<li><a class="MyPageUnderMenuFont"
						onclick="location.href='MyPageUnderMenu01.jsp'">참여중인 스터디 
							</p>
					</a></li>
					<li><a class="MyPageUnderMenuFont"
						onclick="location.href='sang.do?command=myStudySelect'">내가 만든 스터디  </a></li>
					<li><a class="MyPageUnderMenuFont"
						onclick="location.href='Registrtion.jsp'">
								<a class="MyPageUnderMenuFont">아직 </a> 
							</a></li>
				</ul>
			</div>
		</article>
	</section>



	<footer> </footer>
</body>
</html>