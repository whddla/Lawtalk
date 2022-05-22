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
<link rel="stylesheet" href="../assets/css/client_request_waiting.css">
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
	                    <img src="../assets/css/img/연필.jpg" style="width: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;>       
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
                           <a href="">회원가입</a>
                        </label>
                        </div>
                        <div class="slideLogin">
                            <label>
                            <i class="material-icons slideicon" style="left: 11px;">contacts</i>
                            <br>
                            <a href="">로그인</a>
                        </label>
                        </div>
                    </div>
	           	</div>
		</div>			
			<div class = "logo-law">
				<strong>LAWKNOW</strong>
            </div> 
		</div>
		<div class="page-container">
			<header class="header-default">
				<div class="banner">
					<div class="container">
						<div class="image-wrap">
							<img class="category-image" src="../assets/css/img/이혼사진.png">
						</div>
						<div class="title-wrap">
							<div class="title">
								<div class="top-span">
									<span>이혼</span>
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
							<a style="text-decoration: none; color: #333; font-weight: 1000" href="https://www.lawtalk.co.kr/?utm_source=Google_SA&utm_medium=lawtalk_ad&utm_campaign=PC_%ED%99%95%EC%9E%A5%EA%B2%80%EC%83%89_%EB%B8%8C%EB%9E%9C%EB%93%9C&utm_term=%EB%A1%9C%ED%86%A1&utm_content=%EB%B8%8C%EB%9E%9C%EB%93%9C&gclid=Cj0KCQjw-JyUBhCuARIsANUqQ_KdQgwt4L3n9CX1YKpkYJDqreLer1dW2_feYvTXM-whJpRAgEYjZG8aAn89EALw_wcB">
								<span>홈</span>
							</a>
							<hr>
							<li>
								<a class="choice" href="">이혼</a>
							</li>
							<li>
								<a href="">상속</a>
							</li>
							<li>
								<a href="">성범죄</a>
							</li>
							<li>
								<a href="">건설/부동산</a>
							</li>
							<li>
								<a href="">재산범죄</a>
							</li>
							<li>
								<a href="">기업일반</a>
							</li>
							<li>
								<a href="">형사</a>
							</li>
						</ul>
					</div>
				</aside>
				<main class="main-wrap">
					<div class="question-wrap">
						<div class="question-header">
							<div class="tabs">
								<button class="">
									<a style="text-decoration: none; color: #333" href="http://localhost:9000/kovengerss/assets/client_request.jsp">
										<span class="bullet">답변완료</span>
									</a>
								</button>
								<button class="-active">
									<a style="text-decoration: none; color: #333" href="http://localhost:9000/kovengerss/assets/client_request_waiting.jsp">
										<span class="bullet">답변대기</span>
									</a>
								</button>
								<hr style="height: 2px; opacity: unset;"class="tabs_activeIndicator finalized">
							</div>
							<div class="sorting">
								<div class="sort-tabs">
									<button class="-acrive">인기순</button>
									|
									<button>최신순</button>
								</div>
							</div>
						</div>
						<div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">12</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="http://localhost:9000/kovengerss/assets/answer_page.jsp">
											<h1 class="a-card-header-title">
												전남편이 돈을 주지 않고 있습니다. 빨리받는 방법이 있나요? 
											</h1>
											<span class="a-card-headerInfo">2022. 05. 06. 21:05</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">231</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">21</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												[재산 분할] 3년/자녀없음/경제수준9:1/아파트시세차익
											</h1>
											<span class="a-card-headerInfo">2022. 04. 06. 09:05</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">180</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">10</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												유책배우자 이혼소송 기각 후 아이를 약취해가 보여주지 않고 있습니다
											</h1>
											<span class="a-card-headerInfo">2022. 05. 12. 16:04</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">102</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">21</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												협의 이혼 후 재산분할 청구가 들어왔습니다.
											</h1>
											<span class="a-card-headerInfo">2022. 05. 06. 21:05</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">221</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">2</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												이혼소송중 재산분할에 대하여.
											</h1>
											<span class="a-card-headerInfo">2022. 05. 22. 21:05</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">9</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">20</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												양육비소송중 면접교섭이행
											</h1>
											<span class="a-card-headerInfo">2022. 03. 20. 17:45</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">33</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">120</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												치매환자 어머니 폭행으로 경찰조사
											</h1>
											<span class="a-card-headerInfo">2022. 02. 16. 00:05</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">251</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">12</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												폭력적인 아버지와 이혼, 따라올 가난 괜찮을까요? 
											</h1>
											<span class="a-card-headerInfo">2022. 01. 30. 13:55</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">40</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">49</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												불법도박으로 협의이혼예정인데 양육비를 받으면 아이를 꼭 보여줘야 하는 건가요 ? 
											</h1>
											<span class="a-card-headerInfo">2022. 05. 12. 02:02</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">274</i>
										</span>
									</div>
								</div>
							</div>
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
											<p class="number">56</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<a href="">
											<h1 class="a-card-header-title">
												아내가 바람핌. 상간남 회사게시판에 글 게시가 법에 위반될까요?
											</h1>
											<span class="a-card-headerInfo">2022. 05. 08. 11:05</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										조회수
											<i class="number">560</i>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</main>
		</section>
		</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>
