$(document).ready(function(){
		const gangnam = {title:"강남고등학교",address:"서울시 강남구 강남대로123",
						 grade:{gtitle:"2학년 1반",
							 	list:[{name:"홍길동",kor:100,eng:100,math:100},
							 		  {name:"테스트",kor:100,eng:100,math:100},
							 		  {name:"홍길순",kor:100,eng:100,math:100},
							 		  {name:"강호동",kor:100,eng:100,math:100},
							 		  {name:"유재석",kor:100,eng:100,math:100}]}};
		
		/* json 객체인 gangnam 데이터를 테이블 형식으로 출력 
			title = h1, address,gtitle = h3, list = 테이블
		*/
		
		let code ="<h1>"+gangnam.title+"</h1>"
		code +="<h3>"+gangnam.address+"</h3>"
		code +="<h3>"+gangnam.grade.gtitle+"</h3>"
		code +="<table><tr><th>성명</th><th>국어</th><th>영어</th><th>수학</th><th>총점</th><th>평균</th></tr>"
		for(index of gangnam.grade.list){
			
			let tot = index.kor+index.eng+index.math;
			let avg = Math.round(tot/3);
			
			code +="<td>"+index.name+"</td>";
			code +="<td>"+index.kor+"</td>";
			code +="<td>"+index.eng+"</td>";
			code +="<td>"+index.math+"</td>";
			code +="<td>"+tot+"</td>";
			code +="<td>"+avg+"</td>";
			code += "</tr>";
		}
		code +="</table>"
		$("body").append(code); 
	});