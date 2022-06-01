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
    <link rel="stylesheet" href="assets/css/write.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
    .btn-check{
   border-color: aliceblue;
    }
    .btn-outline-primary:checked{
    	background-color: white;
    }
    .btn-outline-primary:hover{
    	background-color: white;
    }
     .btn-check:checked+.btn-outline-primary{
         /* background-color: white;
     }
    </style>
    <title>Document</title>
</head>
<body style="overflow-x: hidden;">
    <div class="all-layout">
       <a href="LawKnowMainPage.jsp"><div id="Law">LN</div></a>
    
       
        <hr class="hr1"> 

        <div class="main">상담글 쓰기</div>
        <div id="total">
            <div class="word1">상담글을 작성하고</div>
            <div class="word2">무료로</div>
          <div class="word3">변호사의 답변을 받으세요.</div>
          
       
		
        <form action="UserWriteOk.uw" name ="joinForm" method = "post">
        <c:set var="Writelist" value="${userWriteCount}"/>
   <div style="position: relative;
    top: 238px;
    left: 948px;">
   <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
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
</div>
        <div id="text">
            <div class="text_1">제목</div>
            <div class="text_2">(10자이상&nbsp;&nbsp;)</div>
            <div class="text_3">*</div>
          <div class="text_4">내용</div>
          <div class="text_5">(200자이상&nbsp;&nbsp;)</div>
          <div class="text_6">*</div>    
        </div>   
            <textarea id="input1"  class ="DOC_TEXT" name = "title" style="resize: none;" type="text" placeholder="&nbsp;&nbsp;&nbsp;제목을 작성해주세요"></textarea>
            <textarea id="input2" name ="content" style="resize: none;" type="text" placeholder="&nbsp;&nbsp;&nbsp;내용을 작성해주세요"></textarea>
          
            <input type="checkbox" id="checkbox1" onclick ="getBlack()">
            <label for="" id="label1">안내사항을 모두 확인했으며, 동의합니다.</label>
            
        
        <hr class="hr2">
        <div class="ul">
               <h3>상담글 등록 전 반드시 확인해주세요!</h3> 
            <ul>
                <li>상담글에 변호사의 <span>답변 등록시 글 삭제가 불가</span>합니다.</li>      
                <li>등록된 상담글은 <span>네이버 지식인, 포털 사이트, 로톡 사이트에 내용이 공개</span>됩니다.</li>
                <li>아래 사항에 해당할 경우, <span>서비스 이용이 제한</span>될 수 있습니다.</li>
            </ul>  
       </div> 
        
       <ul class="ul2">
           <li>개인정보(개인/법인 실명, 전화번호, 주민번호, 주소, 아이디 등) 및 외부 링크가 포함된 경우</li>
           <li>변호사 선임 및 변호사 선임 비용과 관련된 질문인 경우</li>
           <li>법률 문제 해결을 목적으로 작성한 상담글이 아닌 경우</li>
           <li>동일/유사한 내용의 게시물을 지속적으로 반복 게재하는 경우</li>
           <li>의미없는 문자의 나열인 경우</li>
       </ul>
    <button  id="wrtieButton"  type="button" onclick="join()">
        <div class="register" id ="blackBox">상담글 등록하기</div>     
    </button>
   </form>
    </div>



       <hr class="hr3">
      <div id="total2">
       <div class="last1">공지사항</div>
       <a href="mypage.jsp"><div class="last2">마이페이지</div></a>
       <div class="last3">로톡상담</div>
       <div class="last4">고객센터</div>
       <div class="last5">[안내]로톡 서비스 운영정책 변경 안내</div>
       <div class="last6">[안내]로톡 이용약관 및 개인정보처리방침 개정 안내</div>
       <div class="last7">[안내]로톡 서비스 운영정책 변경 안내</div>
       <div class="last8">2022-04-20</div>
       <div class="last9">2022-01-12</div>
       <div class="last10">2021-011-30</div>

        <div class="last26">내 상담내역</div>
        <div class="last27">회원정보수정</div>
        <a href="questionUser.jsp"><div class="last28">자주묻는질문</div></a>


       <a href="compani.jsp"><div class="last11">회사소개</div></a>
       <a href="이용약관.jsp"><div class="last12">이용약관</div></a>
       <div class="last13">개인정보처리방침</div>
       <a href="법적책임.jsp"><div class="last14">법적책임</div></a>
       <div class="last15">운영정책</div>
       <div class="last16">사진촬영안내 </div>
       <div class="last17">(주)로앤컴퍼니 서울시 서초구 서초중앙로 22길 17, 4층 사업자번호 : 264-81-01728 통신판매번호 : 2016-서울서초-0227</div>
       <div class="last18">대표자명 : 김본환 대표번호 : 02-6959-5080 이메일 : cs@lawcompany.co.kr</div>
       <div class="last19">(주)로앤컴퍼니는 대한민국 법률시장의 정보비대칭과 불법 법조브로커를 해소하여 투명하고 공정한 법률시장을 만들기 위해 로톡(LawTalk) 서비스를 제공하고 있습니다. 로톡은 의뢰인회원의 법률상담 내용 및 상담 여부,</div>
       <div class="last20">법률사건 내용 및 수임 여부, 변호사회원의 선택 등에 대해 일절 관여하지 않아 변호사법 및 기타 관련규정을 준수하고 있으며, 변호사회원이 의뢰인회원에게 제공하는 서비스의 내용과 질에 대해 어떠한 법적책임도 부담하지</div>
       <div class="last21">않습니다. 또한 회원간의 예약 및 결제정보의 중개서비스 또는 통신판매중개 시스템을 제공할 뿐, 통신판매의 당사자가 아닙니다. 모든 법률상담은 각 변호사회원이 직접 수행하며, 모든 변호사회원은 각 소속 법률사무소, 로</div>
       <div class="last22">펌에서 독립적으로 법률업무를 수행합니다. 그리고 로톡에 가입한 변호사들 상호간에는 어떠한 조직적인 관계가 없음을 밝힙니다. 로톡에 표시된 변호사회원의 정보는 해당 변호사가 직접 제공한 것이며 무단으로 복제, 편집,</div>
       <div class="last23">전시, 전송, 배포, 판매, 방송, 공연 등에 이용할 수 없습니다.</div>
       <div class="last24">LAWTALK</div>
       <div class="last25">(C) Law&Company Co., Ltd. ALL RIGHTS RESERVED.</div>
    </div> 
       <div class="bottom"></div>
       </div>











<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" id="slidebutton" style="margin-right: 155px;">
    <i class="material-icons" id="thbutton" style="font-size: 46px;">menu</i>
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
   <a href="write.jsp"><img src="assets/img/연필.jpg" style="width: 22px; position: absolute; left: -5px; top: -2px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;</a>       
    </div>
    <div class = "menu-items-bottom">
        <a class ="bottom-inner">
           <strong>공지사항</strong>
        </a>
        <i ng-if="noticeNew > 0" class="new-up">&nbsp;N</i>
        <br>
        <a href="compani.jsp" class ="bottom-inner">
            회사소개
        </a>
        <br>
        <a href="questionUser.jsp" class ="bottom-inner">
            자주 묻는 질문
        </a>
        <br>
        <a href="이용약관.jsp" class ="bottom-inner">
            이용약관
        </a>
        <br>
    </div>
    
    <div class="realbottomSlide">
        <div class="slideLogin">
            <label >
            <i class="material-icons slideicon" style="font-size: 36px;" >person_add</i>
            <br>
           <a  href="assets/client_signup.jsp">회원가입</a>
        </label>
        </div>
        <div class="slideLogin">
            <label>
            <i class="material-icons slideicon" style="left: 63px; top: 695px; font-size: 36px;">contacts</i>
            <br>
            <a href="assets/client_login.jsp">로그인</a>
        </label>
        </div>
    </div>
  </div>        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

	

	function join(){
    joinForm.submit();
    console.log("들어옴");
 	}

	/* function getBlack(){
		console.log("sadasd")
		const checkbox1 = document.getElementById("checkbox1");
		const blackBox = document.getElementById("blackBox");
		
		if(checkbox1.checked){
			blackBox.style.background-color= black;
			console.log("ssssssssssssssss")
		}
		
	} */
	
	
	jQuery(document).ready(function(){
		jQuery('#checkbox1').on('click', function(){
			if(jQuery('#checkbox1').is(':checked')){
				jQuery('#blackBox').css('background-color', 'black');
			}
			else{
				jQuery('#blackBox').css('background-color', '#cfcfcf');
			}
		});
	});
	
	$('.DOC_TEXT').keyup(function (e){
	    var content = $(this).val();
	    $('#counter').html("("+content.length+" / 최대 200자)");    //글자수 실시간 카운팅
	    if (content.length > 20){
	        alert("제목은  최대 20자까지 입력 가능합니다.");
	        $(this).val(content.substring(0, 20));
	        $('#counter').html("(200 / 최대 200자)");
	    }
	});
	
</script>
</html>




