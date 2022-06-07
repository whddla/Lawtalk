	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/login.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>로그인 | 로노</title>
</head>
<body>
<div class="wrap">
	<div class="sign-wrap">
		<div class="sign-container">
			<div class="header">
				<h1>
					<a href="#" style="color: #ff4e00;">LOGIN</a>.
				</h1>
				
				<a class="back-click" href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">< 돌아가기</a>
			</div>
			<div class="sign-in-box">
				<div class="tab_menu">
					<ul class="list">
						<li class="is_on">
						    <a href="#tab1" class="btn">로그인</a>
						    <div id="tab1" class="cont">
								<div class="login-box">
                            		<form action="UserLoginOk.ul" method="post" name="userForm">
 		                           		<div class="input-id">
	                                		<input type="text" name="userId" placeholder="아이디" style="width: 100%; border: 0; padding: 10px 0;">
	                            		</div>
	                            		<div class="input-password">
	                                		<input type="password" name="userPw" placeholder="비밀번호" style="width: 100%; border: 0; padding: 10px 0">
	                            		</div>
	                            			<input type="button" id="userLogin" value="로그인"  class="submit-button" onclick =sendit();>
                            		<div class="search-id-password">
                                		<div class="login-checkbox">
                                    		<input type="checkbox" id="saveId" name="saveId" value="saveId" >
                                    			<label for="saveId">아이디 저장</label>
                                			</div>
                                			<a class="find-id-password" href="http://localhost:9000/kovengerss/find_idpw.jsp">
                                    		아이디/비밀번호 찾기
                                			</a>
                            		</div>
                            		</form>
								</div>
                            	<div class="p-tag">
                            		<p>이미 SNS계정으로 가입하셨다면</p>
                        		</div>
                        		<div class="button-kakao">
                           			<button type="button" class="button-kakao-login">
                                		<i class="kakao-icon"></i>
                                		<a i href="#0" id="kakaoLogin" style="color: black;">
	                                		<span class="text">카카오로 로그인</span>
                                		</a>
                            		</button>
                        		</div>
                        		<div class="button-facebook">
			                         <button type="button" class="button-facebook-login">
			                             <i class="facebook-icon"></i>
			                             <a href="javascript:void(0)" onclick="fnFbCustomLogin();" style="color: black;">
			                             	<span class="text">페이스북으로 로그인</span>
			                             </a>
			                          </button>
                        		</div>
                    			</div>
                        		<div class="footer">
                       	 			<div class="row sign-up-row">
                            			<a href="http://localhost:9000/kovengerss/signup.jsp">회원가입</a>
                        			</div>
                        			<div class="row copyright-row">
                            			<a href="http://localhost:9000/kovengerss/compani.jsp">
                                			(C) Law&Company Co., Ltd.
                            			</a>
                        			</div>
                    			</div>
						</li>
						<li>
							<a href="#tab2" class="btn">변호사 로그인</a>
						    <div id="tab2" class="cont" style="margin-left: -240px;">
								<div class="login-box">
                            		<form action="LawyerLoginOk.ll" method="post" name="lawyerForm">
                            			<div class="input-id">
	                                		<input type="text" name="lawyerId" placeholder="아이디" style="width: 100%; border: 0; padding: 10px 0;">
	                            		</div>
	                            		<div class="input-password">
	                                		<input type="password" name="lawyerPw" placeholder="비밀번호" style="width: 100%; border: 0; padding: 10px 0">
	                            		</div>
	                            			<input type="button" id="lawLogin"  value="로그인"  class="submit-button">
                            		<div class="search-id-password">
                                		<div class="login-checkbox">
                                    		<input type="checkbox" id="lawSaveId" name="lawSaveId" value="lawSaveId" >
                                    			<label for="lawSaveId">아이디 저장</label>
                                			</div>
                                			<a class="find-id-password" href="http://localhost:9000/kovengerss/find_idpw.jsp">
                                    		아이디/비밀번호 찾기
                                			</a>
                                			</div>
                            		</form>
                            		</div>
                            		<div class="p-tag">
                            			<p>변호사님, 아직 가입 안하셨나요?</p>
                        			</div>
                        			<div class="lawyer-signup-info">
			                            <button type="button" class="lawyer-info-button">
			                                <span class="text">
											<a href="http://localhost:9000/kovengerss/compani.jsp">변호사 가입안내</a>
			                                </span>
			                            </button>
                        			</div>
                        		</div>
						</li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
        function saveToDos(token) { //item을 localStorage에 저장합니다. 
            typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token)); 
        };

        window.Kakao.init('ce8ffd83b94def59565558100e1c525c');
        
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email, gender', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    saveToDos(response.access_token)  // 로그인 성공하면 사용자 엑세스 토큰 sessionStorage에 저장
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res)=> {
                            const kakao_account = res.kakao_account;
                            alert('로그인 성공');
                            window.location.href='/kovengerss/LawKnowMainPage.jsp'
                        }
                    });
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        };

        const login = document.querySelector('#kakaoLogin');
        login.addEventListener('click', kakaoLogin);
