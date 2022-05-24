<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
 
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="assets/css/css/clientQuestion.css">
    <title>자주 묻는 질문 의뢰인</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />   
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
   
    
     <div class="faq controller">
        <nav class="header-nav directive">
            <a class ="left" href="LawKnowMainPage.jsp">
                <img  class = "lefthwa"src = "assets/css/img/왼화살jpg.jpg">
            </a>
            <h3 class="title">
                <a class = "maintitles">자주 묻는 질문</a>
            </h3>
        </nav>

        <div class="faq-nav">
            <div class="faq-state">
                <div class="user-faq active">
                    의뢰인 FAQ
                </div>
                <div class="lawyer-faq">
                    <a class="linkline" href="questionLawer.jsp">변호사 FAQ</a>
                </div>
            </div>
        </div>







        <form action="" class ="joinform">
            <section class="join1_box on">
                <input type="checkbox" id="agre0">
                <h4 class ="maintopic"><span class="view"><i class="material-icons">expand_more</i></span>소셜 계정의 아이디와 비밀번호를 찾고 싶어요.<label for="agre0"></label></h4>
                <div class="con" style="display:none"> 소셜 계정(카카오, 페이스북)은 LAWKNOW 내에서 아이디/비밀번호 찾기가 어렵습니다. 해당 소셜 플랫폼 사이트(카카오, 페이스북)에 접속하신 후 아이디/비밀번호 찾기 기능을 이용 부탁드립니다. 아이디/비밀번호 확인 후에는 로톡 사이트에서 소셜 로그인 버튼을 눌러 로그인하시면 됩니다 </div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>아이디는 몇 개까지 만들 수 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">한 번의 회원가입으로 여러 개의 상담글을 작성할 수 있기 때문에 여러 번 회원가입을 하실 필요가 없습니다. </div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>아이디를 변경하고 싶어요<label for="agre0"></label></h4>
                <div class="con" style="display:none"> 아이디 변경은 불가능합니다. 탈퇴 후 새로운 아이디로 재가입하시기 바랍니다. </div>
            </section>
            <section class="join1_box on">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>아이디와 비밀번호를 잊어버렸어요. 어떻게 하나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none"> 로그인 페이지 내의 '아이디/비밀번호 찾기' 를 이용해주시면 됩니다. 아이디의 경우 가입할 때 기입한 이메일로 전송되며, 비밀번호의 경우 아이디와 이메일 주소를 적어주시면 비밀번호를 초기화 할 수 있는 메일이 전송됩니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>회원가입에 나이 제한이 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">만 14세 이상인 경우, 회원가입이 가능합니다.

                    법률 문제는 만 14세 미만 미성년자가 스스로 판단하기 힘든 문제일 수 있습니다. 14세 미만인 경우, 112 경찰청 또는 1577-1391 아동보호전문기관에 연락해 도움을 받아보세요.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>회원가입하지 않고 비회원으로 상담을 받을 수 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">변호사 홈페이지에 있는 050 전화번호는 변호사 사무실로 연결되는 안심번호입니다. 해당 번호로 전화하면 5분 이내의 간단한 문의가 가능합니다. 전화는 사무실 직원이 받을 수도 있으며, 간단한 상담 일정 및 비용 등의 문의가 가능합니다.

                    변호사와 직접 상담을 원하신다면 로톡 회원가입 후 15분 전화상담, 20분 영상상담, 30분 방문상담을 이용하시기 바랍니다.</div>
            </section>
            <section class="join1_box on">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>회원정보는 어떻게 변경하나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">로그인 후 우측 상단 [마이페이지] 클릭 > [개인정보 수정]에서 가능합니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>LAWKNOW 서비스는 무료인가요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW은 법률서비스 플랫폼으로, 자유롭게 궁금한 법률 키워드를 검색하여 관련 변호사와 사례를 무료로 확인할 수 있습니다. 또, '온라인 상담'을 통해 상담글을 작성하면 무료로 변호사의 답변을 받을 수 있습니다.</div>
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
                <h4><span class="view"><i class="material-icons">expand_more</i></span>답변을 받고 싶은 변호사를 직접 고를 순 없나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">메인 페이지에서 1:1 변호사 바로상담 부분을 클릭하시면 변호사와 조율해서 바로상담이 가능합니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>상담글은 어떻게 작성하나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW 메인페이지에서 좌측 메뉴 클릭 > 상담글 버튼을 누르고, 200자 이상 1,000자 이내로 상담글을 작성하세요.

                    6하원칙에 따라 작성하시면 변호사가 정확한 답변을 작성하는 것에 도움이 됩니다.
                    
                    상담글에 변호사가 답변을 달면 사례찾기, 네이버 지식iN에 익명으로 공개되므로 신원을 확인할 수 있는 정보(개인정보)를 포함하지 마십시오.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>상담글을 쓰면 언제 답변을 받을 수 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">라인상담은 LAWKNOW 가입 변호사의 자발적인 참여에 의해 이루어지고 있습니다.

                    답변의 시간은 차이가 있을 수 있습니다만 평균 3일 이내입니다</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>상담글을 올리면 답변은 누가 하나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW에서 변호사 자격 취득 여부를 확인한 변호사가 답변을 드립니다. 모든 상담글은 익명이며, 변호사에게도 작성자의 이메일, 아이디, 전화번호 등의 개인정보가 일절 공개되지 않습니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>상담받을 분야로 찾을 수 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW 메인 페이지의 좌측 상단에 '변호사 찾기' 버튼을 누른 후 원하는 키워드를 선택해 주세요. 어떤 분야로 상담받아야 할지 모르신다면, '글 입력해서 분야 찾기' 버튼을 누른 후 법률문제(10자 이상) 기입해 주시고, '검색' 버튼을 누르면 찾을 수 있습니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>내 상황에 맞는 변호사나 상담사례는 어떻게 찾을 수 있나요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">LAWKNOW 페이지 상단에 있는 검색바를 통해 궁금한 키워드(예: 성추행, 재산분할, 상가임대차 등)를 검색하세요. 키워드에 맞는 변호사, 상담사례, 포스트, 동영상 컨텐츠를 확인할 수 있습니다.</div>
            </section>
            <section class="join1_box">
                <input type="checkbox" id="agre0">
                <h4><span class="view"><i class="material-icons">expand_more</i></span>1:1 상담시 다른 변호사로 예약을 변경하고 싶은데, 가능한가요?<label for="agre0"></label></h4>
                <div class="con" style="display:none">다른 변호사로 변경을 원하신다면, 기존 예약을 취소한 후 새로운 예약 절차를 진행하셔야 합니다.</div>
            </section>
            
        </form>
    </div><!-- // content -->




    <button class="btn-action-question btn-action">
        <div class="buttoninbox">
            <a  class = "" href="write.jsp" style ="color:white;">
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