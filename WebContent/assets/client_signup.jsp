<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link href="../assets/css/client_signup.css" rel="stylesheet">
    <title>회원가입 | 로노</title>
</head>
<body>
    <div class="background-wrap">
        <div class="signup-container">
            <div class="header">
                <div class="lawtalk">
                    <h2>Lawknow</h2>
                </div>
                <div class="goodlawyers">
                    <b>Good Lawyers</b>
                </div>
                <div class="clien-sign-up">
                    <span class="clien-sign-up-span">
                        의뢰인 회원가입
                    </span>
                </div>
            </div>
            <form class="sign-main-container">
                <button class="kakao-signup-button">
                    <i class="kakao-icon"></i>
                    <span class="vertical-line"></span>
                    <span class="text">카카오로 회원가입</span>
                </button>
                <button class="facebook-signup-button">
                    <i class="facebook-icon"></i>
                    <span class="vertical-line2"></span>
                    <span class="text">페이스북으로 회원가입</span>
                </button>
                <h3 class="info">계정정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <label for="sign-up-email">이메일</label>
                        <input class="form-control" id="sign-up-email" type="email" placeholder="예) name@example.com">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-id" type="text" placeholder="아이디">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-password" type="password" placeholder="비밀번호">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-password-confirm" type="password" placeholder="비밀번호 재확인">
                    </div>
                </div>
                <h3 class="info">인증정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <input class="form-control" id="sign-up-phone" type="tel" placeholder="전화번호">
                        <button type="button" class="code-button">[ 인증번호 발송 ]</button>
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-code" type="text" placeholder="인증번호">
                        <button type="button" class="code-button">[인증]</button>
                    </div>
                </div>
                <div class="cons-info">
                    <label for= "normal2" class="pull-left">상담안내 문자수신</label>
						<div class="pull-right" style="float:right;">
							<div class="toggle normal2">
							 	<input id="normal2" type="checkbox" class="run-checkbox" checked style="display:none;">
							 	<label class="toggle-item" for="normal2"></label>
							</div>
						</div>
                </div>
                <h3 class="info">기타정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <button type="button" class="form-control-button">방문경로</button>
                    </div>
                </div>
                <h3 class="info">선택정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <button type="button" class="form-control-button">성별 선택</button>
                    </div>
                    <div class="form-group">
                        <button type="button" class="form-control-button">출생년도</button>
                    </div>
                </div>
                <h3 class="info">약관동의</h3>
                <div class="constract-container">
                    <div class="constract-all">
                        <label>
                            다음에 모두 동의합니다.
                            <input type="checkbox" id="cbx_chkAll">
                        </label>
                    </div>
                    <div class="constract-all-text">
                        서비스 이용약관, 개인정보 취급방침, 개인정보 이용/수집, 프로모션 정보 수신에 모두 동의함을 의미합니다.
                    </div>
                    <div class="line"></div>
                    <div class="constract-text">
                        <label>
                            서비스 이용약관 동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                    </div>        
                    <div class="constract-text">
                        <label>
                            개인정보 취급방침 동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                    </div>        
                    <div class="constract-text">
                        <label>
                            개인정보 이용/수집 동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                    </div>      
                    <div class="constract-text">
                        <label>
                            혜택정보(마케팅) 수신 전체동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(선택)</span>
                    </div>      
                </div>
                <h3 class="info">이용자 연령 확인</h3>
                <div class="input-info">
                    <div class="description">
                        법률문제는 만 14세 미만 아동이 스스로 판단하기 힘든 복잡한 문제일 수 있습니다.
                        <a href="tel:112">112 경찰청</a> 
                        또는 
                        <a href="tel:1577-1391">1577-1391 아동보호전문기관</a>
                        에 연락해 도움을 받아보세요.
                    </div>
                    <div class="check-age">
                        <label>
                            <input type="checkbox">
                            만 14세 이상입니다.
                        </label>
                    </div>
                </div>
                <div class="footer-button">
                    <button type="summit" class="footer-button-click">
                        가입신청
                    </button>
                </div>
            </form>
            <div class="row-footer">
                <div class="row" style="font-size: 12px;">
                    <a href="http://localhost:9000/kovengerss/assets/client_login.jsp">로그인</a>
                    <a href="https://lawyer.lawtalk.co.kr/">변호사 가입안내</a>
                </div>
                <div class="row">
                    <a style="font-size: 5px;" href="http://lawcompany.co.kr/">
                        (C) Law&Company Co., Ltd.
                    </a>
                </div>
            </div>
        </div>
    </div>
    </body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});

	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;

		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
});

</script>
</html>