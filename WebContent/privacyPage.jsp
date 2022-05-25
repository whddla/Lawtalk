<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href ="assets\css\privacyPage.css">
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
				<h2>개인정보 수정</h2>
			</div>
			<div class = "allform-layout">
				<form class ="first-form">
					<h3 class = "form-title-text">계정정보</h3>
					<div class ="input-layout">
						<div class = "input-tag-layout">
							<input id="accout-email" class="accout-border allInput-border" type="email" placeholder="ex) name@example.com" style="padding:10px 0;">
							<label class= "accout-email-error" for ="accout-email" style="font-size: 14px; font-weight: 400; line-height: 28px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;">이메일</label>
						</div>
						
						<div class ="input-tag-layout">
							<div class="allInput-border" style="border-bottom-color:#ddd; color: #757372;  padding: 10px 0;">dnrwhddla14erl</div>
							<label style="font-size: 14px; font-weight: 400; line-height: 28px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;">아이디</label>
						</div>
						<p class="login-alert">소셜 로그인한 경우, 임의의 아이디가 부여됩니다.</p>
					</div>
						<div class ="button-layout" >
							<button type="submit">[저장 ]</button>
						</div>
				</form>
				<form class ="second-form">
					<h3 class = "form-title-text">수신설정</h3>
					<div class="form-select-checkbox">
						<label for= "normal1" class="pull-left">상담안내 메일수신</label>
							<div class="pull-right">
								<div class="toggle normal1">
								    <input id="normal1" type="checkbox" class="run-checkbox" checked>
								    <label class="toggle-item" for="normal1"></label>
								</div>
							</div>
					</div>
					<div class="form-select-checkbox">
						<label for= "normal2" class="pull-left">상담안내 문자수신</label>
							<div class="pull-right">
								<div class="toggle normal2">
								    <input id="normal2" type="checkbox" class="run-checkbox" checked>
								    <label class="toggle-item" for="normal2"></label>
								</div>
							</div>
					</div>
					<div class="form-select-checkbox">
						<label for= "normal3" class="pull-left">이벤트/혜택정보 메일 수신</label>
							<div class="pull-right">
								<div class="toggle normal3">
								    <input id="normal3" type="checkbox" class="run-checkbox">
								    <label class="toggle-item" for="normal3"></label>
								</div>
							</div>
					</div>
					<div class="form-select-checkbox">
						<label for= "normal4" class="pull-left">이벤트/혜택정보 문자수신</label>
							<div class="pull-right">
								<div class="toggle normal4">
								    <input id="normal4" type="checkbox" class="run-checkbox">
								    <label class="toggle-item" for="normal4"></label>
								</div>
							</div>
					</div>
					<div class ="button-layout" >
							<button type="submit">[ 저장 ]</button>
					</div>
				</form>
				<form class= "third-form">
					<h3 class = "form-title-text">전화번호</h3>
					<div class ="input-hp-layout" >
						<div class="hp-layout">
							<input type="tel" id="accout-hp" class="allInput-border"  style="padding:10px 0;" placeholder="ex) 01012345678" maxlength="13">
							<label class="tel-error" for="accout-hp" style="font-size: 14px; font-weight: 400; line-height: 28px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;">전화번호</label>
						</div>
					</div>
					<div class ="button-layout" >
							<button type="submit">[ 저장 ]</button>
					</div>
				</form>
				<div class="footer">
					<div class= "row" style ="display:flex; justify-content: space-around;">
						<a href="Clientwithdrawal.jsp" style="color: #545352; font-size: 12px; text-decoration: none; ;">의뢰인 회원탈퇴</a>
						<a href="LawKnowMainPage.jsp" style="color: #545352; font-size: 12px; text-decoration: none; ">로지식인 메인</a>
						<a href="pwChange.jsp" style="color: #545352; font-size: 12px; text-decoration: none; padding-left: 39px;">PW 변경</a>
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
	let emailCheck = $(".accout-email-error");
	let $email = $("#accout-email");
	
	
	$email.on("keyup", function(){
		
		if($email.val() == ""){
			emailCheck.css("color","red");
			emailCheck.text("이메일은 반드시 입력해야합니다.");
		}
		
		if($email.val() !== ""){
			emailCheck.css("color","#757575");
			emailCheck.text("이메일");
		}
	});
	
	/* 핸드폰 유효성 검사  */
	let $hp = $("#accout-hp");
	let hpCheck = $(".tel-error");
	let hp = RegExp(/^[0-9]{8,13}$/);
	
	$hp.on("keyup",function(){
		
		if(!hp.test($hp.val())){
			hpCheck.css("color","red");
			hpCheck.text("숫자만 입력해주세요");
		}else{
			hpCheck.css("color","#757575");
			hpCheck.text("전화번호");
		}
		
	});
	
</script>
</html>