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
    <link href="../assets/css/lawyer_signup.css" rel="stylesheet">
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
                <div class="laywer-sign-up">
                    <span class="laywer-sign-up-span">
                        변호사 회원가입
                    </span>
                </div>
            </div>
            <form class="sign-main-container">
                <h3 class="info">계정정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <label for="sign-up-email">이메일</label>
                        <input class="form-control" id="sign-up-email" type="email" placeholder="예) name@example.com">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-id" type="text" placeholder="아이디">
                        <!-- <label for="sign-up-id">아이디</label> -->
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
                        <input class="form-control" id="sign-up-name" type="text" placeholder="이름">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-company" type="text" placeholder="소속(사무소, 회사명)">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-phone" type="tel" placeholder="소속전화번호">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="sign-up-phone-again" type="text" placeholder="휴대폰 번호">
                    </div>
                    <div class="form-group">
                        <button type="button" class="form-control-button">출신시험 선택</button>
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
                        <a href="https://www.lawtalk.co.kr/terms-of-service">내용보기</a>
                    </div>        
                    <div class="constract-text">
                        <label>
                            개인정보 취급방침 동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                        <a href="https://www.lawtalk.co.kr/privacy-policy">내용보기</a>
                    </div>        
                    <div class="constract-text">
                        <label>
                            개인정보 이용/수집 동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                        <a href="https://www.lawtalk.co.kr/personal-information-usage-agreement">내용보기</a>
                    </div>      
                    <div class="constract-text">
                        <label>
                            혜택정보(마케팅) 수신 전체동의
                            <input type="checkbox" name="chk">
                        </label>
                        <span class="span-tag">(선택)</span>
                    </div>      
                </div>
                <div class="naver-lawyer">
                    <div class="naver-lawyer-card">
                        <label>
                            네이버 지식iN 변호사등록도 함께 신청합니다.
                            <input type="checkbox" id="naver-chk">
                        </label>
                        <div class="naver-comment">
                            로톡에서 네이버 지식iN 전문가 등록을 하면, 네이버 검색결과에서 변호사님 지식iN 답변이 상위노출됩니다.
                        </div>
                        <div class="naver-form-group">
                            <input class="form-control" type="text" name="layerNaverId" id="lawyer-naver-id" placeholder="네이버 아이디">
                        </div>
                    </div>
                </div>
                <div class="input-info">
                    <div class="description">
                        <img src="https://cdn-icons-png.flaticon.com/512/25/25607.png" class="description-img">
                        가입 신청을 하시면 변호사 자격 확인 절차가 있으며, 이후 변호사님의 경력, 자격, 주요분야 등 필수 정보가 모두 입력되어야 변호사님 프로필이 검색에 노출이 됩니다.
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