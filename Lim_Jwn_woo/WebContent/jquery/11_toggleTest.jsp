<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.drow{
			/* border:1px solid gray; */
			margin-bottom:10px;
		}
		p,.drow>div{
			width:300px;
			padding:0;
			margin:0;
		}
		p{
			background:tomato;
			padding:3px 0;
		}
		.drow>div{
			background:mediumseagreen; height:80px; display:none;
		}
		p:hover{text-decoration:underline;}
	</style>
<script src="http://localhost:9000/Lim_Jwn_woo/jquery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			$("p").click(function(){
				let pid = $(this).attr("id");
				$("#d_"+pid).toggle();
			});
		});
	</script>
</head>
<body>
	<h1>Toggle Test</h1>
	<div class="drow">
		<p id="p1">댓글 - 제목 #1</p> <!-- p1 값 대신 primary key를 넣어 사용 -->
		<div id="d_p1">내용 #1</div>
	</div>
	<div class="drow">
		<p id="p2">댓글 - 제목 #2</p>
		<div id="d_p2">내용 #2</div>
	</div>
	<div class="drow">
		<p id="p3">댓글 - 제목 #3</p>
		<div id="d_p3">내용 #3</div>
	</div>
	<div class="drow">
		<p id="p4">댓글 - 제목 #4</p>
		<div id="d_p4">내용 #4</div>
	</div>
	<div class="drow">
		<p id="p5">댓글 - 제목 #5</p>
		<div id="d_p5">내용 #5</div>
	</div>
</body>
</html>