</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=581665816618857" nonce="SiOBIhLG"></script>
<script>

//기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
function statusChangeCallback(res){
	statusChangeCallback(response);
}

function fnFbCustomLogin(){
	FB.login(function(response) {
		if (response.status === 'connected') {
			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
				console.log(r);
			})
		} else if (response.status === 'not_authorized') {
			// 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
			alert('앱에 로그인해야 이용가능한 기능입니다.');
		} else {
			// 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
			alert('페이스북에 로그인해야 이용가능한 기능입니다.');
		}
	}, {scope: 'public_profile,email'});
}

window.fbAsyncInit = function() {
	FB.init({
		appId      : '581665816618857', // 내 앱 ID를 입력한다.
		cookie     : true,
		xfbml      : true,
		version    : 'v10.0'
	});
	FB.AppEvents.logPageView();   
};
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
window.onload = function() {
	 
    if (getCookie("id")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
        document.userForm.userId.value = getCookie("id"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
        console.log(getCookie("id"));
        document.userForm.saveId.checked = true; // 체크는 체크됨으로
    }

}

function setCookie(name, value, expiredays) //쿠키 저장함수
{
    var todayDate = new Date();
    todayDate.setDate(todayDate.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires="
            + todayDate.toGMTString() + ";"
}

function getCookie(Name) { // 쿠키 불러오는 함수
    var search = Name + "=";
    if (document.cookie.length > 0) { // if there are any cookies
        offset = document.cookie.indexOf(search);
        if (offset != -1) { // if cookie exists
            offset += search.length; // set index of beginning of value
            end = document.cookie.indexOf(";", offset); // set index of end of cookie value
            if (end == -1)
                end = document.cookie.length;
            return unescape(document.cookie.substring(offset, end));
        }
    }
}
function sendit() {
	
    if (document.userForm.saveId.checked == true) { // 아이디 저장을 체크 하였을때
        setCookie("id", document.userForm.userId.value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
    } else { // 아이디 저장을 체크 하지 않았을때
        setCookie("id", document.userForm.userId.value, 0); //날짜를 0으로 저장하여 쿠키삭제
    }

    document.userForm.submit(); //유효성 검사가 통과되면 서버로 전송.

}






	let form = document.userForm;
	
	$("input#userLogin").on("click", function(){
			console.log(form.userId);
		if(!form.userId.value){
			alert("아이디를 입력해주세요.");
			return;
		}
		if(!form.userPw.value){
			alert("패스워드를 입력해주세요.");
			return;
		}
		if(form.userId.value !=userLogin){
			alert("아이디 비밀번호를 다시 확인해주세요.");
			return;
		}
		if(form.userPw.value !=userLogin){
			alert("아이디 비밀번호를 다시 확인해주세요.");
			return;
		}
		form.submit();
	});

	let lwForm = document.lawyerForm;
	
	$("input#lawLogin").on("click", function(){
			console.log(lwForm.lawyerId);
		if(!lwForm.lawyerId.value){
			alert("아이디를 입력해주세요.");
			return;
		}
		if(!lwForm.lawyerPw.value){
			alert("패스워드를 입력해주세요.");
			return;
		}
		
		lwForm.submit();
	});

	
	
	
  const tabList = document.querySelectorAll('.tab_menu .list li');
  
  for(var i = 0; i < tabList.length; i++){
    tabList[i].querySelector('.btn').addEventListener('click', function(e){
      e.preventDefault();
      for(var j = 0; j < tabList.length; j++){
        tabList[j].classList.remove('is_on');
      }
      this.parentNode.classList.add('is_on');
    });
  }
  
</script>
</body>
</html>
