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
    <link rel="stylesheet" href="assets/css/css/mypage.css">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<style >
		.writelines{
			color: black;
			text-decoration: none;
		}
		.writelines:hover{
			color:black;
		}
	</style>

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
                      <h5 class="offcanvas-title" id="offcanvasExampleLabel"><div class = "rowtalklogo">
                        <strong style="position: relative;
                        left: 38px;"><a href="LawKnowMainPage.jsp">lawknow</a></strong>
                    </div></h5>
                      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                      <div>
                        <div class="menu-item quick-menu">
                            <div class="one">
                                <a href="service.jsp"><span>LAW<br>지식인</span></a>
                            </div>
                            <div class="one">
                                <a href="assets/answer_page.jsp"><span>1:1<br>바로상담</span></a>
                            </div>
                            <div class="one">
                                <a href="assets/client_request.jsp"><span>오늘의<br>질문들</span></a>
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
                            <a class="findlower" href="assets/client_request.jsp" >해결사례</a>
                        </div>
                        <div class="fourbox">
                            <a class="findlower" href="assets/client_request.jsp">상담사례</a>
                        </div>
                    </div>
                    <div class="writeglesigi">
                    <a class="writelines" href="write.jsp">
                    <img src="assets/css/img/연필.jpg" style="width: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;>       
                    </a>
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
                    
                    <div class="realbottomSlide">
                        <div class="slideLogin">
                            <label>
                            <i class="material-icons slideicon" style="font-size: 34px;">person_add</i>
                            <br>
                           <a href="assets/signup.jsp">회원가입</a>
                        </label>
                        </div>
                        <div class="slideLogin">
                            <label>
                            <i class="material-icons slideicon" style="left: 11px;font-size: 34px;">contacts</i>
                            <br>
                            <a href="assets/client_login.jsp">로그인</a>
                        </label>
                        </div>
                    </div>





                    </div>
                  </div>
                  <div class = "rowtalklogo">
                    <a href=""><strong>lawknow</strong></a>
                </div>
            <div id="small-menu">
                <a class="twoandthree" href="privacyPage.jsp">
                    개인정보수정
                </a>
                <a>
                    <i class="material-icons" style="position: relative;
                    top: 9px;  color: #999;">youtube_searched_for</i>
                </a>
            
                <a class="twoandthree three" style ="color: #333; cursor: pointer;" href="LawKnowMainPage.jsp">
                    로그아웃
                </a>
                
            </div>
        </div>
        </div>
    </div>

    <div class = "my-index-controller">
        <div class="my-index-card"> 
            <h2 class="my-index-title">
                마이페이지
            </h2>
            <div class="my-index-buttons-wrap">
                <a class="my-index-button" href="mycounsel.jsp">
                    나의 상담 내역<br>
                    <span class="my-index-button-count zero">0</span>
                </a>
                <a class="my-index-button" href="mycounsel.jsp">
                    사례 즐겨찾기<br>
                    <span class="my-index-button-count zero">0</span>
                </a>
                <a class="my-index-button" href="list.jsp">
                    변호사 즐겨찾기<br>
                    <span class="my-index-button-count zero">0</span>
                </a>
            </div>
            <div class="my-index-advice-list-container">
                <div class="my-index-advice-list">
                    <div class="my-index-list-title">
                        내 상담내역
                    </div>
                    <a class="my-index-list-row">
                        <div class="my-index-list-label">나의 LAW 지식IN</div>
                        <div class="my-index-list-count zero">0</div>
                    </a>
                    <a class="my-index-list-row">
                        <div class="my-index-list-label">나의 1:1 채팅상담</div>
                        <div class="my-index-list-count zero">0</div>
                    </a>
                    <a class="my-index-list-row">
                        <div class="my-index-list-label" style="text-align: left;">상담사례</div>
                        <div class="my-index-list-count zero">0</div>
                    </a>
                    <a class="my-index-list-row">
                        <div class="my-index-list-label">상담후기</div>
                        <div class="my-index-list-count zero">0</div>
                    </a>
                </div>
                <div class="my-index-advice-list">
                    <div class="my-index-list-title">
                         LAWKNOW 지식 즐겨찾기
                    </div>
                    <a class="my-index-list-row">
                        <div class="my-index-list-label">사례 즐겨찾기 </div>
                        <div class="my-index-list-count zero">0</div>
                    </a>
                </div>
            </div>
            
        </div>
    </div>

    

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





    
    

 








           
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>            
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>




</script>
</html>