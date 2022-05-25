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
    <link href="assets/css/signup.css" rel="stylesheet">
    <title>회원가입 | 로노</title>
</head>
<body>
    <div class="wrap">
        <div class="signup-container">
            <div class="signup-header">
                <h3>
                    LAWTALK
                </h3>
                <span>무료회원가입</span>
            </div>
            <div class="signup-body">
                <div class="signup-body-client">
                    <div class="margin-line"></div>
                    <div class="are-you-client">
                        <h2>의뢰인</h2>
                        <span>이신가요?</span>
                    </div>
                    <div class="description">
                        로톡 이천여 명 변호사님들 중
                        <br>
                        나에게 꼭 맞는 변호사를 찾아보세요.
                    </div>
                    <button class="signup-button">
                    <!-- 의뢰인 가입 페이지 -->
                        <a href="http://localhost:9000/kovengerss/assets/client_signup.jsp">
                            의뢰인으로 가입하기 >
                        </a>
                    </button>
                </div>
                <div class="signup-body-lawyer">
                    <div class="margin-line"></div>
                    <div class="are-you-lawyer">
                        <h2>변호사</h2>
                        <span>이신가요?</span>
                    </div>
                    <div class="description">
                        로톡의 좋은 변호사가 되어
                        <br>
                        자신있는 분야의 의뢰인들을 만나보세요.
                    </div>
                    <button class="signup-button">
                    <!-- 변호사 가입 페이지  -->
                        <a href="http://localhost:9000/kovengerss/assets/lawyer_signup.jsp">
                            변호사로 가입하기 >
                        </a>
                    </button>
                </div>
            </div>
            <div class="row-footer">
                <div class="row" style="font-size: 12px;">
                <!-- 로그인 사이트 -->
                    <a href="http://localhost:9000/kovengerss/assets/client_login.jsp">로그인</a>
                    <!-- 변호사 가입안내 페이지 -->
                    <a href="https://lawyer.lawtalk.co.kr/">변호사 가입안내</a>
                </div>
                <div class="row">
                <!-- 회사 소개 -->
                    <a style="font-size: 5px;" href="http://lawcompany.co.kr/">
                        (C) Law&Company Co., Ltd.
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>