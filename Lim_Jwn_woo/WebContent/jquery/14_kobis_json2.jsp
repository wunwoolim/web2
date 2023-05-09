<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/Lim_Jwn_woo/jquery/jquery-3.6.4.min.js"></script>
<script src="kobis_getjson2.js"></script>

<style>
	table,th,td{border:1px solid gray;}
</style>
</head>
<body>
	<h1>KOBIS 영화 박스오피스</h1>
	<form name="kobisForm" action="#" method="get">
		<ul>
			<label>박스오피스 선택</label>
			<select id="bselect">
				<option value="default">선택</option>
				<option value="day">일별</option>
				<option value="week">주말</option>
			</select>
			<input type="text" name="kobis1"  placeholder="날짜입력 예)20200701" id="kobis1">
			<button type="button" id="btnKobis">실행</button>
		</ul>
		
	</form>
	
</body>
</html>



