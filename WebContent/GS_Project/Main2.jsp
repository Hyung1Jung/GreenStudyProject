<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.green.study.dto.RegistrtionDto"%>
<%@ page import="Dao.RegistrtionDao"%>
<%
	String id = (String) session.getAttribute("idinputLog");

%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Article.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">


<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>




<title>메인페이지</title>
</head>

<body>

		<jsp:include page ="Header2.jsp"></jsp:include>

	<article>
		<div class="slider">
			<div class="bd">
				<ul>
					<li><a target="_blank" href="http://www.htmldrive.net"><img
							src="images\mainImg1.jpg" /></a></li>
					<li><a target="_blank" href="http://www.htmldrive.net"><img
							src="images\mainImg2.jpg" /></a></li>
					<li><a target="_blank" href="http://www.htmldrive.net"><img
							src="images\mainImg1.jpg" /></a></li>
				</ul>
			</div>
			<div class="hd">
				<ul>
				</ul>
			</div>

			<span class="blackBg"></span> <a class="arrow"
				href="javascript:void(0)"></a>
		</div>
		<div class="pnBtn next">
			<span class="blackBg"></span> <a class="arrow"
				href="javascript:void(0)"></a>
		</div>
		</div>

		<script type="text/javascript">
			jQuery(".slider .bd li").first().before(
					jQuery(".slider .bd li").last());
			jQuery(".slider").hover(function() {
				jQuery(this).find(".arrow").stop(true, true).fadeIn(300)
			}, function() {
				jQuery(this).find(".arrow").fadeOut(300)
			});
			jQuery(".slider").slide({
				titCell : ".hd ul",
				mainCell : ".bd ul",
				effect : "leftLoop",
				autoPlay : true,
				vis : 3,
				autoPage : true,
				trigger : "click"
			});
		</script>
	</article>

	<section>
		<jsp:useBean id="dao" class="Dao.RegistrtionDao"></jsp:useBean>

		<a class="sectionTitle">GreenStudy Judge</a><br> <a
			class="sectionTitle2">그린컴퓨터학원 스터디 or 문제풀이 하는 곳 입니다.</a>
		<div class="sectionBox">
			<div id="article1">
				<font size="5" color="white" font-weight=bold; align=center
					font-family=휴먼둥근헤드라인;>총 스터디</font> <br> <br> <font
					size="10" color="white" font-weight=bold; align=center
					font-family=휴먼둥근헤드라인;> <%=dao.studyNum()%></font>

			</div>
			<div id="article2">
				<font size="5" color="white" font-weight=bold;align = center
					family=휴먼둥근헤드라인;>개설된 스터디</font> <br> <br> <font size="10"
					color="white" font-weight=bold; align=center font-family=휴먼둥근헤드라인;>
					<%=dao.studyNum()%></font>

			</div>
			<div id="article3">
				<font size="5" color="white" font-weight=bold; align=center
					family=휴먼둥근헤드라인;>종료된 스터디</font> <br> <br> <font size="10"
					color="white" font-weight=bold; align=center font-family=휴먼둥근헤드라인;>
					<%=dao.studyNum()%></font>

			</div>
			<div id="article4">
				<font size="5" color="white" font-weight=bold; align=center
					family=휴먼둥근헤드라인;>총 문제 </font> <br> <br> <font size="10"
					color="white" font-weight=bold; align=center font-family=휴먼둥근헤드라인;>
					<% out.println("6");%>
				</font>

			</div>
		</div>

		<div class="sectionBox2">
			<div style="display: inline-block; margin: 50px;">
				<ul style="list-style: none; margin-top : 50px">
					<li><font size="5" color=#2196f3 font-weight=bold;
						text-align=center; font-family=휴먼둥근헤드라인;><p
								style="text-decoration: underline">새로운 스터디</p></font></li>
					<br>
					<%
				ArrayList<RegistrtionDto> dtos = dao.studySelect(id);
				for (int i = 0; i < dtos.size(); i++) {
				%>
					<li><%=dtos.get(i).getS_title()%></li>
								<%
				}
			%>
				</ul>
			</div>

			<div style="display: inline-block; margin: 50px;">
				<ul style="list-style: none">
					<li><font size="5" color=#2196f3 font-weight=bold;
						text-align=center; font-family=휴먼둥근헤드라인;><p
								style="text-decoration: underline">새로운 문제</p></font></li>
					<br>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
				</ul>
			</div>

			<div style="display: inline-block; margin: 50px;">
				<ul style="list-style: none">
					<li><font size="5" color=#2196f3 font-weight=bold;
						text-align=center; font-family=휴먼둥근헤드라인;><p
								style="text-decoration: underline">스터디 조회수</p></font></li>
					<br>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
				</ul>
			</div>

			<div style="display: inline-block; margin: 50px;">
				<ul style="list-style: none">
					<li><font size="5" color=#2196f3 font-weight=bold;
						text-align=center; font-family=휴먼둥근헤드라인;><p
								style="text-decoration: underline">새로운 글</p></font></li>
					<br>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
					<li><img src="images\trash01.jpg"></li>
				</ul>
			</div>
		</div>
	</section>

	<footer> </footer>
</body>
</html>