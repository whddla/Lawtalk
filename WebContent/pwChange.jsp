<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="asset\css\pwChange.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Batang&family=Jua&family=Nanum+Gothic&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="all-layout">
			<div class ="title-layout">
				<h1>
					<a class = "title-font" href="http://www.naver.com">LawKnow</a>
					<span style ="display : block; color: #fefefe; font-size: 22px">Good Lawyers</span>
				</h1>
				<h2>비밀번호 수정</h2>
			</div>
			
			<div class = "allform-layout">
				<form class ="first-form">
					<h3 class = "form-title-text">비밀번호 변경</h3>
					<div class ="input-layout">
						<div class="pw-intro-layout">
							<h2 class="pw-intro-text">비빌번호 변경</h2>
							<p class="pw-intron-text-row">안전한 비밀번호로 내정보를 보호하세요</p>
							<p class="pw-intron-text-row">다른 아이디/사이트에서 사용한 적 없는 비밀번호</p>
							<p class="pw-intron-text-row">이전에 사용한 적 없는 비밀번호가 안전합니다.</p>
						</div>
						<div class = "input-tag-layout">
							<input id="accout-pw" class="accout-border allInput-border" type="password" placeholder="현재비밀번호" style="padding:10px 0;" >
								<span class="pw-error"></span>						
						</div>
						<div class = "input-tag-layout">
							<input id="accout-newPw" class="accout-border allInput-border" type="password" placeholder="새 비밀번호" style="padding:10px 0;">
							<span class="pw-newPw-Error"></span>								
						</div>
						<div class = "input-tag-layout">
							<input id="accout-newPwCheck" class="accout-border allInput-border" type="password" placeholder="새 비밀번호 확인" style="padding:10px 0;">
							<span class="pw-newPwCheck-error"></span>								
						</div>
					</div>
						<div class ="button-layout" >
							<button type="submit">[ 변경 ]</button>
						</div>
				</form>
				<div class="footer">
					<div class= "row" style ="display:flex; justify-content: space-around;">
						<a href="http://www.naver.com" style="color: #545352; font-size: 12px; text-decoration: none; ;">의뢰인 회원탈퇴</a>
						<a href="http://www.naver.com" style="color: #545352; font-size: 12px; text-decoration: none; ">로노 메인</a>
					</div>
					<div class ="row">
						<a href="http://www.naver.com" style="color: #a9a7a6; font-size: 10px; text-decoration: none; ">(C) Law..Company Co.Ltd.</a>
					</div>
				</div>
			</div>	
		</div>
	</div>		
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	let check2 = RegExp(/(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{6,18}/); // 문자와 특수문자 조합의 6~24 자리
	
	const $newPw = $("#accout-newPw");
	const $newPwCheck = $("#accout-newPwCheck");
	
	let newPWerror =$(".pw-newPw-Error");
	let checkerror =$(".pw-newPwCheck-error")
	
	
	$("#accout-pw").on("keyup",function(){
		if($("#accout-pw").val() == ""){
			$(".pw-error").text("비밀번호를 입력해주세요");
		}else{
			$(".pw-error").text("");
		}
	});	
	
	$newPw.on("keyup",function(){
		if(!check2.test($newPw.val())){
			newPWerror.text("문자와 특수문자 조합의 6~18자리로 입력해주세요.");
		}else{
			newPWerror.text("완벽한 비밀번호에요");
		}
		
		if($newPw.val() == ""){
			newPWerror.text("");
		}
	});
	
	
	
	$newPwCheck.on("keyup",function(){
		if($newPw.val() !== $newPwCheck.val()){
			checkerror.css("color","red");
			checkerror.text("비밀번호가 일치하지 않습니다.");
		}else{
			checkerror.text("");
		}
		
		if($newPw.val() === $newPwCheck.val()){
			checkerror.css("color","blue");
			checkerror.text("비밀번호가 일치합니다.");
		}
		
		if($newPwCheck.val() == ""){
			checkerror.text("");
		}
	
	});

</script>
</html>