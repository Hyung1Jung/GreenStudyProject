<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.green.study.dto.Board_Dto" %>
<%@ page import="java.util.ArrayList" %>
<% String postid = request.getParameter("postid"); 
%>
<% out.println(postid);
%>
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
	<header>
		<jsp:include page ="Header2.jsp"></jsp:include>
	</header>

	<br>

	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='BoardHome.jsp'"><p
							style="text-decoration: underline">질문홈</p></a></li>

				<li><a class="underMenuFont"
					onclick="location.href='Board_write.jsp'">질문하기&nbsp;&nbsp;&nbsp; </a></li>
			</ul>
		</div>
	</nav>

	<section style="Height: 1000px;">	
		<center>
		<div
			style="text-align: center; display: inline-block; text-aglin: center; margin-top: -70px;">
					<jsp:useBean id="bd" class="Dao.Board_Dao"> </jsp:useBean>
					<% ArrayList<Board_Dto> clist = bd.BoardSelect(postid); %>
					
					<table class="type06">
						<tr>
						<td scope="row" id="iddd"><font color="red">*</font>Name</td>
						<td colspan="2" id="idd"> <% out.println(clist.get(0).getName()); %> </td>
						</tr>
						<tr>
							<td><font color="red" id="iddd">*</font>Question Title</td>
							<td colspan="2" id="idd"><% out.println(clist.get(0).getPosttitle()); %></td>
						</tr>
						<tr>
							<td scope="row" id="iddd"><font color="red">*</font>Question Category</td>
							<td colspan="2" id="idd"> <% out.println(clist.get(0).getPostcategory()); %>
						</td>
						</tr>
						<tr>
						<td scope="row" id="iddd"><font color="red">*</font>Question</td>
						<td colspan="2" id="idd"><% out.println(clist.get(0).getPostcontents()); %></td>
						</tr>
					</table>

				</div>
				
				<!--<div id="BoardBox" align="center">
					<table>
					<tr>
					<td><font color="red">*</font>Answer</td>
						</tr>
						<tr>
						<td colspan="3"><textarea rows="10" cols=70% name="qnabody"></textarea></td>
						</tr>
					</table>
				<input type="submit" value="Submit!" name="questionin" style=" width: 500px; height: 40px; background-color: #2196f3;">
				</div> -->
								
			</center>
		</form>
	</section>
	
	<footer>
	</footer>
	
</body>
</html>