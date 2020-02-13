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


<script src="//code.jquery.com/jquery.min.js"></script>

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
<script
	src="http://cdn.jsdelivr.net/font-nanum/1.0/nanumbarungothic/nanumbarungothic.css"></script>


<title>StudyStatus</title>
</head>

<body>


	<%
		
	%>

	<jsp:include page="Header2.jsp"></jsp:include>
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='sang.do?command=studyArchive'"><p
							style="text-decoration: underline">
							<a class="underMenuFont">스터디 아카이브 </a>
						</p></li>
				<li><a class="underMenuFont"
					onclick="location.href='sang.do?command=projectArchive'">프로젝트 아카이브
				</a></li>
			</ul>
		</div>
	</nav>



	<section>

		<div id=bodybox align=center>
			<div id=StudyStatusBodybox>
				<table>

				</table>
			</div>
		</div>


		<article style="Height: 750px;">
			<br> <br> <br>
			<%
			ArrayList<RegistrtionDto> list = (ArrayList<RegistrtionDto>)request.getAttribute("data");
		for (int i=0; i < list.size(); i++){
			%></a>
			<div class=layout id=contents>
				<img src="images\java.JPG" width=289px height=130px>
				<div class=layout id=contentstable>
					<div class="language" align=left>
						<%=list.get(i).getMain_language()%>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="studyDetails.jsp?s_num=<%=list.get(i).getS_num()%>" onclick="window.open(this.href,'_blank','width=500,height=700,left=701,top=180,scrollbars=yes');return false;" ><font color = red>상세보기</font></a>
					</div>
					
					<div class="studytitle" align=left></div>
					<%=list.get(i).getS_title()%>
					<div class="studyday" align=left>&nbsp;&nbsp;&nbsp;<%=list.get(i).getS_firsty()%><%out.println("년");%><%=list.get(i).getS_firstm()%><%out.println("월");%><%=list.get(i).getS_firstd()%><%out.println("일");%>
						<%
							out.println("~");
						%>
						<%=list.get(i).getS_lasty()%><%out.println("년");%><%=list.get(i).getS_lastm()%><%out.println("월");%><%=list.get(i).getS_lastd()%><%out.println("일");%></div>
					<div class="membernow" align=right>
						<%
							out.println("현재  ");
						%>
						<%
							out.println("  / ");
						%>
						<%=list.get(i).getPeople_num()%>

					</div>
				</div>
			</div>
			<%
				}
			%>
			

		</article>
	</section>

	<footer> </footer>


</body>
</html>