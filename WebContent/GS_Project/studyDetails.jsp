<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ page import="com.green.study.dto.RegistrtionDto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dao.RegistrtionDao"%>
<%
	String id = (String) session.getAttribute("idinputLog");
	String s_num2 = request.getParameter("s_num");
	int s_num = Integer.parseInt(s_num2);
%>
<!DOCTYPE html>
<html>
<head>
<Style>
.StudyDetailsFont {
	text-align: right;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	font-family: 'Nanum Barun Gothic';
}

input[type="button"] {
	background-color: #ff502f;
	border: 0px;
	border-radius: 20px;
	height: 30px;
	font-family: Verdana;
	color: white;
	font-weight: bold;
}
</Style>
<script src="//code.jquery.com/jquery.min.js"></script>





<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script
	src="http://cdn.jsdelivr.net/font-nanum/1.0/nanumbarungothic/nanumbarungothic.css"></script>
<title>Insert title here</title>
</head>
<body style="width: 500px;">
	<section style="Height: 350px; width: 490px;">
		<jsp:useBean id="dao" class="Dao.RegistrtionDao"></jsp:useBean>
		<%
			ArrayList<RegistrtionDto> dtos = dao.studySelect2(s_num);
		%>
		<div class=StudyDetailsFont style="margin-top: 50px;">
			<font color=#2196f3>제목 :</font>
			<%
				out.println(dtos.get(0).getS_title() + "<br><br>");
			%>
			<font color=#2196f3>유형 :</font>
			<%
				out.println(dtos.get(0).getS_type() + "<br><br>");
			%>
			<font color=#2196f3>주 언어 :</font>
			<%
				out.println(dtos.get(0).getMain_language() + "<br><br>");
			%>
			<font color=#2196f3>보조 언어</font>
			<%
				out.println(dtos.get(0).getSecound_language() + "<br><br>");
			%>
			<font color=#2196f3>모집 인원 :</font>
			<%
				out.println(dtos.get(0).getPeople_num() + "<br><br>");
			%>
			<font color=#2196f3>시작 날짜 :</font>
			<%
				out.println(dtos.get(0).getS_firsty()+"년");
			%>
			<%
				out.println(dtos.get(0).getS_firstm()+"월");
			%>
			<%
				out.println(dtos.get(0).getS_firstd()+"일<br><br>");
			%>
			<font color=#2196f3>종료 날짜 :</font>
			<%
				out.println(dtos.get(0).getS_lasty()+"년");
			%>
			<%
				out.println(dtos.get(0).getS_lastm()+"월");
			%>
			<%
				out.println(dtos.get(0).getS_lastd()+"일<br><br>");
			%>
			<font color=#2196f3>개요 :</font>
			<%
				out.println("<br><br>");
			%>
			<%
				out.println(dtos.get(0).getS_summary() + "<br><br>");
			%>
			<font color=#2196f3>주요 내용 및 예상 결과물 :</font>
			<%
				out.println("<br><br>");
			%>
			<%
				out.println(dtos.get(0).getS_expect() + "<br><br>");
			%>
			<font color=#2196f3>기대 효과 및 활요 분야 :</font>
			<%
				out.println("<br><br>");
			%>
			<%
				out.println(dtos.get(0).getS_effect() + "<br><br>");
			%>
		</div>

		<form>
			<input type="button" name=ApplicationButton value="신청"
				style="width: 130px; height: 40px; background-color: #2196f3; margin-left: 180px">
		</form>
	</section>
</body>
</html>