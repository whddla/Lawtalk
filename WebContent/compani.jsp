<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href= "assets\css\compani.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Batang&family=Jua&family=Nanum+Gothic&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<section class="about-lawknow">
    <header class="menu" >
      <nav class="clearfix">
        <ul class="clearfix">
          <li><a href="LawKnowMainPage.jsp" style="color:#ff6d37;">LAWKNOW</a></li> <!--""<-여기 부분에 URL 작성하면 됨-->
          <li><a href="service.jsp">지식인</a></li>
          <li><a href="LawKnowMainPage.jsp">1:1바로상담</a></li>
          <li><a href="service.jsp">분야 별 글 목록</a></li>
      </ul>
    </nav>
    </header>
    <div class="section-layout-text">
    	<section class="section-first-layout">
    		<h1 class="section-first-title">전문 지식을 묻고 답해보세요.</h1>
    		<p class="intro-text-layout">
      		<strong>로노(LAWKNOW)</strong>는 궁금한 점을 질문하면 검증된 전문가의 답변을 받을 수 있는 전문지식 Q&amp;A서비스입니다<br>
      		변호사인 전문 답변자에게 언제든지 질문해보세요!<br>
      		<strong>로노(LAWKNOW)</strong>는 마음에 답변을 듣고 1:1 상담도 받아보세요!
      </p>
      <a class="button-border button-layout" href="write.jsp">상담 글 등록</a><!-- 글작성하는곳 링크  -->
      <br>
      <img src="assets\img\질문 이미지.png" class="question-img">
    	</section>
    	<section class="section-second-layout">
    		<h1 class="section-second-title">로노는 어떻게 사용하나요?</h1>
    		<div class="section-second-how container">
	    			<div class="section-second-how-menu">
	    				<div class="second-how-menu-layout">
	    					<div class="second-how-menu-card">
		    					<h2 class="second-how-title">질문</h2>
		    					<img src="https://static.a-ha.io/images/extras/about-aha/2-1.png">
		    					<p>의뢰인은 궁금한 점을 <br>이하에 질문합니다</p>
	    					</div>
	    				</div>
	    				<div class="second-how-menu-layout">
	    					<div class="second-how-menu-card">
		    					<h2 class="second-how-title">전문가의 답변</h2>
		    					<img src="	https://static.a-ha.io/images/extras/about-aha/2-2.png">
		    					<p>사전에 인증된 전문분야의<br>답변자들이 질문에 답변합니다.</p>
	    					</div>
	    				</div>
	    				<div class="second-how-menu-layout">
	    					<div class="second-how-menu-card">
		    					<h2 class="second-how-title">1:1채팅방</h2>
		    					<img src="assets/img/채팅아이콘.png" style="width: 54%;">
		    					<p>1:1채팅 신청시 카톡으로<br>보다 자세한 상담이 가능합니다.</p>
	    					</div>
	    				</div>
	    				<div class="second-how-menu-layout">
	    					<div class="second-how-menu-card">
		    					<h2 class="second-how-title">큐레이션</h2>
		    					<img src="https://static.a-ha.io/images/extras/about-aha/2-3.png">
		    					<p>채택, 공감, 비공감, 신고 등을 통해 <br>질문과 답변을 검증(큐레이션)합니다.</p>
	    					</div>
	    				</div>
	    			</div>
    		</div>
    	</section>
    	<section class="section-last">
    		<div class="section-last-layout">
    			<div class="last-menu-layout">
    				<div class="last-menu">
    					<h3>변호사의 답변이 궁금하세요?<br>마음껏 질문해보세요!</h3>
    					<a class="last-button-border" href="write.jsp">글 작성하러 가기</a><!-- 글작성하는곳 링크  -->
    				</div>
    				<div class="last-menu1">
    					<h3>변호사로 활동을 원하신다면<br>마음껏 답변해보세요!</h3>
    					<a class="last-button-border" href="assets\answer_page.jsp">답변하러 가기</a><!-- 글작성하는곳 링크  -->
    				</div>
    				
    			</div>
    		</div>
    	</section>
    </div>
