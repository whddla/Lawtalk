<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/answer_page_each.css">

<title>로노 | 답변</title>
 <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<body>


<!-- // -->

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
                        <a href="http://localhost:9000/kovengerss/compani.jsp" class ="bottom-inner">
                        	회사소개
                        </a>
                        <i ng-if="noticeNew > 0" class="new-up">&nbsp;N</i>
                        <br>
                        <a class ="bottom-inner">
                            자주 묻는 질문
                        </a>
                        <br>
                        <a href="http://localhost:9000/kovengerss/이용약관.jsp" class ="bottom-inner">
                            이용약관
                        </a>
                        <br>
                        <a href="http://localhost:9000/kovengerss/법적책임.jsp" class ="bottom-inner">
                            법적책임
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
			<div class = "logo-law" >
			<a href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp" style="color: #FF6431">
				<strong>LAWKNOW</strong>
			</a>
            </div> 
		</div>
		<div class="page-container">
			<header class="header-default">
				<div class="banner">
					<div class="container">
						<div class="image-wrap">
							<img class="category-image" src="${pageContext.request.contextPath}/assets/img/이혼.jpg">
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
						<!-- 로노 메인페이지 a태그 -->
							<a style="text-decoration: none; color: #333; font-weight: 1000" href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">
								<span>홈</span>
							</a>
							<hr>
							<li>
																<!-- 사이드 리스트 a 태그 -->
								<a class="choice" href="http://localhost:9000/kovengerss/client_request_waiting.jsp">이혼</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category2.jsp">상속</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category3.jsp">성범죄</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category4.jsp">건설/부동산</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category5.jsp">재산범죄</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category6.jsp">기업일반</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category7.jsp">형사기타</a>
							</li>
						</ul>
					</div>
				</aside>
				
			<c:set var="userWrite" value="${userWrite}"/>
				
				<main class="main-wrap">
					<div class="question-wrap">
						<div class="question-detail">
							<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
											<img style="width: 21px;" src="${pageContext.request.contextPath}/assets/img/물음표.png">
											<p class="number">${userWrite.getUserWriteNum()}번 글</p>
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header">
										<h1 class="a-card-header-title">
											<img class="question-img" src="${pageContext.request.contextPath}/assets/img/questionpng.png">
											${userWrite.getTitle()}
										</h1>
										<span class="a-card-headerInfo">${userWrite.getWriteDate()}</span>
									</header>
									<div class="a-card-content">
												${userWrite.getContent()}
										</div>
										<div class="a-card-footer">
											<span class="viewCount">
											조회수
												<i class="number">${userWrite.getReadCount()}</i>
											</span>
										</div>
								</div>
							</div>
							<div class="question-detail">
									
									
			<!-- 					<form action="LawyerCommentOk.lcc" name="commentForm" method="post">	
								<div class="board">
									<div class="board-header">
										<h4>당신의 지식을 공유해주세요!</h4>
										<hr>
								</div>
											<div class="textarea">
												<textarea name="content" id ="content" placeholder="의뢰인에게 답변을 작성해주세요."></textarea>
											</div>
										</div>
									
									
										<button class="answer-button" id="click">답변등록</button>
								</form>			 -->					
								
							<h4 class="section-title">LawKnow 변호사님들의 답변</h4>
							
								<div class="a-card-question-list">  							<!-- 여기 부터 form;; -->
									<aside class="a-card-aside-card">
										<div class="a-wrapper">
											<div class="badge">
												<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
												<p class="number">231</p>
											</div>
										</div>
									</aside>
									<div class="a-card-main">
										<header class="a-card-header">
											<a href="">
												<h1 class="a-card-header-title">
													김지진 변호사 
												</h1>
												<span class="a-card-headerInfo">2022. 05. 06. 21:05</span>
											</a>
										</header>
										<div class="a-card-content" id="testt">
										안녕하세요, 지식인 답변 [우주신] 로시오피스 최우수협력 LAWFIRM 법무법인 리버티 대표변호사 이혼 및 형사전문변호사 김지진 입니다.
										우선적으로 위 사안과 관련된 핵심결론부터 말씀드리면,
										1) 상대방이 협의한 바를 이행하지 않는다면 집행권원을 만들어 상대방 재산 압류 등 강제집행하여 해당 금원을 추심하는 방법을
										고려해볼 수 있습니다.
										2) 집행권원을 만들기 위해서는 남편을 상대로 소송을 제기하거나, 공증을 받는 방법이 있습니다.
										3) 다만 남편이 공증절차에 협조하지 않는다면 변호사 선임을 통한 절차 진행을 적극 고려해보시기 바랍니다.
										
										이혼에는 협의이혼과 재판상 이혼(조정이혼, 이혼소송)이 있습니다.p
										협의이혼의 경우, 미성년 자녀의 양육권과 친권, 양육비 및 면접교섭에 관한 사항을 정하게 됩니다.
										만약 이에 대하여 배우자와 협의가 이루어지지 않는 경우에는 재판상 이혼으로 진행해야 합니다.
										재판상 이혼의 경우, 양육에 관한 사항 외에 위자료와 재산분할에 대해서도 당사자간 분쟁을 정확하고 신속하게
										해결할 수 있다는 장점이 있습니다.
										또한 이혼소송에서 승소하기 위해서는 민법 제840조에서 정한 재판상 이혼원인이 있음을 주장 및 입증해야 합니다.
										재판상 이혼을 나홀로 진행하기에는 어려운 점이 많습니다. 따라서 이혼을 쉽게 진행하기 위해서는 이혼전문변호사를
										선임하거나 최소한 사건 검토를 받아보시는 것이 좋습니다.
										</div>
										<div class="a-card-footer">
											<span class="viewCount">
											조회수
												<i class="number">12</i>
											</span>
											<span class="answer">2시간전 답변 작성됨</span>
										</div>
									</div>
								</div>
								
  <c:set var="centent" value="${content}"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script>
         	let contextPath = "${pageContext.request.contextPath}";
         	let boardNumber = "${userWrite.getUserWriteNum()}"; // 그럼 밑에있는 js에서 저 변수를 쓸 수 있다.
         	let lawyerNum = "${lawyerNum}";
         </script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/reply.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/KOVENGERSreply.js"></script>
</body>
</html>
