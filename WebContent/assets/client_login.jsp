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
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="../assets/css/client_login.css" rel="stylesheet">
    <title>로그인 | 로노</title>
</head>
<body>
    <div class="wrap">
        <div class="main_login">
            <div class="login_banner">
                <h1>
                <!-- 로그인 a태그 -->
                    <a style="color: #ff4e00;" href="http://localhost:9000/kovengerss/assets/client_login.jsp">
                        LOGIN.
                    </a>
                </h1>
            </div>
            <!-- 메인화면 a태그 -->
            <a class="back_click" href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">
                < 돌아가기
            </a>
            <form name="form">
                <div class="login_container">
                    <div class="login_tabs">
                        <div class="active-tab">
                            <h3 class="login-tab">로그인</h3>
                        </div>
                        <div class="active-tab">
                        <!-- 변호사 로그인 a태그  -->
                        	<a href="http://localhost:9000/kovengerss/assets/lawyer_login.jsp"></a>
                            <h3 class="login-lawyer-tab">변호사로 로그인</h3>
                        </div>
                    </div>
                    <div class="box-shadow">
                        <div class="login-box">
                            <div class="input-id">
                                <input type="text" name="id" placeholder="아이디" style="width: 100%; border: 0; padding: 10px 0;">
                            </div>
                            <div class="input-password">
                                <input type="text" name="password" placeholder="비밀번호" style="width: 100%; border: 0; padding: 10px 0">
                            </div>
                            <button type="submit" class="submit-button">로그인</button>
                            <div class="search-id-password">
                                <div class="login-checkbox">
                                    <input type="checkbox" name="login-checkbox" >
                                    <h2>로그인 상태유지</h2>
                                </div>
                                <!-- 아이디/비밀번호 찾기 a태그 -->
                                <a class="find-id-password" href="http://localhost:9000/kovengerss/assets/find_idpw.jsp">
                                    <h2>아이디/비밀번호 찾기</h2>
                                </a>
                            </div>
                        </div>
                        <div class="p-tag">
                            <p>이미 SNS계정으로 가입하셨다면</p>
                        </div>
                        <div class="button-kakao">
                            <button type="button" class="button-kakao-login">
                                <i class="kakao-icon"></i>
                                <span class="text">카카오로 로그인</span>
                            </button>
                        </div>
                        <div class="button-facebook">
                            <button type="button" class="button-facebook-login">
                                <i class="facebook-icon"></i>
                                <span class="text">페이스북으로 로그인</span>
                            </button>
                        </div>
                    </div>
                    <div class="footer">
                        <div class="row sign-up-row">
                        <!-- 회원가입 a태그 -->
                            <a href="http://localhost:9000/kovengerss/assets/signup.jsp">회원가입</a>
                        </div>
                        <div class="row copyright-row">
                        <!-- 회사소개 a태그 -->
                            <a href="http://lawcompany.co.kr/">
                                (C) Law&Company Co., Ltd.
                            </a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>