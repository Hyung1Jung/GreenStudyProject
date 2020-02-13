<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	
</script>
<%
	String id = (String) session.getAttribute("idinputLog");
	request.setCharacterEncoding("euc-kr");
	String studyTitle = request.getParameter("studyTitle");
	String studyType = request.getParameter("studyType");
	String language1 = request.getParameter("language1");
	String language2 = request.getParameter("language2");
	String people_num2 = request.getParameter("people_num");
	int people_num = Integer.parseInt(people_num2);
	String summary = request.getParameter("summary");
	String expect = request.getParameter("expect");
	String effect = request.getParameter("effect");

	String start2 = request.getParameter("start");
	int start = Integer.parseInt(start2);
	String start_birthm2 = request.getParameter("start_birthm");
	int start_birthm = Integer.parseInt(start_birthm2);
	String start_birthd2 = request.getParameter("start_birthd");
	int start_birthd = Integer.parseInt(start_birthd2);
	String startDay =  String.format(start + "-" + start_birthm + "-" + start_birthd);
	
	String end2 = request.getParameter("end");
	int end = Integer.parseInt(end2);
	String end_birthm2 = request.getParameter("end_birthm");
	int end_birthm = Integer.parseInt(end_birthm2);
	String end_birthd2 = request.getParameter("end_birthd");
	int end_birthd = Integer.parseInt(end_birthd2);
	String lastDay = String.format(end + "-" + end_birthm + "-" + end_birthd);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="Dao.RegistrtionDao">
		<%
			dao.Insert(studyTitle, studyType, language1, language2, people_num, start, start_birthm, start_birthd,
						end, end_birthm, end_birthd, summary, expect, effect, id, startDay, lastDay);
				response.sendRedirect("StudyStatus2.jsp");
		%>
<!-- 스트링 포맷으로 날짜 'yyyy-mm-dd' 받기 -->
	</jsp:useBean>
</body>
</html>