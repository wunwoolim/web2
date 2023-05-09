$(document).ready(function(){
	//1. json data --> $.getJson(url,function(json데이터를 담고있는 변수){});
	let url ="https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230503";
	$.getJSON(url,function(kobis){ 
	
		let code ="<h1>"+ kobis.boxOfficeResult.boxofficeType +"</h1>"
		code += "<h3>"+ kobis.boxOfficeResult.showRange +"</h3>"
		code += "<table><tr><th>rnum</th><th>rank</th><th>rankOldAndNew</th><th>movieCd</th><th>movieNm</th><th>openDt</th>";
		code +=	"<th>salesAmt</th><th>salesShare</th><th>salesInten</th><th>salesChange</th><th>salesAcc</th><th>audiCnt</th>";
		code += "<th>audiInten</th><th>audiChange</th><th>audiAcc</th><th>scrnCnt</th><th>showCnt</th></tr>";
		for(kobi of kobis.boxOfficeResult.dailyBoxOfficeList){
			
			code +="<td>"+kobi.rnum+"</td>";
			code +="<td>"+kobi.rank+"</td>";
			code +="<td>"+kobi.rankOldAndNew+"</td>";
			code +="<td>"+kobi.movieCd+"</td>";
			code +="<td>"+kobi.movieNm+"</td>";
			code +="<td>"+kobi.openDt+"</td>";
			code +="<td>"+kobi.salesAmt+"</td>";
			code +="<td>"+kobi.salesShare+"</td>";
			code +="<td>"+kobi.salesInten+"</td>";
			code +="<td>"+kobi.salesChange+"</td>";
			code +="<td>"+kobi.salesAcc+"</td>";
			code +="<td>"+kobi.audiCnt+"</td>";
			code +="<td>"+kobi.audiInten+"</td>";
			code +="<td>"+kobi.audiChange+"</td>";
			code +="<td>"+kobi.audiAcc+"</td>";
			code +="<td>"+kobi.scrnCnt+"</td>";
			code +="<td>"+kobi.showCnt+"</td>";
			code += "</tr>";
		}
		code +="</table>"
		$("body").append(code);
	})
});