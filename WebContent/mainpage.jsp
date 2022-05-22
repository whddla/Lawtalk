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
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/mainstyle.css">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</head>
<body>
    <div class="top">
        <div class = "mainmenu">
            <div class = "threeflex">
                <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" id="slidebutton">
                    <i class="material-icons" id="thbutton">menu</i>
                  </button>
                  
                  <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                    <div class="offcanvas-header">
                      <h5 class="offcanvas-title" id="offcanvasExampleLabel">  <img src="img/로고.jpg" style="width: 62%;"></h5>
                      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                      <div>
                        <div class="menu-item quick-menu">
                            <div class="one">
                                <span>ROW<br>지식인</span>
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
                            <a class="findlower">ROW 지식 IN</a>
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
                    <img src="img/연필.jpg" style="width: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;>       
                    </div>
                    </div>
                  </div>
            <div class = "rowtalklogo">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 121 20" xml:space="preserve" ng-style="{ fill: (colors[color] || colors.default) }" class="lt-lawtalk-logo__svg" style="fill: rgb(255, 85, 0);"><polygon points="4,0 0,0 0,20 12,20 12,17 4,17" class="lt-lawtalk-logo__char"></polygon><polygon points="59,3 67,3 67,20 71,20 71,0 59,0" class="lt-lawtalk-logo__char"></polygon><polygon points="96,0 92,0 92,20 104,20 104,17 96,17" class="lt-lawtalk-logo__char"></polygon><path d="M25,0h-5l-7,20h4l1.38-4h8.25L28,20h4L25,0z M19.41,13l3.09-9l3.09,9H19.41z" class="lt-lawtalk-logo__char"></path><polygon points="48.5,16 45,0 41,0 37.5,16 32,0 28,0 35,20 37.5,20 40,20 43,8 46,20 48.5,20 51,20 58,0 54,0" class="lt-lawtalk-logo__char"></polygon><path d="M79,0l-7,20h4l1.38-4h8.25L87,20h4L84,0H79z M78.41,13l3.09-9l3.09,9H78.41z" class="lt-lawtalk-logo__char"></path><polygon points="121,20 111.5,10 120,0 115,0 109,7.06 109,0 105,0 105,20 109,20 109,12.63 116,20" class="lt-lawtalk-logo__char"></polygon><circle cx="74.5" cy="1.5" r="1.5" class="lt-lawtalk-logo__char"></circle></svg>
            </div>
            <div id="small-menu">
                <a class="twoandthree">
                    로그인/가입
                </a>
            
                <a class="twoandthree three" style ="color: #333; cursor: pointer;">
                    변호사찾기
                </a>
                <a>
                    <i class="material-icons" style="position: relative;
                    top: 9px;">zoom_in</i>
                </a>
            </div>
        </div>
        <div class = "aaa">
            <a class = "ott">RAW<br>지식IN</a>
            <a class = "ott">1:1<br>바로상담</a>
            <a class = "ott">오늘의<br>질문</a>
        </div>
        </div>
        <form class = "joinform">
            <div class = "dotbogibox">
                <div class = "lowerInputBox" >
                <input  class = "lowerinput"type="text" placeholder="분야/사례/변호사를 검색하세요.">
                </div>
                <button class = "dotbogi" >
                    <img src ="assets/css/img/돋보기.PNG">
                </button>
                </div>
        </form>
    </div>

    <section class="container"> <!-- 여기에 relative를 주고  안에 div.arrow들을 absolute를 주어야한다. -->
        <div class="arrow prev">&lt;</div>
        <div class="banner"> <!-- 배너를 움직여줘야한다 -->
            <div class="img"><img src="https://d2ai3ajp99ywjy.cloudfront.net/app/images/9f438fd6b08a1c32bcba.jpg""></div>
            <div class="img"><img src="https://d2ai3ajp99ywjy.cloudfront.net/app/images/c64413b148660ab50067.jpg"></div>
        </div>
        <div class="arrow next">&gt;</div>
        <div class="btns">
            <button class="btn">1</button>
            <button class="btn">2</button>
        </div>
    </section>

       <section class="popular-categories-section">
        <div class="popular-categories-boxs">
            분야로 변호사를 찾으세요.
        </div>
        <div class="popular-categories-box">
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "diverce">
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
            <a class = "best-link" href="">
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
                    <p class="description">전문가 상담이<br>필요할 땐,<br>로톡 지식iN</p>
                </div>
            </a>
        </div>
        <div class="best-expert">
            <a class = "best-link" href="">
                <div class="best-title hothot">
                        <h2 class = "subtitle twosubtitle">
                            <span class ="blind">지식 IN 성지</span>
                        </h2>
                        <p class="description">도움이 될만한 로톡 <br> 지식글</p>
                </div>
            </a>
        </div>
        <div class="best-expert">
            <a class = "best-link" href="">
                <div class="best-title todayafter">
                        <h2 class = "subtitle todaysgle">
                            <span class ="blind">오늘의 질문</span>
                        </h2>
                    <p class="description">오늘의 로톡!<br>오늘의 글은 무엇일까요?</p>
                </div>
            </a>
        </div>
        <div class="best-expert">
            <a class = "best-link" href="">
                <div class="best-title ahaaafter">
                        <h2 class = "subtitle ahaaha">
                            <span class ="blind">NEW</span>
                        </h2>
                    <p class="description">아하!<br>로톡의 상담사례👨‍🦰</p>
                </div>
            </a>
        </div>
       </section>
 
       <section class="counsel-banner-section">
        <div class="counsel-banner-section-container">
            <div class="counsel-banner-section--wrap">
                <p class="counsel-banner-title">상황에 맞게 변호사와 다양한 법률상담.</p>
                <div class="counsel-banners-img-box">
                    <div class="counsel-banners">
                        <div class="counsel-banner-wrap">
                            <a class="counsel-banner" href="">
                                <p class="counsel-banner__title-text"># 빠르고 부담없이<br>다양한 전문가들의 의견을<br>상담하고 싶을 때</p>
                            </a>
                            <p class="counsel__title">15분 전화상담</p>
                            <p class="counsel__text">예약한 시간에 변호사로부터 전화가 옵니다. 2만원정도의 부담없는 상담비로 빠르게 해결책을 문의하세요.</p>
                            <a class="counsel__reservation-link">
                                분야찾고 예약하기 &gt;
                            </a>
                        </div>

                        <div class="counsel-banner-wrap">
                            <a class="counsel-banner" href="">
                                <p class="counsel-banner__title-text"># 빠르고 부담없이<br>다양한 전문가들의 의견을<br>상담하고 싶을 때</p>
                            </a>
                            <p class="counsel__title">15분 전화상담</p>
                            <p class="counsel__text">예약한 시간에 변호사로부터 전화가 옵니다. 2만원정도의 부담없는 상담비로 빠르게 해결책을 문의하세요.</p>
                            <a class="counsel__reservation-link">
                                분야찾고 예약하기 &gt;
                            </a>
                        </div>

                        <div class="counsel-banner-wrap">
                            <a class="counsel-banner" href="">
                                <p class="counsel-banner__title-text"># 빠르고 부담없이<br>다양한 전문가들의 의견을<br>상담하고 싶을 때</p>
                            </a>
                            <p class="counsel__title">15분 전화상담</p>
                            <p class="counsel__text">예약한 시간에 변호사로부터 전화가 옵니다. 2만원정도의 부담없는 상담비로 빠르게 해결책을 문의하세요.</p>
                            <a class="counsel__reservation-link">
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
                        <p class="explainToanswer" style="color: #555;">여러 변호사의 초기의견이 궁금하신가요? 상담글 쓰고 답변받으세요. 단, 내용은 익명으로 로톡에 등록됩니다.</p>
                        <a class="writecounselone">상담글쓰기 &gt;</a>
                    </div>
                </div>
            </div>
        </div>
       </section>  

       <section class="content-section banner-lawyer-section">
        <div class="banner-section-wrap">
        </div>
        <div class="iflower"><span class="ififif">혹시 변호사님이신가요?</span>
            <br><span class="ansim">변호사님 안심하고 사용하세요.로톡은 합법입니다.</span>
            <div class = "orangelast">
                <a class="withlawer">변호사 가입페이지 &gt;</a>
            </div>
        </div>
        
       </section>






    
    

 








           
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>            
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>




</script>
</html>