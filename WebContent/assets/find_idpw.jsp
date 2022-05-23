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
    <link href="../assets/css/find_idpw.css" rel="stylesheet">
    <title>아이디/비밀번호 찾기 | 로노</title>
</head>
<body>
    <div class="background-wrap">
        <div class="find-idpw-container">
            <div class="header background-lawyer">
                <div class="lawtalk">
                    <h2>Lawknow</h2>
                </div>
                <div class="goodlawyers">
                    <b>Good Lawyers</b>
                </div>
                <div class="find-idpw-font">
                    <span class="find-idpw-font-span">
                        아이디/비밀번호 찾기
                    </span>
                </div>
            </div>
            <div class="find-idpw">
                <h3 class="info">아이디 찾기</h3>
                <div class="input-info">
                    <div class="description">
                        가입 시 등록하신 아이디와 이메일을 입력하세요.
                        <br>
                        이메일로 아이디를 알려드립니다.
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="account-email" type="email" placeholder="예) name@example.com">
                        <label class="account-email-error" for="account-email" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;">이메일</label>
                    </div>
                </div>
                <div class="input-info-footer">
                    <button type="submit" class="email-footer-button">[ 이메일 받기 ]</button>
                </div>
            </div>
                <h3 class="info">비밀번호 찾기</h3>
                <div class="input-info">
                    <div class="description">
                        가입 시 등록하신 아이디와 이메일을 입력하세요.
                        <br>
                        비밀번호 재설정 이메일을 보내드립니다.
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="account-id" type="text" placeholder="아이디">
                        <label class="account-id-error" for="account-id" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;"></label>
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="account-email" type="email" placeholder="예) name@example.com">
                        <label class="account-email-error" for="account-email" style="font-size: 14px; font-weight: 400; line-height: 20px; top: -20px; width: 100%; position: absolute; margin: 0; left:0;  color: #757575;">이메일</label>
                    </div>
                </div>
                <div class="input-info-footer">
                    <button type="submit" class="email-footer-button">[ 이메일 받기 ]</button>
                </div>
            <div class="row-footer">
                <div class="row">
                <!--회사소개  -->
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

     let emailCheck = $(".account-email-error");
	let $email = $("#account-email");
	
	
	$email.on("keyup", function(){
		if($email.val() == ""){
			emailCheck.css("color","red");
			emailCheck.text("이메일은 반드시 입력해야합니다.");
		}
		
		if($email.val() !== ""){
			emailCheck.css("color","rgb(99 193 76)");
			emailCheck.text("이메일 입력완료.");
		}
	});
	
	
    let idCheck = $(".account-id-error");
	let $id = $("#account-id");
	
	
	$id.on("keyup", function(){
		
		if($id.val() == ""){
			idCheck.css("color","red");
			idCheck.text("아이디는 반드시 입력해야합니다.");
		}
		
		if($id.val() !== ""){
			idCheck.css("color","rgb(99 193 76)");
			idCheck.text("아이디 입력완료.");
		}
	});
</script>
</html>