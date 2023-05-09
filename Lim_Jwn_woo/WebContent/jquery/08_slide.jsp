<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="http://localhost:9000/Lim_Jwn_woo/jquery/jquery-3.6.4.min.js"></script>
	<style>
		div{
			text-align:center;
		}
		div#flip{
			width:500px; height:30px;
			background:#f2f2f2;
			border:1px solid gray;
		}
		div#content{
			width:500px; height:250px;
			background:gray;
			display:none;
		}
	</style>
	<script>
		$(document).ready(function(){
			$("#flip").click(function(){
				$("#content").slideToggle(2000,function(){
												test();
				});
			});
		});
		
		function test(){
			/* alert("테스트 완료"); */
		}
	</script>
</head>
<body>
	<h1>SlideUp/Down</h1>
	<div id="flip">여기를 눌러주세요</div>
	<div id="content">내용</div>
</body>
</html>