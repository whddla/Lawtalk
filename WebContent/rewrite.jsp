<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>글 수정하기</title>
  
    <link rel="stylesheet" href="assets/css/rewrite.css">
    <style>
    	  form div#reply{
            display:flex;
            margin-bottom:3%;
         }
         
         input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
         
         ul.actions li {
             padding: 0 0 0 0.2em;
         }
         
         input#board_title{
            border-radius: 0;
            border: none;
            text-align: left;
            font-size: 1.75em;
            font-weight: 500;
            line-height: 1.5;
            letter-spacing: 0.1em;
            padding:0;
         }
         
         input[type='file']{
            display:none;
         }
         
         div.files{
            text-align:center;
            margin-right: 3%;
         }
         
         textarea {
            font-size: 1em;
             font-weight: 600;
             letter-spacing: 0.1em;
         }
         .chumbo{
         	position: relative;

   	 		top: 469px;
    		left: 851px;
         }
    </style>
      
</head>
<body>

    <nav class="header-nav directive">
        <a class ="left" href="LawKnowMainPage.jsp">
            <img  class = "lefthwa" src = "assets/img/왼화살jpg.jpg">
        </a>
        <h3 class="title">
            <a class = "maintitles">상담글 수정하기</a>
        </h3>
    </nav>

	<form action ="UserWriteUpdateOk.uw" method ="post" name ="joinForm" enctype="multipart/form-data">
	
    <div class="board_wrap">
        <div class="board_title">
            <strong>글 수정하기</strong>
            <p>제목과 궁금하신 점을 수정해주세요</p>
        </div>
        
         <div class="chumbo" style ="position:absolute">
 
                           <div style="margin-bottom:2%;">
                              첨부파일
                           </div>
                           <div style="display:flex;display: flex; position: relative; left: 1089px;top: 239px;">
                              <div class="files">
                                 <div>
                                    <label for="board_file1" style="display:inline; cursor:pointer">
                                       <img id="board_file1Img" src="${pageContext.request.contextPath}/assets/img/구글첨부파일.png"  style="display:inline;/* width: 44px;height: 37px; */">
                                    </label>
                                 </div>
                                 <input id="board_file1" name="board_file1" type="file" style="display:none" >
                                 <input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제" style="width: 59px;font-size: 10px; position: relative;left: 52px; top: -29px;">
                              </div>
                           </div>
                         </div>
        
        
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input name="title" type="text" placeholder="제목을 입력해주세요" maxlength="30" class="DOC_TEXT"></dd>
                        <div><span style="color:#aaa;" id="counter">(0 / 최대 200자)</span></div>
                    </dl>
                </div>
             
                <div class="cont">
                    <textarea placeholder="내용을  입력해주세요" id="test" name="content" >
                    </textarea>
                   <div id="test_cnt" style="height: 50px;font-size: 17px;">
                   (0 / 300)
                   </div>
                </div>
            </div>
            <div class="bt_wrap">
             <button  id="wrtieButton"  type="button" onclick="join()" style="width: 100px; height: 45px;">
        	<div class="register"><a>수정</a></div>     
  		  	</button>
                <!-- <input type="button"><a href="" class="on">수정</a> -->
                <button style="width: 100px; height: 45px;"><a href="LawKnowMainPage.jsp">취소</a></button>
            </div>
        </div>
    </div>
    
    <div >
   <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="position: relative;
    top: -637px;
    left: 441px;
    font-size: 20px;">
  <input  value ="이혼" type="radio" class="btn-check" name="field" id="btnradio1" autocomplete="off" >
  <label class="btn btn-outline-primary" for="btnradio1"  style ="border-color: #f50; color:#f50;">이혼</label>

  <input value ="상속" type="radio" class="btn-check " name="field" id="btnradio2" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio2" style ="border-color: #f50; color:#f50;">상속</label>

  <input value ="성범죄" type="radio" class="btn-check" name="field" id="btnradio3" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio3" style ="border-color: #f50; color:#f50;">성범죄</label>
  
  <input value ="건설/부동산"  type="radio" class="btn-check" name="field" id="btnradio4" autocomplete="off" >
  <label class="btn btn-outline-primary" for="btnradio4"style ="border-color: #f50; color:#f50;">건설/부동산</label>

  <input value ="재산범죄" type="radio" class="btn-check" name="field" id="btnradio5" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio5" style ="border-color: #f50; color:#f50;">재산범죄</label>

  <input value ="기업일반" type="radio" class="btn-check" name="field" id="btnradio6" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio6" style ="border-color: #f50; color:#f50;">기업일반</label>
  
  <input value ="형사기타" type="radio" class="btn-check" name="field" id="btnradio7" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio7" style ="border-color: #f50; color:#f50;">형사기타</label>
</div>  


    
    </form>





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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$('.DOC_TEXT').keyup(function (e){
    var content = $(this).val();
    $('#counter').html("("+content.length+" / 최대 200자)");    //글자수 실시간 카운팅
    if (content.length > 20){
        alert("제목은  최대 20자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 20));
        $('#counter').html("(200 / 최대 200자)");
    }
});
 
 
$(document).ready(function() {
    $('#test').on('keyup', function() {
        $('#test_cnt').html("("+$(this).val().length+" / 300)");

        if($(this).val().length > 300) {
            $(this).val($(this).val().substring(0, 100));
            $('#test_cnt').html("(300 / 300)");
        }
    });
});
 
function join(){
    joinForm.submit();
    alert("글 수정완료");
 	}
 
 </script>
</html>