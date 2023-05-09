<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/Lim_Jwn_woo/jquery/jquery-3.6.4.min.js"></script>
	<script>
	$(document).ready(function(){
		/* 
		$(선택자).이벤트핸들러메소드();
		$(선택자).on("이벤트핸들러메소드",함수정의);	
		$(선택자).on({
			이벤트핸들러메소드 : 함수정의;
			이벤트핸들러메소드 : 함수정의;
			...
		});
		*/
		$("#btn1").click(function(){
			alert("버튼1 클릭");
		});
		$("#btn2").on("click",function(){
			alert("버튼2 클릭");
		});
		$("#btn3").on({
			click : function(){alert("hello~ jQuery!!!");},
			mouseenter : function(){$(this).css("background","tomato");},
			mouseleave : function(){$(this).css("background","mediumseagreen");}
			
		});
	});
	
	</script>
</head>
<body>
	<h1>events</h1>
	<button type="button" id="btn1">button1</button>
	<button type="button" id="btn2">button2</button>
	<button type="button" id="btn3">button3</button>
</body>
</html>