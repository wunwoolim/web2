<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/Lim_Jwn_woo/jquery/jquery-3.6.4.min.js"></script>
	<script>
		/* 스크립트를 통해서 만들어지는 코드 */
		$(document).ready(function(){
			const employee = {list :[{"name":"홍길동",addr:'서울시 강남구',age:30},
							  		 {"name":"테스트",addr:'서울시 강남구',age:25},
							  		 {"name":"홍길순",addr:'서울시 강남구',age:31},
							  		 {"name":"조유리",addr:'부산시 남포동',age:22}
							  		]
							 };
			/* employee의 제이슨 안에 list 배열이 존재 */
			let code = "<table><tr><th>번호</th><th>성명</th><th>주소</th><th>나이</th></tr>";
			for(index in employee.list){
				let no = parseInt(index)+1;
			code += "<tr>";
			code += "<td>"+no+"</td>";
			code += "<td>"+employee.list[index].name+"</td>";
			code += "<td>"+employee.list[index].addr+"</td>";
			code += "<td>"+employee.list[index].age+"</td>";
			code += "</tr>";
			}
			code += "</table>"
			$("body").append(code); 
		});
	</script>
	<style>
		table,th,td{border:1px solid blue;}
		th{background:lightgray;}
	</style>
</head>
<body>

</body>
</html>