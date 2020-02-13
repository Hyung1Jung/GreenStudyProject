<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.HashMap"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="js/Join_Js.js"></script>
</head>
<body>
	<jsp:useBean id="dao" class="Dao.Db_Dao">
	<p>
		<%
		dao.Db_Dao();
		dao.DbConnect();
		
		String id = request.getParameter("idinputLog");

		int n = dao.Jungbok(id);
		int n2 = id.length();
		
		
		if(n == 1) {
			out.println("이미 있는 ID입니다.");
		}

		
				

		%>
</p>
	</jsp:useBean>
</body>
</html>