<%@page import="Dao.RegistrtionDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ page import = "com.green.study.dto.RegistrtionDto"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "Dao.RegistrtionDao"%>
<%
String id = (String)session.getAttribute("idinputLog");
%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Nav.css">
<link rel="stylesheet" type="text/css" href="Css/Article.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">

<script src="//code.jquery.com/jquery.min.js"></script>




<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>



<title>스터디홈</title>
</head>

<body>
<!-- 정형일 -->

	
		<jsp:include page ="Header2.jsp"></jsp:include>
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='QuizHome22.jsp'"><p
							style="text-decoration: underline">문제홈</p></a></li>

				<li><a class="underMenuFont" onclick="location.href='Quiz2.jsp'">단게별문제
						<a class="underMenuFont"></a></li>

				<li><a class="underMenuFont"
					onclick="location.href='Registrtion2.jsp'">랭킹</a></li>
			</ul>
		</div>
	</nav>
	<section style="Height : 1000px;">
	<div
			style="text-align: center; display: inline-block; text-aglin: center; margin-top: -70px;">

			<table width="1200px" cellpadding="0" border="1" align="center"
				style="border-spacing: 0px;">
				<tr>
					<td>전체</td>
					<td>공자</td>
					<td>홍보</td>
					<td></td>
					<td>내가 푼 문제</td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>1</td>
					<td>입출력과 사칙연산</td>
					<td>입력, 출력과 사칙연산을 연습해 봅시다. Hello World!</td>
					<td>11</td>
					<td>0</td>
				</tr>
				<tr>
					<td>2</td>
					<td>If문</td>
					<td>if문을 사용해 봅시다.</td>
					<td>5</td>
					<td>0</td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>3</td>
					<td>for문</td>
					<td>for문을 사용해 봅시다.</td>
					<td>11</td>
					<td>0</td>
				</tr>
				<tr>
					<td>4</td>
					<td>while문</td>
					<td>while문을 사용해 봅시다.</td>
					<td>3</td>
					<td>0</td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>5</td>
					<td>1차원 배열</td>
					<td>배열을 사용해 봅시다.</td>
					<td>8</td>
					<td>0</td>
				</tr>
				<tr>
					<td>6</td>
					<td>함수</td>
					<td>함수를 정의하면 코드가 깔끔해지고 관리하기 쉬워집니다.</td>
					<td>3</td>
					<td>0</td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>7</td>
					<td>문자열</td>
					<td>문자열을 다루는 문제들을 해결해 봅시다.</td>
					<td>10</td>
					<td>0</td>
				</tr>
				<tr>
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr bgcolor="#f9f9f9">
					<td>ㅋ</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>


			</table>

		</div>
	</section>
	<footer>
	</footer>
</body>
</html>