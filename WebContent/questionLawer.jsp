<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="assets/css/css/lawerQuestion.css">
    <title>자주 묻는 질문 변호사</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" /> 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
    	h4{
    		cursor:pointer;
    	}
    	label { display: inline-block; } label img { pointer-events: none; }


    </style>
</head>

<body>
   
    
     <div class="faq controller">
        <nav class="header-nav directive">
            <a class ="left" href="LawKnowMainPage.jsp"> <!-- 메인화면 -->
                <img  class = "lefthwa"src = "assets/css/img/왼화살jpg.jpg">
            </a>
            <h3 class="title">
                <a class = "maintitles">자주 묻는 질문</a>
            </h3>
        </nav>

        <div class="faq-nav">
            <div class="faq-state">
                <div class="user-faq active">
                    <a class="linkline" href="questionUser.jsp">의뢰인 FAQ</a> 
                </div>
                <div class="lawyer-faq">
                    변호사 FAQ
                </div>
            </div>
        </div>







        <form action="" class ="joinform">
         	
            <section class="join1_box on">
                <input type="checkbox" class="agre0" id = "agree1">
                <h4 class ="maintopic"><span class="view"><i class="material-icons">expand_more</i><label for ="agree1"></span>변호사 회원 가입 자격이 있나요?</h4></label>
                <div class="con" style="display:none">대한민국 변호사 자격증을 보유한 변호사님이라면 누구나 무료로 가입을 할 수 있습니다. 단, 등록 전이거나 휴업상태인 변호사님이시라면 운영팀으로 문의주세요. </div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>변호사 회원 가입 절차는 어떻게 되나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">회원가입하기→ 변호사로 가입하기 → 정보입력 → 가입신청 → 자격 확인의 절차를 거칩니다. 가입이 승인되면 필수 프로필 정보를 입력해주시면 바로 사용이 가능합니다. </div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>아이디/비밀번호 분실했어요.<label for="agre0"></label></h4>
                <div class="con" style="display:none">로그인 페이지 → '아이디/비밀번호 찾기' 를 이용하시면 됩니다.

                    아이디는 회원 가입시 기입한 이메일 주소로 전송되며, 비밀번호는 아이디와 이메일 주소를 알려주시면, 비밀 번호를 초기화 할 수 있는 이메일을 전송해 드립니다.  </div>
            </section>
            <section class="join1_box on">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>의뢰인이 예약한 상담시간은 변경 및 취소가 가능한가요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">상담시간의 변경/취소 요청은 로톡 운영팀으로 연락주시면 됩니다.

                    1:1 바로 상담은 1시간 전까지만 예약 취소 및 변경이 가능합니다.
                    
                    (단, 의뢰인과 변호사가 서로 협의한 경우는 시간에 상관없이 예약시간 변경 및 취소 가능합니다.)</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>상담 완료후 해야할 일이 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">의뢰인과 상담을 완료하신 후, 상담에 대한 결과를 작성해 주세요.

                    상담결과를 받아 본 의뢰인은 후기를 작성할 수 있습니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>LAWKNOW 서비스는 변호사법에 위배되지는 않나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW은 변호사법 준수를 최우선시하여 운영되며, 로톡을 통한 유료상담료와 수임료는 전부 변호사에게 귀속됩니다.

                     단 한 번도 변호사법으로 문제가 된 적이 없다는 사실이 이를 반증하고 있습니다.</div>
            </section>
            <section class="join1_box on">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>회원정보는 어떻게 변경하나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">로그인 후 우측 상단 [마이페이지] 클릭 > [개인정보 수정]에서 가능합니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>의뢰인의 상담 후기는 공개되나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">의뢰인이 작성한 후기는 변호사님의 로톡 홈페이지에 익명으로 노출되어 사용자들이 이를 확인할 수 있습니다. 의뢰인 후기와 상담만족도는 의뢰인이 변호사님을 선택하는 중요한 기준들중 하나가 될 수 있습니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>LAWKNOW 서비스를 이용하려면 무엇이 필요한가요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW은 인터넷이 가능한 컴퓨터만 있으면 사용이 가능합니다. PC의 경우에는 구글 크롬 (www.google.com/chrome) 또는 인터넷 익스플로러 11버전 이상의 브라우저에서 정상적으로 동작합니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>내가 쓴 글을 삭제할 수 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">온라인 상담글을 작성한 일반회원은 답변이 달리지 않은 온라인 상담글에 한하여 로톡에 삭제 요청을 할 수 있습니다. 단, 답변을 작성한 변호사회원 전원에게 삭제 동의를 받는 경우 답변이 달린 온라인 상담의 경우라도 삭제를 요청할 수 있습니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>온라인 상담글에 답변을 달면 네이버 지식인에 자동으로 노출되나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">온라인 상담글에 답변을 다실 때 [네이버 지식iN 답변 등록 동의] 체크박스를 선택하셔야 네이버 지식iN에 등록됩니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>상담글은 어떻게 작성하나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW 메인페이지에서 좌측 메뉴 클릭 > [온라인 상담] 버튼을 누르고, 200자 이상 1,000자 이내로 상담글을 작성하세요.

                    6하원칙에 따라 작성하시면 변호사가 정확한 답변을 작성하는 것에 도움이 됩니다.
                    
                    상담글에 변호사가 답변을 달면 사례찾기, 네이버 지식iN에 익명으로 공개되므로 신원을 확인할 수 있는 정보(개인정보)를 포함하지 마십시오.</div>
            </section>    
        </form>
    </div><!-- // content -->



<button class="btn-action-question btn-action">
        <div class="buttoninbox">
            <a class = "" href="write.jsp" style ="color:white;">
            <span class="fixspan" style="color:black;">
                LAWKNOW 지식인
            </span>
            <!-- <div class = "arrow-down"></div> -->
        </div>
       
        <i class="material-icons" id="thbutton" style="left: 2px;top: 4px;font-size: 39px;">mode_edit</i>
    </a>
     </button>


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
                            <a  class="footera" href="sevice.jsp">
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
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
 
    $(function(){
    $(".join1_box .view").click(function(){
        $(".join1_box").removeClass("on");
        $(".join1_box .view").html("<i class='material-icons'>"+"expand_more"+"</i>");
        /* $(".maintopic").css("color","gray"); */
    /*     if($(".maintopic").) */
        $(".join1_box .con").slideUp();
        $(this).parent().next().stop().slideToggle();
        $(this).parent().parent().addClass("on");
        $(this).html("<i class='material-icons'>"+"expand_less"+"</i>");
    });
    $(".join1_box label ").click(function(){
        $(this).toggleClass('on');
        
    });
    $(".join1_box .view").blur(function(){
        $(".maintopic").css("color","blue");
    });

});
</script>
</html>