<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Variables</title>
	<script>
		//변수 선언 - 변수의 타입은 저장되는 값에 따라 결정
		var x = 100;	//정수형 변수
		var y = 10.234;	//실수형 변수
		var str = "자바스크립트";	//문자형 변수
		var str2 ='자바스크립트';	//문자형 변수
		
		x=123.456;	// 정수형에서 실수형으로 변경 가능
		x='hello';	// 실수형에서 문자형으로 변경 가능
		//데이터 타입이 고정이되는게 아니기 때문에 변수 형태를 변경할수있고 마지막에 선언된 데이터로 출력
		
		var x = 'x변수 재정의!!';	//var은 변수 재정의 가능
		
		//let 키워드로 변수 정의
		let x2 = 100;
		x2 = 'hello'; //let도 정수형에서 문자형으로 변경가능
		x2 = 123.456; //문자형도 실수형으로 변경가능
		
		//let x2 = 'x2변수 재정의 불가능!!!'; //let는 변수 재정의 불가능
		
		//const
		const x3 = 100;
		const y3 = 200;
		
		//const x3 = 'x3 변수의 재정의 불가능' //const도 변수의 재정의 불가능
		
		alert("x3 -->" + (x3));
		
		
		
	</script>
</head>
<body>
	
</body>
</html>