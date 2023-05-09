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
			//데이터 넣기 버튼 클릭 이벤트 처리
			$("#set_data").click(function(){
				//1. form 태그에 데이터 넣기 : value --> val()
				// document.getElementById("name").value = "홍길동"; --> 
				$("#name").val("홍길동");
			});
			/* 2. innerHTML --> text() */
			$("#addr").text("서울시 강남구");
			/* 3. text에 html태그를 추가하는경우 --> html()을 사용 */
			/* $("#hobby").html("<li>게임하기</li>"); */
			/* 4. append(html 태그) */
			$("#hobby").append("<li>게임하기</li>").append("<li>노래하기</li>").append("<li>등산하기</li>")
			.append("<li>영화보기</li>")
			/* a태그 링크 형태로 d1에 추가하기 */
			$("#d1").html("<a href='https://www.naver.com'>naver</a>");
			
			$("#d2").html("<img src='../images/google.jpg'></img>");
			$("#d2 img").css("width","10%");
			
			$("#get_data").click(function(){
				/* id가 name인 폼에서 데이터를 가져와서 --> id가 getName인 폼에 넣기 */
				$("#getName").val($("#name").val());
				
				// 네이버의 href속성을 s1에 넣기 
				$("#s1").text($("#d1 a").attr("href"));
				
				// 이미지의 src속성을 s2에 넣기
				$("#s2").text($("#d2 img").attr("src"));
			});
				
			
		});
	</script> 
</head>
<body>
	<h1>Set/Get Content</h1>
	이름 : <input type="text" name="name" id="name"><br>
	주소 : <p id="addr"></p>
	취미 : <ul id="hobby"></ul>
	네이버 주소 : <div id="d1"></div>
	이미지 주소 : <div id="d2"></div>
	<button type="button" id="set_data">데이터 넣기</button>
	<hr>
	get name : <input type="text" id="getName"><br>
	네이버 주소 가져오기(href의 속성값만) : <span id="s1"></span><br>
	이미지 주소 가져오기(src의 속성값만) : <span id="s2"></span><br>
	<button type="button" id="get_data">데이터 가져오기</button>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>