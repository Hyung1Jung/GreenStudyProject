<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
String idinputLog = request.getParameter("idinputLog");
String bimilLog = request.getParameter("bimilLog");

session.setAttribute("idinputLog",idinputLog);
session.setAttribute("bimilLog",bimilLog);


String idinput = (String)session.getAttribute("idinput");
String bimil = (String)session.getAttribute("bimil");
String name = (String)session.getAttribute("name");


	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dao" class="Dao.Db_Dao">

<%
int n = 0;
if(dao.Jungbok(idinputLog) == 1 && dao.JungbokPw(idinputLog).equals(bimilLog)) {
	session.setAttribute("idinputLog",idinputLog);
	response.sendRedirect("Main2.jsp?idinput = idinputLog");
	
}
else{
	response.sendRedirect("Login2.jsp");
}
%>
</jsp:useBean>
</body>
</html>