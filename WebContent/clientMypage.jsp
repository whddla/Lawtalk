<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets\css\lawlayorMypage.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Batang&family=Jua&family=Nanum+Gothic&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class ="logo-header-layout">
	<div class="logo-header">
		<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" id="slidebutton" style="margin-right:109px">
                    <i class="material-icons" id="thbutton" style="font-size: 45px;">menu</i>
                  </button>
                  
                  <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                    <div class="offcanvas-header">
                      <h5 class="offcanvas-title" id="offcanvasExampleLabel">
                            <strong>lawknow</strong>
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
                    <img src="assets/img/연필1.jpg" style="width: 22px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;       
                    </div>
                    <div class = "menu-items-bottom">
                        <a class ="bottom-inner">
                           <strong>공지사항</strong>
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
                  
                  
                  <div class="logo-title">
                  		<a style="cursor: poniner; color:#ff6d37; font-size:40px; text-transform: uppercase;" class="logo-title-font"><strong>lawknow</strong></a>
               	</div>			
				<div class="title-layout">
					<a href="privacy.jsp" class="privacy-img">
					개인정보 수정
					<img src="assets/img/톱니바퀴.png"class="privacy-img-size">
					</a>
					<a href="">로그아웃</a>
					</div>	
        </div>
      </div>  
      
      <!-- 마이페이지 구간  -->
      <div class ="mypage-body-layout">
      	<div class ="mypage-body-title-layout">
 			<div class="mypage-body-menu-layout">
 				<h2>마이페이지</h2>
 				<div class="mypage-menu-layout mypage-menu-layout2">
					<a class="mypage-menu">
						<strong style="color : black;">이름</strong>
						<span style="color : black; font-size: 22px;"><c:out value ="${userName}"/></span>
					</a>
					<a class="mypage-menu">
					<strong style="color : black;">아이디</strong>
						<span style="color : black; font-size: 20px;"><c:out value ="${userId}"/></span>
					</a>
					<a  class="mypage-menu">
					<strong  style="color : black;">전화 번호</strong>
						<span style="color : black; font-size: 22px;"><c:out value ="${userPhoneNum}"/></span>
					</a>	
				</div>
 			</div>
 			<!-- 두번째 박스 -->
				<div class="mypage-list-layout">
					<!-- 내 진행 목록 -->
					<div class="mypage-list-tag">
						<div class="mypage-list-title">내 상담 내역</div>
							<a class="mypage-list-row" style=" display: flex; justify-content: space-between; text-decoration: none;">
								<div class= "mypage-list-font1" style="padding-top:20px;">글 작성 목록</div>
								<div class= "mypage-list-font2" style="padding-top: 15px;"></div>
							</a>
					</div>
				</div>
      	</div>
      </div>
      
        <footer class="lt-footer">
           
                <div class ="firstbox">
                    <div class = "rowtalklogo" style="POSITION: RELATIVE;TOP: 48PX; text-align: center;">
                        <strong>lawknow</strong>
                    </div>  
                    
                </div>
                <div class ="secondbox">
                    <!-- <div class="secondfootertitle">
                        LAWKNOW이용하기
                    </div> -->
                    </h4>
                    <ul class="footer__menu">
                        <li class="lists">
                            <a href="" class="footera" style="padding:0; font-size: .875rem; margin: 0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> LAWKNOW 지식인
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" style="padding:0; font-size: .875rem; margin: 0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> LAWKNOW 1:1 상담
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" style="padding:0; font-size: .875rem; margin: 0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> 상담사례
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" style="padding:0; font-size: .875rem; margin: 0;">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> 해결사례
                            </a>
                        </li>
                    </ul>
                    <div class = "informationfooter">
                        <div class="mypagebox">
                            <div class = "mypageboxtitle">
                                <a href="" style="margin:0;  width: 100%; margin-bottom: 12px; margin-top: 19px; font-size: 13px; height: 20px; line-height: 15px; font-weight: 900; color: black; text-decoration: none;">마이페이지</a>
                            </div>
                            <div class="mypageboxex">
                                <a href="" style="margin:0;  width: 100%; margin-bottom: 12px; margin-top: 19px; font-size: .75rem; height: 20px; line-height: 15px;  color: black; text-decoration: none;">내 상담 내역</a>
                            </div>
                            <div class="mypageboxex">
                               <a href="" style="margin:0;  width: 100%; margin-bottom: 12px; margin-top: 19px; font-size: .75rem; height: 20px; line-height: 15px;  color: black; text-decoration: none;"> 회원 정보 수정</a>
                            </div>
                        </div>
                        <div class="mypagebox mypageboxtwo">
                            <div class = "mypageboxtitle">
                                고객센터
                            </div>
                            <div class="mypageboxex">
                        		<a href="" style="margin:0;  width: 100%; margin-bottom: 12px; margin-top: 19px; font-size: .75rem; height: 20px; line-height: 15px;  color: black; text-decoration: none;">자주 묻는 질문</a>
                            </div>
                            <div class="mypageboxex">
                       			 <a href="" style="margin:0;  width: 100%;  margin-top: 19px; font-size: .75rem; line-height: 15px;  color: black; text-decoration: none;">회사소개</a>
                            </div>
                            <div class="mypageboxex">
				 				<a href="" style="margin:0;   width: 100%;  margin-top: 19px; font-size: .75rem; line-height: 15px;  color: black; text-decoration: none;">이용약관</a> <!--이용약관 링크 -->
                            </div>
                            <div class="mypageboxex">
				 				<a href=""  style="margin:0;  width: 100%; margin-top: 19px; font-size: .75rem; line-height: 15px;  color: black; text-decoration: none;">법적책임</a> <!--이용약관 링크 -->
                            </div>
                        </div>
                    </div>
                </div>    
       </footer>
       <footer class="lt-footer lastfooter" style="margin-top: 33px;">
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
      
      
      
      
      
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script>
var menuBtn = document.querySelector('.menu-btn');
var nav = document.querySelector('nav');
var lineOne = document.querySelector('nav .menu-btn .line--1');
var lineTwo = document.querySelector('nav .menu-btn .line--2');
var lineThree = document.querySelector('nav .menu-btn .line--3');
var link = document.querySelector('nav .nav-links');

	menuBtn.addEventListener('click', () => {
    nav.classList.toggle('nav-open');
    lineOne.classList.toggle('line-cross');
    lineTwo.classList.toggle('line-fade-out');
    lineThree.classList.toggle('line-cross');
    link.classList.toggle('fade-in');
});
</script>
</html>