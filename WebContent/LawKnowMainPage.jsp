<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%  // 인증된 세션이 없는경우, 해당페이지를 볼 수 없게 함.
	    if (session.getAttribute("userId")== null) {
	        response.sendRedirect("UserMain.ul");
	    }
    	
	%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/mainstyle.css">
    <title>LawKnowMainpage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.one a{
	color:black;
	text-decoration: none;
}
.joinform{
    margin: 19px auto 0;
    width: 530px;
    position: relative;
    top: -63px;
    left: -6px;
}
.dotbogibox{
display: flex;
position: relative;
left: -100px;
}
div.btns{
	bottom: 4px;
}

.btn{
    outline: none;
}
.btn{
    outline: none;
    width: 14px;
    border-radius: 55%;
    background: #00000078;
    height: 12px;
    padding :0;
        margin: 0 10px;
    }
.btn i{
	   font-size: 13px;
	   color :#00000061
}
.counsel-banner-section{
	width :1878px
}
.menu-active {
    background: orange;
}
.menu-ractive{
	background: #00000078;
}
#leftBannerGo{
	text-decoration :none;
	color:black;
}
</style>
</head>
<body>
    <div class="top">
        <div class = "mainmenu">
            <div class = "threeflex">
                <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" id="slidebutton" style="position: relative;left: -11px;">
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
                                <a href="service.jsp"><span>LAW<br>지식인</span></a>
                            </div>
                            <div class="one">
                                <a href="information.jsp"><span>1:1<br>바로상담</span></a>
                            </div>
                            <div class="one">
                                <a href="service.jsp"><span>오늘의<br>질문들</span></a>
                            </div>
                        </div>
                      </div>
            
                      <div class="secondpart">
                        <div class="fourbox">
                            <a class="findlower" href="service.jsp">LAW 지식 IN</a>
                        </div>
                        <div class="fourbox">
                            <a class="findlower" href="list.jsp">변호사찾기</a>
                        </div>
                        <div class="fourbox">
                            <a class="findlower"href="assets/answer_page.jsp">해결사례</a>
                        </div>
                        <div class="fourbox">
                            <a class="findlower" href="assets/answer_page.jsp">상담사례</a>
                        </div>
                    </div>
                    <div class="writeglesigi">
                    <a href ="UserWrite.uw" id ="leftBannerGo"><img src="assets/img/연필.jpg" style="width: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;></a>       
                    </div>





                    <div class = "menu-items-bottom">
                        <a class ="bottom-inner" href="compani.jsp">
                          		 회사소개
                        </a>
                        <i ng-if="noticeNew > 0" class="new-up" style="top: -2px;left: -4px;">&nbsp;LAWKNOW</i>
                        <br>
                        <a class ="bottom-inner" href="questionUser.jsp">
                            	 자주 묻는 질문
                        </a>
                        <br>
                         <a class ="bottom-inner" href="compani.jsp">
                   				 법적책임            
                        </a>
                        <br>
                        <a class ="bottom-inner" href="이용약관.jsp">
                          		  이용약관
                        </a>
                        <br>
                    </div>
                    
                    <div style="display: block;" class="realbottomSlide">
                        <div  class="slideLogin" style="margin-bottom: 20px; font-size: 20px;">
                        	<%= session.getAttribute("userName") %>님 <small>반갑습니다.</small>
                        </div>
                        <div class="slideLogin">
                             <a href="UserMyPageOk.ul"   style ="color: #333; cursor: pointer;">
                    			마이페이지
                			</a>
                        </div>
                    </div>
                    </div>
                    
                  </div>
            <div class = "rowtalklogo">
                <strong>lawknow</strong>
            </div>
            <div id="small-menu">
                <h1    style="font-size: 15px; font-weight: 600; color: #333; margin-top: 9px;"><%= session.getAttribute("userName") %>님 <small>반갑습니다.</small></h1>
        		<a style="margin: 0; padding: 0;" href="UserMain.ul" class="twoandthree three"  id="logout" >로그아웃</a>
            
                <a href="UserMyPageOk.ul" class="twoandthree three"  style ="color: #333; cursor: pointer;">
                    마이페이지
                </a>
            </div>
        </div>
        <div class = "aaa">
            <a class = "ott" href="service.jsp">LAW<br>지식IN</a>
            <a class = "ott" href="service.jsp">1:1<br>바로상담</a>
            <a class = "ott" href="service.jsp">오늘의<br>질문</a>
        </div>
        </div>
        <form class = "joinform">
            <div class = "dotbogibox">
                <div class = "lowerInputBox" >
                <input  class = "lowerinput"type="text" placeholder="분야/사례/변호사를 검색하세요.">
                <button style="width:100%; height:100%" 
                class="btn btn-primary transparentbutton" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Toggle top offcanvas</button>
                <div class="offcanvas offcanvas-top oftenshowbox" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel" style="height:454px">
                <div class="offcanvas-header">
                    <h5 id="offcanvasTopLabel">
                        <!-- <div class = "rowtalklogo oftenlogo">
                            <strong>lawknow</strong>
                        </div>   -->
                    </h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body topBodyGW">
                    
                    <div class = "lowerInputBox oftenshow" >
                        <input  class = "lowerinput oftenshowinput"type="text" placeholder="분야/사례/변호사를 검색하세요.">
                    </div>
                    <button class = "dotbogi oftenDotBogi" >
                        <i class="material-icons searchicon" style="font-size: 53px;">search</i>  
                    </button>
                    <div class="search-categories-wrapper">
                        <div class="firstsearch">
                            <div class="firstsearchoften">
                                자주 찾는 분야
                            </div>
                            <div  class="firstsearchAll">
                                <a>분야 전체 보기</a>
                            </div>
                        </div>
                        <a class="catagoryPopular" href="service.jsp">
                            이혼
                        </a>
                        <a class="catagoryPopular" href="service.jsp">
                            상속
                        </a>
                        <a class="catagoryPopular" href="service.jsp">
                            성범죄
                        </a>
                        <a class="catagoryPopular" href="service.jsp">
                            건설/부동산
                        </a>
                        <a class="catagoryPopular" href="service.jsp">
                            재산범죄
                        </a>
                        <a class="catagoryPopular" href="service.jsp">
                            기업일반
                        </a>
                    </div>




                </div>
                </div>
                </div>
                <button class = "dotbogi" >
               
                    <img src ="assets/img/돋보기.PNG">
                
                </button>
                </div>
        </form>
    </div>

    <section class="container"> <!-- 여기에 relative를 주고  안에 div.arrow들을 absolute를 주어야한다. -->
        <div class="arrow prev">&lt;</div>
        <div class="banner"> <!-- 배너를 움직여줘야한다https://d2ai3ajp99ywjy.cloudfront.net/app/images/9f438fd6b08a1c32bcba.jpg-->
            <div class="img"><img src="assets/img/배너1.png"></div>
            <div class="img"><img src="assets/img/배너2.png"></div>
            <div class="img"><img src="assets/img/배너3.png"></div>
            <div class="img"><img src="assets/img/배너4.png"></div>
           
        </div>
        <div class="arrow next">&gt;</div>
        <div class="btns">
           <button class="btn" style ="outline: none;"></button>
           <button class="btn" style ="outline: none;"></button>
           <button class="btn" style ="outline: none;"></button>
           <button class="btn" style ="outline: none;"></button>
        </div>
    </section>

       <section class="popular-categories-section">
        <div class="popular-categories-boxs">
            분야로 변호사를 찾으세요.
        </div>
        <div class="popular-categories-box">
            <a class = "diverce" href="service.jsp">
                <div class="divercebox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    이혼
                </div>
                <div class="diverceexplain">
                    변호사 243명<br>사례 8,884건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="sangsokbox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    상속
                </div>
                <div class="diverceexplain">
                    변호사 153명<br>사례 3,898건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="genderbox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    성범죄
                </div>
                <div class="diverceexplain">
                    변호사 312명<br>사례 19,224건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="gunsulbox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    건설/부동산
                </div>
                <div class="diverceexplain">
                    변호사 216명<br>사례 5,032건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="moneybox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    재산범죄
                </div>
                <div class="diverceexplain">
                    변호사 289명<br>사례 18,284건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="generalbox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    기업일반
                </div>
                <div class="diverceexplain">
                    변호사 126명<br>사례 2,608건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="policebox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    형사기타
                </div>
                <div class="diverceexplain">
                    변호사 243명<br>사례 17,692건
                </div>
            </a>
            <a class = "diverce" href="service.jsp">
                <div class="searchbox">
                   <!--  <img  class = "diverceimg" src = "img/이혼.jpg"/> -->
                </div>
                <div class="divercetitle">
                    분야찾기
                </div>
                
                <div class="diverceexplain">
                    	분야 70개<br>전체보기
                </div>
            </a>
        </div>
       </section>

       <section class = "geesikin">
        <div class="best-expert">
            <a class = "best-link"  href="service.jsp">>
                <div class="best-background">
                    <div class="background-image-best">
                        <img class="real-img" src="https://ssl.pstatic.net/static/kin/section/expert/pc/home_panel_expert2.png" alt="">
                    </div>
                </div>
                <div class="best-title">
                    <div class="subtitlebox">
                        <h2 class = "subtitle">
                            <span class ="blind">NEW</span>
                        </h2>
                    </div>
                    <p class="description">전문가 상담이<br>필요할 땐,<br>LAWKNOW 지식 iN</p>
                </div>
            </a>
        </div>
        <div class="best-expert">
            <a class = "best-link" href="assets/answer_page.jsp">
                <div class="best-title hothot">
                        <h2 class = "subtitle twosubtitle">
                            <span class ="blind">지식 IN 성지</span>
                        </h2>
                        <p class="description">도움이 될만한 LAWKNOW <br> 지식글</p>
                </div>
            </a>
        </div>
        <div class="best-expert">
            <a class = "best-link" href="assets/answer_page.jsp">
                <div class="best-title todayafter">
                        <h2 class = "subtitle todaysgle">
                            <span class ="blind">오늘의 질문</span>
                        </h2>
                    <p class="description">오늘의 LAWKNOW!<br>오늘의 글은 무엇일까요?</p>
                </div>
            </a>
        </div>
        <div class="best-expert">
            <a class = "best-link" href="assets/answer_page.jsp">
                <div class="best-title ahaaafter">
                        <h2 class = "subtitle ahaaha">
                            <span class ="blind">NEW</span>
                        </h2>
                    <p class="description">아하!<br>AAWKNOW의 상담사례</p>
                </div>
            </a>
        </div>
       </section>
 
       <section class="counsel-banner-section">
        <div class="counsel-banner-section-container" style="width: 113%;"> <!-- 임시방편 해결 -->
            <div class="counsel-banner-section--wrap" style="left: -142px;">
                <p class="counsel-banner-title">상황에 맞게 변호사와 다양한 법률상담.</p>
                <div class="counsel-banners-img-box">
                    <div class="counsel-banners">
                        <div class="counsel-banner-wrap">
                            <a class="counsel-banner" href="">
                                <p class="counsel-banner__title-text"># 빠르고 부담없이<br>다양한 전문가들의 의견을<br>상담하고 싶을 때</p>
                            </a>
                            <p class="counsel__title">LAWKNOW 지식인</p>
                            <p class="counsel__text">당신의 고민과 상담을 자유롭게 올려주세요 다양한 전문가들이 지식을 공유해드립니다. 해결책을 문의하세요.</p>
                            <a class="counsel__reservation-link" href="write.jsp">
                                LAW KNOW 지식IN 시작 &gt;
                            </a>
                        </div>

                        <div class="counsel-banner-wrap">
                            <a class="counsel-banner twowrap" href="">
                                <p class="counsel-banner__title-text">#나의 선호에 맞게<br>내가 원하는 변호사와 <br>상담하고 싶을 때</p>
                            </a>
                            <p class="counsel__title">1:1 바로상담</p>
                            <p class="counsel__text">예약한 시간에 변호사로부터 1:1채팅이 옵니다. 변호사를 직접 선택하고 빠르게 해결책을 문의하세요.</p>
                            <a class="counsel__reservation-link" href="list.jsp">
                                1:1상담 바로가기 &gt;
                            </a>
                        </div>

                        <div class="counsel-banner-wrap">
                            <a class="counsel-banner threewrap" href="">
                                <p class="counsel-banner__title-text"># 많은 전문가들이<br>당신을 기다리고있습니다<br>분야별 선택하고 싶을 때</p>
                            </a>
                            <p class="counsel__title">분야별 글 목록</p>
                            <p class="counsel__text">당신의 관심 분야를 선택해주세요.도움이 될만한  많은 사례와 글을 볼 수 있습니다. 전문가와 상담이 필요할 땐 LAW KNOW </p>
                            <a class="counsel__reservation-link" href="assets/answer_page.jsp">
                                분야찾고 예약하기 &gt;
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="counsel-online-write-counsel-container">
            <div class="counsel-online-write-counsel-wrap">
                <div class="counsel-online-write--title">상담글쓰고 변호사 답변받기.</div>
                <div class="counsel-online-write-banner">
                    <a class="counsel-bannerss">

                    </a>
                    <div class="counsel-online-write--content-wrap">
                        <p class="counsel__title" style="color: #333; font-weight: bold;">온라인상담</p>
                        <p class="explainToanswer" style="color: #555;">여러 변호사의 초기의견이 궁금하신가요? 상담글 쓰고 답변받으세요. 단, 내용은 익명으로 LAWKNOW에 등록됩니다.</p>
                        <a class="writecounselone" href="write.jsp">상담글쓰기 &gt;</a>
                    </div>
                </div>
            </div>
        </div>
       </section>  

       <section class="content-section banner-lawyer-section">
        <div class="banner-section-wrap">
        </div>
        <div class="iflower"><span class="ififif">혹시 변호사님이신가요?</span>
            <br><span class="ansim">변호사님 안심하고 사용하세요. LAWKNOW은 합법입니다.</span>
            <div class = "orangelast">
                <a  class="withlawer" href="assets/lawyer_login.jsp">변호사 가입페이지 &gt;</a>
            </div>
        </div> 
       </section>

       <footer class="lt-footer">
           
                <div class ="firstbox">
                    <div class = "rowtalklogo" style="POSITION: RELATIVE;TOP: 48PX;">
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
                            <a  class="footera" href="service.jsp">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> LAWKNOW 지식인
                            </a>
                        </li>
                        <li class="lists">
                            <a  class="footera" href="list.jsp">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> LAWKNOW 1:1 상담
                            </a>
                        </li>
                        <li class="lists">
                            <a  class="footera" href="assets/client_request.jsp">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> 상담사례
                            </a>
                        </li>
                        <li class="lists">
                            <a href="" class="footera" href="assets/client_request.jsp">
                            <i class="material-icons smallones" style="font-size: 1px">fiber_manual_record</i> 해결사례
                            </a>
                        </li>
                    </ul>
                    <div class = "informationfooter">
                        <div class="mypagebox">
                            <div class = "mypageboxtitle">
                                마이페이지
                            </div>
                            <div class="mypageboxex">
                                <a href="mycounsel.jsp">내 상담 내역</a>
                            </div>
                            <div class="mypageboxex">
                                <a href="privacyPage.jsp">회원 정보 수정</a>
                            </div>
                        </div>
                        <div class="mypagebox mypageboxtwo">
                            <div class = "mypageboxtitle">
                                고객센터
                            </div>
                            <div class="mypageboxex">
                                <a href="questionUser.jsp">자주 묻는 질문</a>
                            </div>
                            <div class="mypageboxex">
                                <a href="compani.jsp">회사소개</a>
                                </div>
                            <div class="mypageboxex">
                                <a href="이용약관.jsp">이용약관</a> <!--이용약관 링크 -->
                           </div>
                           <div class="mypageboxex">
                            <a href="법적책임.jsp">법적책임</a> <!--이용약관 링크 -->
                            </div>
                        </div>
                    </div>
                </div>    
       </footer>
       <footer class="lt-footer lastfooter">
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




      <button class="btn-action-question btn-action">
        <div class="buttoninbox">
            <a class = "" href="UserWrite.uw" style ="color:white;">
            <span class="fixspan" style="color:black;">
                LAWKNOW 지식인
            </span>
            <!-- <div class = "arrow-down"></div> -->
        </div>
       
        <i class="material-icons" id="thbutton" style="left: 2px;top: 4px;font-size: 39px;">mode_edit</i>
    </a>
     </button>
    
    

 








           
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>            
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