</section>

       <footer class="lt-footer">
           
                <div class ="firstbox">
                    <div class = "rowtalklogo" style="POSITION: RELATIVE;TOP: 48PX; text-align: center;">
                        <strong>lawknow</strong>
                    </div>  
                    
                </div>
                <div class ="secondbox">
                    <ul class="footer__menu">
                        <li class="lists">
                            <a href="information.jsp" class="footera" style="padding-left: 36px;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> LAWKNOW 지식인
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" style="padding:0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> LAWKNOW 1:1 상담
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" style="padding:0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> 상담사례
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" style="padding:0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> 해결사례
                            </a>
                        </li>
                    </ul>
                    <div class = "informationfooter">
                        <div class="mypagebox">
                            <div class = "mypageboxtitle">
                                <a href="mypage.jsp" style="color:black;">마이페이지</a>
                            </div>
                            <div class="mypageboxex">
                                <a href="mycounsel.jsp"  style="color:black;">내 상담 내역</a>
                            </div>
                            <div class="mypageboxex">
                               <a href="privacyPage.jsp"  style="color:black;"> 회원 정보 수정</a>
                            </div>
                        </div>
                        <div class="mypagebox mypageboxtwo">
                            <div class = "mypageboxtitle">
                                <a href=""  style="color:black;">고객센터</a>
                            </div>
                            <div class="mypageboxex">
                        		<a href="questionUser.jsp"  style="color:black;">자주 묻는 질문</a>
                            </div>
                            <div class="mypageboxex">
                       			 <a href="compani.jsp"  style="color:black;">회사소개</a>
                            </div>
                            <div class="mypageboxex">
				 				<a href="이용약관.jsp"  style="color:black;">이용약관</a> <!--이용약관 링크 -->
                            </div>
                            <div class="mypageboxex">
				 				<a href="법적책임.jsp"  style="color:black;">법적책임</a> 
                            </div>
                        </div>
                    </div>
                </div>    
       </footer>
       <footer class="lt-footer lastfooter" style="margin-top:33px">
           <div>
           <span class="smallcharacter">
            주)LAWKNOW컴퍼니 서울시 서초구 서초중앙로 22길 17, 4층 사업자번호 : 223-51-44728 통신판매번호 : 2016-서울서초-0227<br>
            대표자명 :한동석 대표번호 : 02-0000-0000 이메일 : cs@LAWKNOW.co.kr<br><br>
            (주)LAWKNOW컴퍼니는 대한민국 법률시장의 정보비대칭과 불법 법조브로커를 해소하여 투명하고 공정한 법률시장을 만들기 위해 LAWKNOW지식인 서비스를 제공하고 있습니다.<br>
            LAWKNOW은 의뢰인회원의 법률상담 내용 및 상담 여부, 법률사건 내용 및 수임 여부, 변호사회원의 선택 등에 대해 일절 관여하지 않아 변호사법 및 기타 관련규정을 준수하고 있으며,
              변호사회원이 의뢰인회원에게 제공하는 서비스의 내용과 질에 대해 어떠한 법적책임도 부담하지 않습니다.
              또한 회원간의 예약 및 결제정보의 중개서비스 또는 통신판매중개 시스템을 제공할 뿐, 통신판매의 당사자가 아닙니다. 모든 법률상담은 각 변호사회원이 직접 수행하며, 모든 변호사회원은 각 소속 법률사무소, 로펌에서 독립적으로 법률업무를 수행합니다. 그리고 로톡에 가입한 변호사들 상호간에는 어떠한 조직적인 관계가 없음을 밝힙니다. 로톡에 표시된 변호사회원의 정보는 해당 변호사가 직접 제공한 것이며 무단으로 복제, 편집, 전시, 전송, 배포, 판매, 방송, 공연 등에 이용할 수 없습니다.
           </span>
        </div>
        </footer>

</body>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
</html>