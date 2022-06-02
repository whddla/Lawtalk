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
