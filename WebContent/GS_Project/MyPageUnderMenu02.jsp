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

<style>
#MyPageBox2 {
	dispaly: inline-block;
	width: 1067px;
	height: 35px;
	border-radius: 30px;
	line-height: 20px;
	margin-top: 20px;
	margin-left: 460px;
	background-color: #f5f5f5;
}

#MyPageBox2 li {
	font-weight: bold;
}

.MyPageUnderBoxFont {
	float: left;
	margin-left: 18px;
	margin-top: 5px;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	font-family: 'Nanum Barun Gothic';
}
</style>

<script type="text/javascript">
	function deleteCheck(s_num) {
		var result = confirm("정말 스터디를 삭제하시겠습니까?");
		if (result) {
			var url = "sang.do?command=delete&s_num=" + s_num
			location.href = url
		} else {
		}
	}
</script>

<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>
<script
	src="http://cdn.jsdelivr.net/font-nanum/1.0/nanumbarungothic/nanumbarungothic.css"></script>

<script type="text/javascript">
	function deleteCheck(s_num) {
		var result = confirm("정말 스터디를 삭제하시겠습니까?");
		if (result) {
			var url = "sang.do?command=delete&s_num=" + s_num
			location.href = url
		} else {
		}
	}
</script>
<title>스터디홈</title>
</head>

<body>
	<!-- 정형일 -->


	<jsp:include page="Header2.jsp"></jsp:include>
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
					<p
						style="font-size: 25px; font-family: 휴먼둥근헤드라인; margin-left: -180px"><%=id%>님의
						myPage
					</p>
					<br>
					<ul style="list-style: none; float: left; margin-left: -35px;">
						<li>- 스터디 신청 내역</li>
						<li>- 스터디 승인 내역</li>
					</ul>
					<br> <br> <br> <br> <br>
					<ul class="MyPageBoxMenu"
						style="margin-left: -35px; line-height: 35px">
						<li><a class="MyPageBoxMenuFont"
							onclick="location.href='.jsp'">개인정보수정
								</p></li>
						<li><a class="MyPageBoxMenuFont"
							onclick="location.href='.jsp'">문제&nbsp;&nbsp;&nbsp;</a></li>
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
						onclick="location.href='sang.do?command=myStudySelect'"><p
								style="text-decoration: underline">내가 만든 스터디</p></a></li>
					<li><a class="MyPageUnderMenuFont"
						onclick="location.href='Registrtion.jsp'"> <a
							class="MyPageUnderMenuFont">아직 </a>
					</a></li>
				</ul>
			</div>
		</article>
		<br> <br>
		<jsp:useBean id="dao" class="Dao.RegistrtionDao"></jsp:useBean>
		<%
			ArrayList<RegistrtionDto> dtos = dao.studySelect3(id);
			for (int i = 0; i < dtos.size(); i++) {
				String delink = "";
				if (id != null) {
					if (id.equals(dtos.get(i).getId())) {
						delink = "javascript:deleteCheck(" + dtos.get(i).getS_num() + ")";
					}
				}
		%>

		<div id=MyPageBox2>
			<div class=MyPageUnderBoxFont>
				<%
					out.print("제목 : ");
				%>
				<%=dtos.get(i).getS_title()%>
				&nbsp;&nbsp;
				<%
					out.print("유형 : ");
				%>
				<%=dtos.get(0).getS_type()%>

				<input type="button" name=update value="보기 및 수정" type=submit
					style="width: 100px; height: 27px; background-color: #2196f3; postion: relative; left: 1000px">
				<input type="button" name=delete value="삭제" type=submit
					onclick="location.href='<%=delink%>'"
					style="width: 70px; height: 27px; background-color: #2196f3; postion: relative; right: -10px">
			</div>
		</div>
		<%
			}
		%>
	</section>


	<footer> </footer>
</body>
</html>