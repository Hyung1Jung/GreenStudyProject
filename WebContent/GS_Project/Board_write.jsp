<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Sec.css">
<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Article.css">
<link rel="stylesheet" type="text/css" href="Css/Footer.css">
<link rel="stylesheet" type="text/css" href="Css/Nav.css">


<!--Using the hamburger menu display code-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>





<title>메인페이지</title>
</head>

<body>
		<jsp:include page ="Header.jsp"></jsp:include>
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='BoardHome.jsp'">질문홈</a></li>

				<li><a class="underMenuFont"
					onclick="location.href='Board_write.jsp'"><p
							style="text-decoration: underline">질문하기</p>&nbsp;&nbsp;&nbsp; </a></li>
			</ul>
		</div>
	</nav>
	
	<section style="Height: 1000px;">
			<form name="my_form" action="BoardDb.jsp" method=post>
			<center>
				<div id=BoardBox align="center">
					<table cellpadding=5 cellspacing=0 >
						<tr>
						<td><font color="red">*</font>Name</td>
						<td colspan="2"> <input type="text" name="name" placeholder="회원이름"
							size="20" maxlength="20"> </td>
						</tr>
						<tr>
							<td><font color="red">*</font>Question Title</td>
							<td></td>
						</tr>
						<tr>
							<td colspan="3"><input type="text" name="title"
							size="60" maxlength="20"></td>
						</tr>
						<tr>
							<td><font color="red">*</font>Question Category</td>
							<td colspan="2"><select name="category">
									<option SELECTED value="study">스터디</option>
									<option value="quiz">퀴즈</option>
							</select>
						</td>
						</tr>
						<tr>
						<td><font color="red">*</font>Question</td>
						</tr>
						<tr>
						<td colspan="3"><input type ="text" name="contents" size="60" maxlength="60"></td>
						
						</tr>
					</table>
				<input type="submit" value="Submit!" name="questionin" style=" width: 500px; height: 40px; background-color: #2196f3;">
				</div>
				
			</center>
		</form>
	</section>
	
	<footer>
	</footer>
	
</body>
</html>