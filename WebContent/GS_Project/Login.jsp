<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="Css/Header.css">
<link rel="stylesheet" type="text/css" href="Css/Sec.css">
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

	<hr id = "Join">

	<section>
		<form action=LoginDb.jsp method=post name="my_Login">
		
			<div style="text-align: center">
			
				<div style="display: inline-block">
				
					<div id="LoginBox" align="center">
					
						<table cellpadding=5 cellspacing=0 align="center">
							<tr>
								<td><font color="red">*</font>ID</td>
								<td></td>
							</tr>

							<tr>
								<td colspan="3"><input type="text" name="idinputLog" size="60"
									maxlength="12"></td>
							</tr>

							<tr>
								<td colspan="3"><font color="red">*</font>Password</td>
								<br>
							</tr>
							<tr>
								<td colspan="3"><input type="password" size="60"
									name="bimilLog" maxlength="12"></td>
							</tr>
						</table>
						
						<input type="submit" name=signin value="Login"
							style="width: 500px; height: 40px; background-color: #2196f3;"
							onclick="singUp()">
				</div>
			</div>
		</div>
		</form>
	</section>
	
	<footer>
	</footer>

</body>
</html>