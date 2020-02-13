<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
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
<script type="text/javascript" src="js/Registrtion_Js.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="jquery.slides.min.js"></script>
<script type="text/javascript" src="js/superslide.2.1.js"></script>

<script type="text/javascript">
function title_check() {

	var title_len = Registrtion_form.studyTitle.value.length
	var title_val = Registrtion_form.studyTitle.value
	if (title_len == 0) {
		alert("스터디 제목을 입력해주세요.")
		Registrtion_form.studyTitle.value = ""
			Registrtion_form.studyTitle.focus()
	}else{
		Registrtion_form.submit();
	} 
}

</script>

<title>스터디만들기</title>
</head>

<body>
		<jsp:include page ="Header2.jsp"></jsp:include>
	<br>
	<nav>
		<div class="menubar" style="line-height: 35px">
			<ul class="underMenu">
				<li><a class="underMenuFont"
					onclick="location.href='StudyHome2.jsp'">스터디홈
						</p>
				</a></li>
				<li><a class="underMenuFont"
					onclick="location.href='sang.do?command=select'">스터디현황 </a></li>
				<li><a class="underMenuFont"
					onclick="location.href='Registrtion2.jsp'"><p
							style="text-decoration: underline">
							<a class="underMenuFont">스터디만들기 
						</p></a></li>
			</ul>
		</div>
	</nav>
	<section style="Height: 1580px;">
		<form name="Registrtion_form" action="sang.do?command=insert" method=post>
			<div id=bodybox align=center>
				<div id=registrtionBox1 align="center">
					<label class="lnb"> 스터디 만들기 </label>
					<table>
						<tr>
							<th><font color="red">*</font> 스터디 제목</th>
						</tr>
						<tr>
							<td><input type="text" name="studyTitle" size="100"
								maxlength="20"></td>
						</tr>
						<tr>
							<th><font color="red">*</font> 스터디 종류</th>
						</tr>
						<td><label class="container"> 실력 향상 스터디 <input
								type="radio" checked="checked" name="studyType" value="abilityStudy"><span
								class="checkmark"></span>
						</label> 
						<label class="container"> 프로젝트 스터디 <input type="radio"
								checked="checked" name="studyType" value="projectStudy">
								<span class="checkmark"></span></td>
						<tr>
							<th><font color="red">*</font> 스터디 언어</th>
						</tr>
						<tr>
							<td>&nbsp;&nbsp; 주요 언어 : <select name="language1">
									<option SELECTED value="Java">Java</option>
									<option value="C++14">C++14</option>
									<option value="python3">python3</option>
									<option value="C11">C11</option>
									<option value="pypy3">pypy3</option>
									<option value="C++14">C++14</option>
									<option value="C">C</option>
									<option value="C++">C++</option>
									<option value="C++11">C++11</option>
									<option value="C++17">C++17</option>
									<option value="Java(OpenJDK)">Java(OpenJDK)</option>
									<option value="python2">python2</option>
									<option value="pypy2">pypy2</option>
									<option value="Ruby2.5">Ruby2.5</option>
									<option value="Kotlin(JVM)">Kotlin(JVM)</option>
									<option value="Kotlin(Native)">Kotlin(Native)</option>
									<option value="Swift">Swift</option>
									<option value="node.js">node.js</option>
									<option value="Text">Text</option>
									<option value="C#6.0">C#6.0</option>
									<option value="Go">Go</option>
									<option value="D">D</option>
									<option value="PHP">PHP</option>
									<option value="Rust">Rust</option>
									<option value="Rust2018">Rust2018</option>
							</select>
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp; 보조 언어 : <select name="language2">
									<option SELECTED value="Java">Java</option>
									<option value="C++14">C++14</option>
									<option value="python3">python3</option>
									<option value="C11">C11</option>
									<option value="pypy3">pypy3</option>
									<option value="C++14">C++14</option>
									<option value="C">C</option>
									<option value="C++">C++</option>
									<option value="C++11">C++11</option>
									<option value="C++17">C++17</option>
									<option value="Java(OpenJDK)">Java(OpenJDK)</option>
									<option value="python2">python2</option>
									<option value="pypy2">pypy2</option>
									<option value="Ruby2.5">Ruby2.5</option>
									<option value="Kotlin(JVM)">Kotlin(JVM)</option>
									<option value="Kotlin(Native)">Kotlin(Native)</option>
									<option value="Swift">Swift</option>
									<option value="node.js">node.js</option>
									<option value="Text">Text</option>
									<option value="C#6.0">C#6.0</option>
									<option value="Go">Go</option>
									<option value="D">D</option>
									<option value="PHP">PHP</option>
									<option value="Rust">Rust</option>
									<option value="Rust2018">Rust2018</option>
							</select>
							</td>
						</tr>
						<tr>
							<th><font color="red">*</font> 스터디 인원 (주최자 포함 인원) <select
								name="people_num">
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30 이상</option>
							</select> 명</th>
						<tr>
							<th><font color="red">*</font> 스터디 기간</th>
						</tr>
						<tr>
							<td align="left">&nbsp;&nbsp; 시작 : <select name="start">
									<option value="2020">2020</option>
									<option value="2021">2021</option>
							</select> yy <select name="start_birthm">
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select> mm <select name="start_birthd">
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
							</select>
							</td>
						</tr>
						</tr>
						<td align="left">&nbsp;&nbsp; 종료 : <select name="end">
								<option value="2020">2020</option>
								<option value="2021">2021</option>
						</select> yy <select name="end_birthm">
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select> mm <select name="end_birthd">
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
						</select>
						</td>
						</tr>
						<tr>
							<th><font color="red">*</font> 개요</th>
						</tr>
						<tr>
							<td><textarea rows="10" cols="100" size="10" name=summary></textarea></td>
						</tr>
						</tr>
						<tr>
							<th><font color="red">*</font>&nbsp;&nbsp;주요 내용 및 예상 결과물</th>
						</tr>
						<tr>
							<td><textarea rows="10" cols="100" size="10" name="expect"></textarea>
							</td>
						</tr>
						<tr>
							<th><font color="red">*</font>&nbsp;&nbsp;기대 효과 및 활용 분야</th>
						</tr>
						<tr>
							<td><textarea rows="10" cols="100" size="10" name="effect"></textarea>
							<td>
						</tr>
					</table>


					<hr width=80% color="#EAEAEA">
					<input type="button" name="registin" value="Complete!"
						style="width: 500px; height: 40px; background-color: #2196f3;" onclick="title_check()">

				</div>
			</div>
		</form>
	</section>
	<footer> </footer>

</body>
</html>