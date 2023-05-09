$(document).ready(function(){
/*
  로그인 폼 체크
 */
	$("#btnLogin").click(function(){
		if($("#id").val() == ""){
			alert("아이디를 입력해주세요");
			$("#id").focus();
			return false;
		}else if($("#pass").val() == ""){
			alert("패스워드를 입력해주세요");
			$("#pass").focus();
			return false;
		}else{
			loginform.submit();
		}
	});

/*
로그인 폼 다시쓰기
*/
	$("#btnReset").click(function(){
		$("#id").val("").focus();
		$("#pass").val("");
	});



/*
  회원가입 폼 체크  
 */
$("#btnJoin").click(function(){
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요");
		$("#id").focus();
		return false;
	}else if($("#pass").val() == ""){
		alert("패스워드를 입력해주세요");
		$("#pass").focus();
		return false;
	}else if($("#cpass").val() == ""){
		alert("패스워드 확인를 입력해주세요");
		$("#cpass").focus();
		return false;
	}else if($("#name").val() == ""){
		alert("성명를 입력해주세요");
		$("#name").focus();
		return false;
	}else if($("input[name='gender']:checked").length == 0){
		alert("성별를 체크해주세요");
		return false;
	}else if($("#email1").val() == ""){
		alert("이메일을 입력해주세요");
		$("#email1").focus();
		return false;
	}else if($("#email2").val() == ""){
		alert("이메일을 선택해주세요");
		$("#email3").focus();
		return false;
	}else if($("#addr1").val() == ""){
		alert("주소을 입력해주세요");
		$("#btnSearchAddr").css("border","1px solid gray");
		return false;
	}else if($("#addr2").val() == ""){
		alert("상세주소을 입력해주세요");
		$("#addr2").focus();
		return false;
	}else if($("input[name='tel']:chevked").length == 0){
		alert("통신사를 선택해주세요");
		return false;
	}else if($("#phone1").val() == "default"){
		alert("폰번호을 선택해주세요");
		$("#phone1").focus();
		return false;
	}else if($("#phone2").val() == ""){
		alert("폰번호을 입력해주세요");
		$("#phone2").focus();
		return false;
	}else if($("#phone3").val() == ""){
		alert("폰번호을 입력해주세요");
		$("#phone3").focus();
		return false;
	}else if($("input[name='hobby']:chevked").length == 0){
		alert("취미를를 선택해주세요");
		return false;
	}else{
		joinform.submit();
	}
});
	

/*
회원가입 폼 체크 - 비밀 번호 & 비밀번호 확인 
 */

$("#cpass").on("blur",function(){
	if($("#pass").val() != "" && $("#cpass").val() != ""){
		if($("#pass").val() == $("#cpass").val()){
			$("#cmsg").text().css("color","blue")
			,css("font-size","11px");
		}else{
			$("#cmsg").text("비밀번호가 동일하지 않습니다")
			.css("color","fed").css("display","block");
		}
	}
});
/*
회원가입 폼 체크 - 이메일 체크
*/
$("#email3").on("change",function(){
	if($("#email3").val() == "default"){
		alert("이메일을 선택해주세요");
		$("#email2").val("");
		$("#email3").focus();
	}else if($("#email3").val() == "self"){
		$("#email3").val("").focus();
	}else{
		$("#email2").val($("#email3").val());
	}
});


/*
회원가입 폼 체크 - 주소 찾기
*/

$("#btnSearchAddr").click(function(){
	new daum.Postcode({
        oncomplete: function(data) {
        	$("#addr1").val("("+data.zonecode+")" + data.address);
        	$("#addr2").focus();
        }
    }).open();

});


/*
게시판 글쓰기 폼 체크 
*/


}); //ready





























