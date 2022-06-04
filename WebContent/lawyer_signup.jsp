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
    <link href="assets/css/lawyer_signup.css" rel="stylesheet">
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
            <form action="JoinOk.ll" id="checks()" name="joinForm" method="post" class="sign-main-container">
                <h3 class="info">계정정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <input name="lawyerEmail" class="form-control" id="account-email" type="email" placeholder="예) name@example.com">
                        <label class="account-email-error" for="account-email" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;">이메일</label>
                    </div>
                    <div class="form-group">
                    <!-- 아이디 중복확인  -->
                        <input name="lawyerId" class="form-control" id="account-id" type="text" placeholder="아이디">
                        <label class="account-id-error" for="account-id" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    	<input style="cursor: pointer; border:0; background-color: #fff; margin-top: -18px;padding:0;" type="button" value="중복확인" onclick="checkId()">
						<p style= "color: blue; width: auto; display: inline-block;  margin-left: 54px; "id="result" ></p>
                    </div>
                    <div class="form-group">
                        <input name="lawyerPw" class="form-control" id="account-password" type="password" placeholder="비밀번호">
                        <label class="account-password-error" for="account-password" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="account-password-confirm" type="password" placeholder="비밀번호 재확인">
                        <label class="account-password-confirm-error" for="account-confirm-password" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                </div>
                <h3 class="info">인증정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <input name="lawyerName" class="form-control" id="account-name" type="text" placeholder="이름">
                        <label class="account-name-error" for="account-name" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                    <div class="form-group">
                        <input name="lawyerOffice" class="form-control" id="account-office" type="text" placeholder="소속(사무소, 회사명)">
                        <label class="account-office-error" for="account-office" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                    <div class="form-group">
                        <input name="lawyerOfficeNum" class="form-control" id="account-office-hp" type="tel" placeholder="소속전화번호">
                        <label class="account-office-hp-error" for="account-office-hp" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                    <div class="form-group">
                        <input name="lawyerPhoneNum" class="form-control" id="account-hp" type="text" placeholder="휴대폰 번호">
                        <label class="tel-error" for="account-hp" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                    <div class="form-group">
                        <select class="form-control-button" name="lawyerGraduateTest">
						  <option value="" selected>출신시험 선택</option>
						  <option value="사법시험">사법시험</option>
						  <option value="변호사시험">변호사시험</option>
						  <option value="군법무관 임용시험">군법무관 임용시험</option>
						  <option value="고등고시">고등고시</option>
						</select>
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
                <h3 class="info">선택정보</h3>
                <div class="input-info">
                    <div class="form-group">
                        <select class="form-control-button" name="lawyerGender">
						  <option value="" selected>성별 선택</option>
						  <option value="M">남자</option>
						  <option value="W">여자</option>
						</select>
                    </div>
                    <div class="form-group">
	                      <select class="form-control-button" name="lawyerBirth" id="year">
		                      <option value="" selected>출생년도 선택</option>
	                      </select>
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
                            <input type="checkbox" id="checkList1" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                    </div>        
                    <div class="constract-text">
                        <label>
                            개인정보 취급방침 동의
                            <input type="checkbox" id="checkList2" name="chk">
                        </label>
                        <span class="span-tag">(필수)</span>
                    </div>        
                    <div class="constract-text">
                        <label>
                            개인정보 이용/수집 동의
                            <input type="checkbox" id="checkList3" name="chk">
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
                <div class="input-info">
                    <div class="description">
                        <img src="https://cdn-icons-png.flaticon.com/512/25/25607.png" class="description-img">
                        가입 신청을 하시면 변호사 자격 확인 절차가 있으며, 이후 변호사님의 경력, 자격, 주요분야 등 필수 정보가 모두 입력되어야 변호사님 프로필이 검색에 노출이 됩니다.
                    </div>
                </div>
                <div class="footer-button">
                    <button type="button" value="가입 완료" onclick="join()" class="footer-button-click">
                        가입신청
                    </button>
                </div>
            </form>
            <div class="row-footer">
                <div class="row" style="font-size: 12px;">
                <!-- 로그인 페이지 -->
                    <a href="http://localhost:9000/kovengerss/LawyerLogin.ll">로그인</a>
                    <!-- 변호사 가입안내 페이지 -->
                    <a href="">변호사 가입안내</a>
                </div>
                <div class="row">
                <!-- 회사소개  -->
                    <a style="font-size: 5px;" href="http://localhost:9000/kovengerss/compani.jsp">
                        (C) Law&Company Co., Ltd.
                    </a>
                </div>
            </div>
        </div>
    </div>
    </body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="assets/js/lawyerSignUp.js"></script>
<script>
		$(document).ready(function(){            
		    var now = new Date();
		    var year = now.getFullYear();
		    //년도 selectbox만들기               
		    for(var i = 1900 ; i <= year ; i++) {
		        $('#year').append('<option value="' + i + '">' + i + '년</option>');    
		    }
		   
		});
</script>
</html>