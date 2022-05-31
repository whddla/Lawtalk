<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/client_request_waiting.css">
<title>로노 | 상담 목록</title>
</head>
<body>
<div class="top-header">
		<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" id="slidebutton">
        	<i class="material-icons" id="thbutton">menu</i>
        </button>
		<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
	        <div class="offcanvas-header">
		        <h5 class="offcanvas-title" id="offcanvasExampleLabel">
		        	<div class = "rowtalklogo">
		        		<strong>lawknow</strong>
		         	</div>  
		         </h5>
	         <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	         </div>
	         	<div class="offcanvas-body sidebodyGW">
	            	<div>
	                	<div class="menu-item quick-menu">
	                    	<div class="one">
	                        	<span>LAW<br>지식인</span>
							</div>
	                        <div class="one">
	                        	<span>1:1<br>바로상담</span>
							</div>
	                        <div class="one">
	                        	<span>오늘의<br>질문들</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="secondpart">
	                	<div class="fourbox">
	                		<a class="findlower">LAW 지식 IN</a>
	                   	</div>
	                    <div class="fourbox">
	                    	<a class="findlower">변호사찾기</a>
	                    </div>
	                    <div class="fourbox">
	                    	<a class="findlower">해결사례</a>
	                    </div>
	                    <div class="fourbox">
	                    	<a class="findlower">상담사례</a>
	                    </div>
	                 </div>
	                 <div class="writeglesigi">
	                    <img src="assets/img/연필.jpg" style="width: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;>       
	                 </div>
	                    <div class = "menu-items-bottom">
                        <a class ="bottom-inner">
                            공지사항
                        </a>
                        <i ng-if="noticeNew > 0" class="new-up">&nbsp;N</i>
                        <br>
                        <a class ="bottom-inner">
                            회사소개
                        </a>
                        <br>
                        <a class ="bottom-inner">
                            자주 묻는 질문
                        </a>
                        <br>
                        <a class ="bottom-inner">
                            이용약관
                        </a>
                        <br>
                    </div>
                    
                    <div class="realbottomSlide">
                        <div class="slideLogin">
                            <label>
                            <i class="material-icons slideicon" >person_add</i>
                            <br>
                           <a href="http://localhost:9000/kovengerss/signup.jsp">회원가입</a>
                        </label>
                        </div>
                        <div class="slideLogin">
                            <label>
                            <i class="material-icons slideicon" style="left: 11px;">contacts</i>
                            <br>
                            <a href="http://localhost:9000/kovengerss/login.jsp">로그인</a>
                        </label>
                        </div>
                    </div>
	           	</div>
		</div>			
			<div class = "logo-law">
				<a style="color:#FF6431"href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">
					<strong>LAWKNOW</strong>
				</a>
            </div> 
		</div>
		<div class="page-container">
			<header class="header-default">
				<div class="banner">
					<div class="container">
						<div class="image-wrap">
							<img class="category-image" src="assets/img/재산범죄.jpg">
						</div>
						<div class="title-wrap">
							<div class="title">
								<div class="top-span">
									<span>재산범죄</span>
								</div>
								<div class="bottom-span">
									<small>현직 변호사가 답합니다.</small>
								</div>							
							</div>
						</div>
					</div>
				</div>
			</header>
		<section class="bottom-container">
				<aside class="side-bar">
					<div class="sidebar-desktop">
						<ul class="side-category">
						<!-- 메인페이지  a태그 -->
							<a style="text-decoration: none; color: #333; font-weight: 1000" href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">
								<span>홈</span>
							</a>
							<hr>
							<li>
								<!-- 상담목록 사이드리스트 -->
								<a class="" href="http://localhost:9000/kovengerss/client_request_waiting.jsp">이혼</a>
							</li>
							<li>
								<a class="" href="http://localhost:9000/kovengerss/category2.jsp">상속</a>
							</li>
							<li>
								<a class="" href="http://localhost:9000/kovengerss/category3.jsp">성범죄</a>
							</li>
							<li>
								<a class="" href="http://localhost:9000/kovengerss/category4.jsp">건설/부동산</a>
							</li>
							<li>
								<a class="choice" href="http://localhost:9000/kovengerss/category5.jsp">재산범죄</a>
							</li>
							<li>
								<a class="" href="http://localhost:9000/kovengerss/category6.jsp">기업일반</a>
							</li>
							<li>
								<a class="" href="http://localhost:9000/kovengerss/category7.jsp">형사기타</a>
							</li>
						</ul>
					</div>
				</aside>
				<main class="main-wrap">
					<div class="question-wrap">
						<div class="question-header">
							<div class="tab_box">
								<button class="tabs active" onclick ="tabOpen(event, 'answer-complete');" id="basic_content">
										<span class="bullet">답변완료</span>
								</button>
								<button class="tabs" onclick="tabOpen(event, 'answer-waiting');" >
										<span class="bullet">답변대기</span>
								</button>
							</div>
							<div class="sorting">
								<div class="sort-tabs">
									<button class="-acrive">인기순</button>
									|
									<button>최신순</button>
								</div>
							</div>
						</div>
							<div class="content" id="answer-complete" style =" display: block;">
								질문을 등록해주세요.
						</div>
						<div class="content" id ="answer-waiting" style ="display: none;">
								질문을 등록해주세요.
						</div>
					</div>
				</div>
			</main>
		</section>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<script >
	function tabOpen(evt, contentName){
			var i, tabcontent, tab_btn;
			
			tabcontent = document.getElementsByClassName("content");
			for(i = 0; i<tabcontent.length; i++){ //내용을 나열
				tabcontent[i].style.display = "none";
			}
			
			tab_btn = document.getElementsByClassName("tabs");
			for(i = 0; i<tab_btn.length; i++){ // 탭 버튼 나열
				
				//탭 버튼을 눌렀을 때 기존 탭 class 삭제
				tab_btn[i].className = tab_btn[i].className.replace(" active",""); 
				
				
			}
				//탭을 눌렀을 때 해당 id의 내용을 출력
				document.getElementById(contentName).style.display = "block";
				//class 생성 이벤트 발생
				evt.currentTarget.className += " active"; 
		}
</script>
</html>
