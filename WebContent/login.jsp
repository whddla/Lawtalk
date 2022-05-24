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
				<a class="back-click" href="">< 돌아가기</a>
			</div>
			<div sign-in-box>
				<div class="tab_menu">
					<ul class="list">
						<li class="is_on">
						    <a href="#tab1" class="btn">로그인</a>
						    <div id="tab1" class="cont">
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
                                    		로그인 상태유지
                                			</div>
                                			<a class="find-id-password" href="http://localhost:9000/lawtalk/assets/find_idpw.html">
                                    		아이디/비밀번호 찾기
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
                            			<a href="http://localhost:9000/lawtalk/assets/signup.html">회원가입</a>
                        			</div>
                        			<div class="row copyright-row">
                            			<a href="http://lawcompany.co.kr/">
                                			(C) Law&Company Co., Ltd.
                            			</a>
                        			</div>
                    			</div>
						</li>
						<li>
							<a href="#tab2" class="btn">변호사 로그인</a>
						    <div id="tab2" class="cont" style="margin-left: -240px;">
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
                                    		로그인 상태유지
                                			</div>
                                			<a class="find-id-password" href="http://localhost:9000/lawtalk/assets/find_idpw.html">
                                    		아이디/비밀번호 찾기
                                			</a>
                            		</div>
                        		</div>
                            		<div class="p-tag">
                            			<p>변호사님, 아직 가입 안하셨나요?</p>
                        			</div>
                        			<div class="lawyer-signup-info">
			                            <button type="button" class="lawyer-info-button">
			                                <span class="text">
											<a href="https://lawyer.lawtalk.co.kr/">변호사 가입안내</a>
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
<script>
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
