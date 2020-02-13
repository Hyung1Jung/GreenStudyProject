<%@page import="Dao.RegistrtionDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ page import = "com.green.study.dto.RegistrtionDto"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "Dao.RegistrtionDao"%>
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

	
		<jsp:include page ="Header.jsp"></jsp:include>
	<br>
	<Nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><p style="text-decoration: underline">
						<a class="underMenuFont">스터디홈</a>
					</p></li>
				<li><a class="underMenuFont"
					onclick="location.href='StudyStatus.jsp'">스터디현황 </a></li>
				<li><a class="underMenuFont"
					onclick="location.href='Login.jsp'">스터디만들기</a></li>
			</ul>
		</div>
	</Nav>



	<StudyHomeSection>
		<div
			style="text-align: center; display: inline-block; text-aglin: center; margin-top: -30px;">
			<div class="StudyHomeSectionInfo" style = "margin-top : -250px;">
				<div class="StudyHomeSectionFont">인기 스터디</div>
				<br /> <br /> <br /> <a class="StudyHomeSectionImg"><img src="images\책1.JPG"></a>
				<a class="StudyHomeSectionImg"><img src="images\책2.JPG"></a> <a
					class="StudyHomeSectionImg"><img src="images\책3.JPG"></a> <a
					class="StudyHomeSectionImg"><img src="images\책4.JPG"></a> <a
					class="StudyHomeSectionImg"><img src="images\책5.JPG"></a>
			</div>
	
			<br /> <br /> <br /><br /> <br />
			<div class="StudyHomeSectionInfo">
				<div class="StudyHomeSectionFont">추천 무료강의</div>
				<br /> <br /> <br /> <a
					href="https://www.youtube.com/watch?v=qR90tdW0Hbo&list=PLuHgQVnccGMCeAy-2-llhw3nWoQKUvQck"
					class="StudyHomeSectionImg"><img src="images\자바.jpg"></a> <a
					href="https://www.youtube.com/watch?v=PZIPsKgWJiw&list=PLuHgQVnccGMA4uSig3hCjl7wTDeyIeZVU"
					class="StudyHomeSectionImg"><img src="images\자바스크립트.JPG"></a> <a
					href="https://www.youtube.com/watch?v=OGFgdro160I&list=PLuHgQVnccGMDUzDDCKW-pCZQY-MMCX5yB"
					class="StudyHomeSectionImg"><img src="images\HTML.JPG"></a> <a
					href="https://www.youtube.com/channel/UCUpJs89fSBXNolQGOYKn0YQ"
					class="StudyHomeSectionImg"><img src="images\노마드코더.JPG"></a> <a
					href="https://www.youtube.com/watch?v=tC8Xj_Bf8Fw&t=3s"
					class="StudyHomeSectionImg"><img src="images\깃허브.JPG"></a>
			
			</div>
			<br /> <br /> <br /><br /> <br /><br /> <br />
			<div class="StudyHomeSectionInfo">
				<div class="StudyHomeSectionFont">추천 IT관련 도서</div>
				<br /> <br /> <br /> <a class="StudyHomeSectionImg"><img src="images\책1.JPG"></a>
				<a class="StudyHomeSectionImg"><img src="images\책2.JPG"></a> <a
					class="StudyHomeSectionImg"><img src="images\책3.JPG"></a> <a
					class="StudyHomeSectionImg"><img src="images\책4.JPG"></a> <a
					class="StudyHomeSectionImg"><img src="images\책5.JPG"></a>
			</div>
		</div>
	</StudyHomeSection>



	<footer>
	</footer>
</body>
</html>