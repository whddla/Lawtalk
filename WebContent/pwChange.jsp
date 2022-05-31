<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets\css\pwChange.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Batang&family=Jua&family=Nanum+Gothic&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="all-layout">
			<div class ="title-layout">
				<h1>
					<a class = "title-font" href="LawKnowMainPage.jsp">LawKnow</a>
					<span style ="display : block; color: #fefefe; font-size: 22px">Good Lawyers</span>
				</h1>
				<h2>비밀번호 수정</h2>
			</div>
			
			<div class = "allform-layout">
				<form class ="first-form" action="PwChangeOk.ul" method="post" onsubmit="return inchk(this)" name="f">
					<h3 class = "form-title-text">비밀번호 변경</h3>
					<div class ="input-layout">
						<div class="pw-intro-layout">
							<h2 class="pw-intro-text">비빌번호 변경</h2>
							<p class="pw-intron-text-row">안전한 비밀번호로 내정보를 보호하세요</p>
							<p class="pw-intron-text-row">다른 아이디/사이트에서 사용한 적 없는 비밀번호</p>
							<p class="pw-intron-text-row">이전에 사용한 적 없는 비밀번호가 안전합니다.</p>
						</div>
						<div class = "input-tag-layout">
							<input name= "oldPw"id="accout-pw" class="accout-border allInput-border" type="password" placeholder="현재비밀번호" style="padding:10px 0;" >
								<span class="pw-error"></span>						
						</div>
						<div class = "input-tag-layout">
							<input name="newPw" id="accout-newPw" class="accout-border allInput-border" type="password" placeholder="새 비밀번호" style="padding:10px 0;">
							<span class="pw-newPw-Error"></span>								
						</div>
						<div class = "input-tag-layout">
							<input name="newPw2"id="accout-newPwCheck" class="accout-border allInput-border" type="password" placeholder="새 비밀번호 확인" style="padding:10px 0;">
							<span class="pw-newPwCheck-error"></span>								
						</div>
					</div>
						<div class ="button-layout" >
							<input type="submit" value="[ 변경  ]">
						</div>
				</form>
				<div class="footer">
					<div class= "row" style ="display:flex; justify-content: space-around;">
						<a href="Clientwithdrawal.jsp" style="color: #545352; font-size: 12px; text-decoration: none; ;">의뢰인 회원탈퇴</a>
						<a href="LawKnowMainPage.jsp" style="color: #545352; font-size: 12px; text-decoration: none; ">로노 메인</a>
					</div>
					<div class ="row">
						<a href="LawKnowMainPage.jsp" style="color: #a9a7a6; font-size: 10px; text-decoration: none; ">(C) Law..Company Co.Ltd.</a>
					</div>
				</div>
			</div>	
		</div>
	</div>		
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
let checkPw = "${checkPw}";
if(checkPw){
	alert("비밀번호 변경 완료");
}

let msg = "${msg}";

if(msg){
	alert("현재 비밀번호가 같습니다.");
}

	function inchk(f){
		if(f.newPw.value != f.newPw2.value){
			alert("변경 비밀번호 와 변경 비밀번호 재입력이 다릅니다.");
			f.newPw2.value=""; 
			f.newPw2.focus(); 
			return false;
		}
		return true;
	}

</script>
</html>