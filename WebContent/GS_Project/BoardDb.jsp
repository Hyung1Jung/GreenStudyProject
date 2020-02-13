<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
request.setCharacterEncoding("utf-8");
String posttitle = request.getParameter("title");
String postcategory = request.getParameter("category");
String postcontents = request.getParameter("contents");
String id = (String)session.getAttribute("idinputLog");
out.println(posttitle);
out.println(postcategory);
out.println(postcontents);
out.println(id);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="Dao.Board_Dao">
		<%
				dao.Insert(posttitle, postcategory, postcontents, id);
				response.sendRedirect("BoardHome2.jsp");
					
		%>

	</jsp:useBean>
</body>
</html>