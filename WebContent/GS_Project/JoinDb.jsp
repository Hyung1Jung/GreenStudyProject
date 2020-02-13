<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>


<% 
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("idinput");
String pw = request.getParameter("bimil");
String name = request.getParameter("name");
String address0 = request.getParameter("adr");
String address1 = request.getParameter("adr1");
String address2 = request.getParameter("adr2");
String address = address0 + address1 +address2;
String gender = request.getParameter("gender");
	if (gender.equalsIgnoreCase("man")){
		gender = "남자";
	} else {
		gender = "여자";
	}
String emailid = request.getParameter("email");
String defaultemail = request.getParameter("defaultmail");
String email = emailid + "@" + defaultemail;
String birthdayyy = request.getParameter("birthy");
String birthdaymm = request.getParameter("birthm");
String birthdaydd = request.getParameter("birthd");
String birthday = birthdayyy + birthdaymm + birthdaydd;
String mobile1 = request.getParameter("phone1");
String mobile2 = request.getParameter("phone2");
String mobile3 = request.getParameter("phone3");
String mobile = mobile1 + mobile2 + mobile3;
String [] language = request.getParameterValues("uselang");
String lang = "";
if( language != null) {
	for (int i=0; i<language.length; i++){
			lang += language[i];
		}
}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script>
function alert() {
	alert("중복된아이디입니다. 다시 입력해주세요.")
}
</script>
</head>
<body>
	<jsp:useBean id="dao" class="Dao.Db_Dao">
		<%
			int n = dao.Jungbok(id);
						
			if(n == 0){
				dao.Insert(id, pw, name, address, gender,email, birthday, mobile, lang);
				response.sendRedirect("Login.jsp");
			}
			
		%>
</jsp:useBean>

	
</body>
</html>