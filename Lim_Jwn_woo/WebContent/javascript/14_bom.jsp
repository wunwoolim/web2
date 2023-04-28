<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - BOM</title>
	<script>
		let z = window.innerWidth;
		let y = window.innerHeight;
		
		document.write("width = " + z + "px<br>");
		document.write("height = "+ y +"px");
	</script>
	<style>
		button{
			width:120px;
			padding: 10px 0;
			background:cyan;
			border:1px solid lightgray;
			border-radius:4px;
			cursor:pointer;
		}
		button:hover{
			text-decoration:underline;
		}
	</style>
	<script>
		function locationPage(page){
			if(page == "naver"){
				window.open('about:blank').location.href = 'https://www.naver.com/';
			}else if(page == "google"){
				window.open('about:blank').location.href = 'https://www.google.com/';
			}else if(page == "daum"){
				window.open('about:blank').location.href = 'https://www.daum.net/';
			}
		}
		function historyPage(page){
			let hlength = window.history.lengtn;
			/* alert(hlength); */
			if(page == "prev"){
				window.history.back();
			}else if(page == "next"){
				window.history.forward();
			}else if(page == "go2"){
				window.history.go(2);
			}
		}
		
	</script>
</head>
<body>
	<h1>Browser Object Model</h1>
	<button type="button" onclick='locationPage("naver")'>네이버</button>
	<button type="button" onclick='locationPage("google")'>구글</button>
	<button type="button" onclick='locationPage("daum")'>다음</button>
	<button type="button" onclick='historyPage("prev")'>prev</button>
	<button type="button" onclick='historyPage("next")'>next</button>
	<button type="button" onclick='historyPage("go2")'>Go page 2</button>
</body>
</html>