$('#logout').on("click", function(){
	sessionStorage.removeItem("#logout"); // 삭제
	alert("로그아웃 되었습니다.");
});


let checkDel = "${checkDel}";
if(checkDel){
	alert("탈퇴완료");
}

let checkDel2 = "${checkDel2}";
if(checkDel2){
	alert("탈퇴완료");
}

const banner = document.querySelector("div.banner");
const arrows = document.querySelectorAll("div.arrow");
const btns = document.querySelectorAll("button.btn");
let count =0;


// 원하는 번호의 배너로 이동
btns.forEach(function(btn, i, ar){
        // 각 버튼에 클릭이벤트 적용
        ar[i].addEventListener("click", function(){
            // 해당 버튼 번호(i)로 count변경
            count = i-2;
            banner.style.transform = "translate(-" + count * 70 + "vw)";
        });
    });





arrows.forEach((arrow)=> {
 arrow.addEventListener("click",function(){
    let arrowType = arrow.classList[1]; 
   if(arrowType = "prev"){
     count--;
     if(count==-1){
       count =3
     }
   }
   else{
     count++;
     if(count==4){
       count =0;
     }
   }
   banner.style.transform = "translate(-" + count * 70 + "vw)";
 })
})


setInterval(function(){
     count++; // 매 3초마다 count가 움직인다.
     count = count == 4 ? 0 : count; /* count가 6이면 다돈거니까 다시 첫번째를 나오게 해주려고 */
     banner.style.transform = "translate(-" + count * 70 + "vw)";
 }, 5000);
 
 /* 클릭시 색상변경 */
function clickMenuHandler() {   /* onclickMenu와 같은 on____ , _____listener, _____handler들은 이벤트 리스너들이라고 할 수 있고, 보통 이런 이름들을 가짐 */
    for (var i = 0; i < btns.length; i++){
       btns[i].classList.remove('menu-active');
    }
    this.classList.add('menu-active');
   
}

for (var i = 0; i < btns.length; i++){
   btns[i].addEventListener('click', clickMenuHandler);
 /*   btns[i].addEventListener('mouseout', clickMenuHandler); */
}


function dbclickMenuHandler() {   /* onclickMenu와 같은 on____ , _____listener, _____handler들은 이벤트 리스너들이라고 할 수 있고, 보통 이런 이름들을 가짐 */
    for (var i = 0; i < btns.length; i++){
       btns[i].classList.remove('menu-ractive');
    }
    this.classList.add('menu-ractive');
   
}

for (var i = 0; i < btns.length; i++){
   btns[i].addEventListener('mouseout', dbclickMenuHandler);
 /*   btns[i].addEventListener('mouseout', clickMenuHandler); */
}



	

 
 
 

</script>
</html>