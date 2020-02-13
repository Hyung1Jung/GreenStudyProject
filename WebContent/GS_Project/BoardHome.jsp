<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.green.study.dto.Board_Dto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Nav.css">
<link rel="stylesheet" type="text/css" href="Css/Article.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">


<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>


<title>Insert title here</title>
</head>

<body>
		<jsp:include page ="Header.jsp"></jsp:include>
	
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='BoardHome.jsp'"><p
							style="text-decoration: underline">질문홈</p></a></li>

				<li><a class="underMenuFont"
					onclick="location.href='Login.jsp'">질문하기&nbsp;&nbsp;&nbsp; </a></li>
			</ul>
		</div>
	</nav>

	<section style="Height: 1000px;">	
		<center>
		<div
			style="text-align: center; display: inline-block; text-aglin: center; margin-top: -70px;">
		<jsp:useBean id="bd" class="Dao.Board_Dao"> </jsp:useBean>
		
		<%	ArrayList<Board_Dto> list = bd.Select(); %>
						
		<table class="type06">
		<tr>
			<th scope="row">No.</th>
			<th scope="row" id="idd">제목</th>
			<th scope="row">카테고리</th>
			<th scope="row">글쓴이</th>
			<th scope="row">작성일</th>
			<th scope="row">답변</th>
		</tr>
		
		<%	for(int i=0; i<list.size(); i++){
		if( i % 2 == 0 ){%>
				<tr>	
					<td class="even"><% out.println(list.get(i).getPostid()); %></td>
					<td class="even" id="idd"><a onclick="location.href=Board_read.jsp?postid='<%=list.get(i).getPostid()%>'"> <% out.println(list.get(i).getPosttitle()); %></a></td>
					<td class="even"><% out.println(list.get(i).getPostcategory()); %></td>
					<td class="even"><% out.println(list.get(i).getName()); %></td>
					<td class="even"><% out.println(list.get(i).getDate()); %></td>
					<td class="even"><% out.println(list.get(i).getAnswer()); %></td>
				</tr>
				<% }
				else{%>
				<tr>
					<td scope="row"><% out.println(list.get(i).getPostid()); %></td>
					<td scope="row" id="idd"><a onclick="location.href='Board_read.jsp?postid=10'"><% out.println(list.get(i).getPosttitle()); %></a></td>
					<td scope="row"><% out.println(list.get(i).getPostcategory()); %></td>
					<td scope="row"><% out.println(list.get(i).getName()); %></td>
					<td scope="row"><% out.println(list.get(i).getDate()); %></td>
					<td scope="row"><% out.println(list.get(i).getAnswer()); %></td>
				</tr>
				<%} %>

		<% }
			%>
	
			</table>
		</div>
		<div class="list_number">
			<div>
				<p>
				<div class="list_n_menu">
					<span class="disabled"> < 이전 </span><span class="current">1</span><a
						href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a
						href="#?page=5">5</a>...<a
						href="#?page=99">99</a><a href="#?page=100">100</a><a
						href="#?page=2">다음 ></a>
				</div>
				</p>

			</div>
		</div>

		</center>
	</section>

	<footer> </footer>
</body>
</html>