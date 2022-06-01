<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/myhistory.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
/*     .seedivOne {
    width: 500px;
    position: relative;
    top: -144px;
    }
    .seedivTwo{
    position: relative;
    bottom:146px;
    } */
    .mycounsel{
        width: 100%;
        position: relative;
    left: 1px;
    }
    .jstlBigBox{
    display: flex;
    position: relative;
    top: -70px;
    left: -36px;
	color : black;
    }
    .seedivThree{
       text-align: left;
    position: relative;
    bottom: 186px;
	width: 836px;;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    left: 55px;
    color: black;
    }
    .updateButton{
    position: relative;
    bottom: 252px;
    right: -242px;
    color:black;
    }
    .updateButton a{
    	text-decoration:none;
    	color:black;
    }
    .updateButton a:hover{
    	color:black;
    }
    .deleteButton{
    position: relative;
    top: -252px;
    left: 244px;
    }
    .deleteButton a{
    	text-decoration:none;
    	color:black;
    }
    .deleteButton a:hover{
    	color:black;
    }
    .listButton{
    position: relative;
    bottom: 252px;
    right: -242px;
    color: black;
    }
    
       .listButton a{
    	text-decoration:none;
    	color:black;
    }
  		.listButton a:hover{
    	color:black;
    }
    
    </style>
    <title>mycounsel</title>
    
</head>
<body>
    
   <div>
        <nav class="header-nav directive">
            <a class ="left" href="mypage.jsp">
                <img  class = "lefthwa"src = "assets/css/img/왼화살jpg.jpg">
            </a>
            <h3 class="title">
                <a class = "maintitles">마이페이지</a>
            </h3>
        </nav>
        <div class="mycounsel">
            <p class="qna-page-title">
           <%--  <c:if test ="${userWriteCount=0}">
                0개의 상담글을 작성하셨습니다.
                </c:if> --%>
                <c:if test="${userWriteCount>0}">
                	<c:out value="${userWriteCount} 개의 상담글을 작성하셨습니다"></c:out>
                </c:if>
            </p>
        </div>
    </div>
        <div class="big-box">
            <div class="sort">
                <div class="sort-box">
                    <a href="">&nbsp;최신 답변순 </a>
                </div>
                <div class="sort-box">
                    <a href=""><span style="color: #ff4e00;">&nbsp;최신 질문순</span></a>
                </div>
                <div class="sort-box">
                    <a href="">&nbsp;조회순</a>
                </div>
            </div>
            <section class="qna-list-contents">
            
                <div class="historybox">
                    <h2 class="qna-list-empty-title" style ="font-size: 21px;">
                    <!--jstl-->
                    <!-- userwrite의 제목과 내용  -->
                    <c:if test ="${empty userWriteTitle and empty userUpdateTitle}">
                        작성한 상담글이 없습니다.
                     </c:if>
                     
                     <c:if test ="${not empty userWriteTitle}">
                     <c:forEach  var ="writeLists" items="${writeList}">
                    <div style="display:flex;" class="jstlBigBox">
                     <div class = "seedivOne" style="width:500px"><c:out value=""/>질문 분야 : ${field}</div>
                     <div class = "seedivTwo"><c:out value=""/>제목 :${userWriteTitle}</div>
                    </div>
                    <div class = "seedivThree"><c:out value=""/>${userWritecontent}</div><!-- rewrite.jsp -->
                    <button type="button" class="btn btn-outline-secondary listButton"><a href="UserWriteListOk.uw">내가 쓴 글 목록</a></button>
                      <button type="button" class="btn btn-outline-secondary updateButton"><a href="UserWriteUpdate.uw">글수정하기</a></button>
             		<button type="button" class="btn btn-outline-secondary deleteButton"><a href="UserWriteDeleteOk.uw">글 삭제하기</a></button>
             		 </c:forEach> 
             		</c:if>
             		
             		
             		<c:if test ="${not empty userUpdateTitle }">
                    <div style="display:flex;" class="jstlBigBox">
                     <div class = "seedivOne" style="width:500px"><c:out value=""/>질문 분야 : ${userUpdateField}</div>
                     <div class = "seedivTwo"><c:out value=""/>제목 :${userUpdateTitle}</div>
                    </div>
                    <div class = "seedivThree"><c:out value=""/>${userUpdatecontent}</div>
                    
                    <button type="button" class="btn btn-outline-secondary updateButton"><a href="rewrite.jsp">글수정하기</a></button>
                    <button type="button" class="btn btn-outline-secondary deleteButton"><a href="UserWriteDeleteOk.uw">글 삭제하기</a></button>
                    
             		</c:if>
             		<!--jstl-->
                    </h2>
                </div>
               
                <div class="bottombox">
                    <h5 class="lt-counsel">
                        상담을 시작하세요!
                    </h5>
                    <div class="thth">
                    <div class="phone-advice">
                       <span class="fkfk">ROWKNOW 지식 IN<br>
                        당신의 고민을 여러 전문가가 답해드립니다</span><br>
                        <a class="linkline" href="write.jsp">ROWKNOW 지식 IN ></a>
                    </div>
                    <div class="slash">

                    </div>
                    <div class="phone-advice">
                        <span class="fkfk">ROWKNOW 1:1 바로상담<br>
                            원하는 변호사와 빠르게 상담하고 싶다면</span><br>
                        <a class="linkline" href="list.jsp">ROWKNOW 1:1 바로상담 ></a>
                    </div>
                    </div>  
                </div>
            </section>
        </div>

        




        <div class="big-footer">
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
      
</div>




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
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
<script>



/* $(".historybox").after( '<div class="historybox">sd</div>' ); */
        


 /*  $( document ).ready( function() {
	        $( '.historybox' ).append( ' <div class="historybox">
            <h2 class="qna-list-empty-title" style ="font-size: 21px;">
            <!--jstl-->
            <!-- userwrite의 제목과 내용  -->
            <c:if test ="${empty userWriteTitle and empty userUpdateTitle}">
                작성한 상담글이 없습니다.
             </c:if>
             
             <c:if test ="${not empty userWriteTitle}">
             <c:forEach  var ="writeLists" items="${writeList}">
            <div style="display:flex;" class="jstlBigBox">
             <div class = "seedivOne" style="width:500px"><c:out value=""/>질문 분야 : ${field}</div>
             <div class = "seedivTwo"><c:out value=""/>제목 :${userWriteTitle}</div>
            </div>
            <div class = "seedivThree"><c:out value=""/>${userWritecontent}</div>
              <button type="button" class="btn btn-outline-secondary updateButton"><a href="rewrite.jsp">글수정하기</a></button>
     		<button type="button" class="btn btn-outline-secondary deleteButton"><a href="UserWriteDeleteOk.uw">글 삭제하기</a></button>
     		 </c:forEach> 
     		</c:if>
     		
     		
     		<c:if test ="${not empty userUpdateTitle }">
            <div style="display:flex;" class="jstlBigBox">
             <div class = "seedivOne" style="width:500px"><c:out value=""/>질문 분야 : ${userUpdateField}</div>
             <div class = "seedivTwo"><c:out value=""/>제목 :${userUpdateTitle}</div>
            </div>
            <div class = "seedivThree"><c:out value=""/>${userUpdatecontent}</div>
            
            <button type="button" class="btn btn-outline-secondary updateButton"><a href="rewrite.jsp">글수정하기</a></button>
            <button type="button" class="btn btn-outline-secondary deleteButton"><a href="UserWriteDeleteOk.uw">글 삭제하기</a></button>
            
     		</c:if>
     		<!--jstl-->
            </h2>
        </div>' );    
	 } ); */



</script>
</html>


