<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>login form</h1>
	<form type="loginForm" action="06_loginCheck.jsp" method="post" >
	<!-- action 처리방식 / method get:url에 ?로붙어서 넘어가는 방식이 쿼리 스트링 방식이다 / post:url에 남지않는다-->
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id">
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass">
			</li>
			<li>
				<button type="submit">login</button>
				<button type="reset">cancle</button>
			</li>
			
		</ul>
	</form>
</body>
</html>