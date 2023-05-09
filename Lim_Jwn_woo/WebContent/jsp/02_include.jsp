<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 주석 : 웹 브라우저에서 실행 -->
	<%-- jsp 주석 : 톰갯이 실행 --%>
	
	<%@ include file="test.jsp" %> <%-- 소스 코드가 그대로 include 된 후 컴파일 실행 --%>
	<hr>
	<jsp:include page="test.jsp" /> <%-- 컴파일된 class파일 실행 결과가 include 됨 --%>
	<hr>
	<iframe src="test.html" width="100%" heught="100px"></iframe>
</body>
</html>