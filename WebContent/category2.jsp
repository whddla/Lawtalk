<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/client_request_waiting.css">
<style>

* {
    box-sizing: border-box;
}

html,
body {
	background-color:#f8f8f8;
    width: 100%;
}

body {
    margin: 0;
    padding: 0;
}

a{
	text-decoration: none;
}

.offcanvas-body{
	margin: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
}


.menu-items-bottom{
    margin-left: 2px;
    margin-bottom: 0;
    text-align: left;
    width:99%;
    height: 225px;
    line-height: 41px;
}


.bottom-inner{
    text-decoration: none;
    color: #000;
    font-weight: 900;
    cursor: pointer;
}
.bottom-inner:hover{
    color: #000;
}

.new-up{
    color: #ff6d37;
    font-family: Amplitude Medium;
    font-size: 12px;
    position: relative;
    text-decoration: none;
    transition: color .2s ease-out;
    top: -8px;
    left: -9px;
    font-weight: bolder;
}
.realbottomSlide{
    width: 100%;
    display: flex;
    height: 113px

}
.slideLogin{
    flex: 1;
    text-align: left;
    cursor: pointer;
    font-weight: bold;
}

.slideicon{
    
    font-size: 41px;

}
.realbottomSlide a{
    text-decoration: none;
    color: #000;
}

.realbottomSlide a:hover{
    color: #000;
}

.one{
    cursor: pointer;
}

.iflower{
text-align: center;
position: relative;
top: -100px;
}
.ififif{
color: #333;
font-size: 18px;
font-weight: bold;
}
.ansim{
color: #222;
font-size: 15px;
margin-top: 16px;
}
.withlawer{
color: #f50;
font-size: 14px;
margin: 0 8px;
padding-bottom: 4px;
text-decoration: none;
font-weight: bold;
text-align: center;

}

.quick-menu{
height: 46px;
width: 285px;
margin-bottom: 17px;
display: flex;
margin-top: 40px;
}
.one{
margin-left: 3px;
height: 88px;
margin-right: 8px;
width: 88px;
display: inline-block;
text-align: center;
font-weight: 600;
}
.secondpart{
margin-bottom: 23px;
padding: 21px 2px 19px;
border-bottom: 1px solid #333;
border-top: 1px solid #333;
line-height: 2.5;
padding: 20px 0;
text-align: left;
width: 281px;
height: 200px;

}
.fourbox{
width: 100%;
height: 37px;
}
.findlower{
color: black;
text-decoration: none;
font-weight: 900;
font-size: 18px;
}
.writeglesigi{
color: #333;
margin-bottom: 24px;
border-bottom: 1px solid #333;
cursor: pointer;
font-family: Notokr-Bold;
font-size: 14px;
line-height: 28px;
padding-bottom: 21px;
position: relative;
width: 285px;
height: 45px;
font-weight: bold;
}


#slidebutton{
outline: none;
border: 0ch;
width: 65px;
height: 52px;
}

#slidebutton:focus{
border: white;
outline: none;
outline: white;
}
#slidebutton:checked{
outline: none;
outline: white;
border: white;
}
#slidebutton:visited{
outline: none;
border: white;
outline: white;
}

#slidebutton { color: black; background-color: #fff; cursor: default; }
#slidebutton:active, #slidebutton:focus { border: none; box-shadow: none; }

.rowtalklogo {
    width: 175px;
    height: 38px;
    margin: 0 auto;
    text-align: center;
    line-height: 46px;
    position: relative;
    left: 74px;
    top: -3px;
	color: #ff6d37;
    font-size: 40px;
    text-transform: uppercase;
}

.logo-title{
	width: 100%;
	text-align: center;
	color: #ff6d37;
	font-size: 40px;
	text-transform: uppercase;
	border-bottom: 1px solid #e3e3e3;
}

.page-container {
	padding-top: 1.25rem;	
	padding-bottom: 60px;
	background-color: #f8f8f8;
	font-family: 'Jua', sans-serif;
}

.header-default {
	height: 140px;
    padding: 0px 10px;
    margin: auto;
    border-radius: 0;
    position: relative;
    display: block;
    width: 1404px;
    margin-top: 66px;
}

.top-header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: #fff;
    z-index: 1;
    box-shadow: 0 0 5px 0 rgb(0 0 0 / 16%);
}

.banner {
	background: #FF6431;
	border-radius: 25px;
	height: 100%;
}

.logo-law {
	display: inline-block;
    margin: 0 auto;
    color: #ff6d37;
    font-size: 25px;
    vertical-align: middle;
}

.container {
	width:100%;
	position: relative;
	height: 100%;
    display: flex;
}

.image-wrap {
	position: relative;
	float: left;
	order: 1;
    width: 20%;
}

.category-image {
	max-width: 100%;
    max-height: 90%;
    display: inline-block;
    position: absolute;
    bottom: 0;
    margin-left: 131px;
    border: 1px solid;
    border-radius: 74px;
    margin-bottom: 7px;
}

.title-wrap {
	display: flex;
	order: 2;
    padding-left: 2rem;
    z-index: 10;
    --text-opacity: 1;
    color: #fff;
    color: rgba(255,255,255,var(--text-opacity));
    align-items: center;
}

.top-span {
	font-size: 33px;
	margin-top: 0.25rem;
}

.bottom-span{
	margin-top: 0.25rem;
}

.bottom-container {
	display: flex;
    max-width: 1500px;
	margin-top: 1.5rem;
	margin-left: auto;
    margin-right: auto;
    width: 100%;
    padding-left: 2.5rem;
    padding-right: 2.5rem;
	background-color: #f8f8f8;
}

.row {
	 margin-left: -0.5rem;
    margin-right: -0.5rem;
}

.side-bar {
	padding-left: 0.75rem;
    padding-right: 0.75rem;
	width: 16.66667%;
	float: left;
	background-color: #f8f8f8;
}

.sidebar-desktop {
	padding: 0;
}

.side-category {
	margin-top: 12px;
	margin-bottom: 0;
    padding-left: 0;
    list-style: none;
}

.side-category>li{
	width: 100%;
	float: none;
	position: relative;
    display: block;
}

.side-category>li>a{
	color: #333;
	position: relative;
	display: inline-block;
    padding: 48px 2px 4px;
    border-radius: 0;
	 font-size: 23px;
	text-decoration: none;
	cursor:pointer;
}


.choice {
    border-bottom: 3px solid #ff6d37;
}

.main-wrap {
	position: relative;
	min-height: 1px;
	float: left;
    width: 83.33333%;
	padding-left: 0.75rem;
    padding-right: 0.75rem;
}

.question-wrap {
	width: 100%;
	padding-right: 1rem;
}

.question-header {
	display: flex;
	padding-top: 0.5rem;
	padding-left: 0;
    padding-right: 0;
	margin-bottom: 1rem;
	justify-content: space-between;
	align-items: center;
	border-bottom-width: 1px;
}


button {
	cursor:pointer;
	background: none;
	border-radius: 3px;
	text-transform: none;
	appearance: none;
	padding: 0;
	overflow: visible;
}

.tab_box {
	display: inline-block;
	font-size: 25px;
}

.tab_box .active {
    color: #e54c1fbd;
    border-bottom: 2px solid #ff4e00;
}

tabs {
	color: #e3e3e3;
	font-size: 1.125rem;
    margin-right: 0;
    width: 100px;
    padding-top: 0.5rem;
    padding-bottom: 0.5rem;
	display: none;
}

.sorting {
	padding-bottom: 0.5rem
}

.a-card-question-list {
	background-color: #fff;
	display: flex;
    flex-wrap: wrap;
    padding: 1rem;
    position: relative;
    margin-bottom: 10px;
    padding:0.75rem 1.25rem 0.5rem;
        border-radius: 5px;
    border-width: 1px;
}

.a-card-aside-card {
	width: 65px;
	display:block;
}


.a-wrapper {
	width: 100%;
	position: relative;
    display: inline-block;
}

.a-wrapper .badge{
	    display: block;
    margin-top: -12px;
    width: 45px;
    height: 85px;
    text-align: center;
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;
    padding: 15px 0;
    --text-opacity: 1;
    color: #7d7d7d;
    color: rgba(125,125,125,var(--text-opacity));
    --bg-opacity: 1;
    background-color: #f6f6f6;
    background-color: rgba(246,246,246,var(--bg-opacity));
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

.number {
	margin: 15px 0 15px;
}

li {
	text-decoration: none;
}
.ul {
	margin-top: 0;
	margin: 0;
	padding: 0;
}

.a-card-main {
	width: calc(100% - 65px);
}

.a-card-header {
	border-width: 0;
	padding: 0 0 10px;
}

.a-card-header a{
	text-decoration: none;
}

.a-card-header a{
	--text-opacity: 1;
    color: #333;
    color: rgba(51,51,51,var(--text-opacity));
    background-color: transparent;
}

.a-card-header-title {
	font-weight: 100;
	font-size: 1.125rem;
	margin: 0;
    word-break: break-all;
    
}

.a-card-headerInfo {
	font-size: .75rem;
    --text-opacity: 1;
    color: #989898;
    color: rgba(152,152,152,var(--text-opacity));
}

.a-card-content {
	padding: 0;
	font-weight: 200;
}

.viewCount {
	font-size:15px;
}

.answer {
	float: right;
	color: #989898;
	font-size:14px;
}

h3 {
	margin: 0;
}

* {
	    border: 0 solid #e3e3e3;
}

hr {
	margin-top: 12px;
}




.btn-like {
  color: transparent;
  text-shadow: 0 0 2px rgba(255,255,255,.7), 0 0 0 #000;
  font-size: 20px;
}
.btn-like:hover {
  text-shadow: 0 0 0 #ea0;
}
.btn-like.done {
  color: inherit;
  text-shadow: 0;
}
.btn-like.done:hover {
  color: transparent;
  text-shadow: 0 0 0 #777;
}



</style>
<title>로노 | 상담 목록</title>
</head>
<body>
<div class="top-header">
		<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample" id="slidebutton">
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
	                    <img src="assets/img/연필.jpg" style="width: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;상담글쓰기&nbsp;>       
	                 </div>
	                    <div class = "menu-items-bottom">
                        <a class ="bottom-inner">
                            공지사항
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
                           <a href="http://localhost:9000/kovengerss/signup.jsp">회원가입</a>
                        </label>
                        </div>
                        <div class="slideLogin">
                            <label>
                            <i class="material-icons slideicon" style="left: 11px;">contacts</i>
                            <br>
                            <a href="http://localhost:9000/kovengerss/login.jsp">로그인</a>
                        </label>
                        </div>
                    </div>
	           	</div>
		</div>			
			<div class = "logo-law">
				<a style="color:#FF6431"href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">
				<strong>LAWKNOW</strong>
				</a>
            </div> 
		</div>
		<div class="page-container">
			<header class="header-default">
				<div class="banner">
					<div class="container">
						<div class="image-wrap">
							<img class="category-image" src="assets/img/상속.jpg">
						</div>
						<div class="title-wrap">
							<div class="title">
								<div class="top-span">
									<span>상속</span>
								</div>
								<div class="bottom-span">
									<small>현직 변호사가 답합니다.</small>
								</div>							
							</div>
						</div>
					</div>
				</div>
			</header>
		<section class="bottom-container">
				<aside class="side-bar">
					<div class="sidebar-desktop">
						<ul class="side-category">
						<!-- 메인페이지  a태그 -->
							<a style="text-decoration: none; color: #333; font-weight: 1000" href="http://localhost:9000/kovengerss/LawKnowMainPage.jsp">
								<span>홈</span>
							</a>
							<hr>
							
							<li>
								<!-- 상담목록 사이드리스트 -->
								<a class="" href="http://localhost:9000/kovengerss/client_request_waiting.jsp">이혼</a>
							</li>
							<li>
								<a class="choice "href="http://localhost:9000/kovengerss/category2.jsp">상속</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category3.jsp">성범죄</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category4.jsp">건설/부동산</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category5.jsp">재산범죄</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category6.jsp">기업일반</a>
							</li>
							<li>
								<a href="http://localhost:9000/kovengerss/category7.jsp">형사기타</a>
							</li>
						</ul>
					</div>
				</aside>
				<main class="main-wrap">
					<div class="question-wrap">
						<div class="question-header">
							<div class="tab_box">
								<button class="tabs active" onclick ="tabOpen(event, 'answer-complete');" id="basic_content">
										<span class="bullet">답변완료</span>
								</button>
								<button class="tabs" onclick="tabOpen(event, 'answer-waiting');" >
										<span class="bullet">답변대기</span>
								</button>
							</div>
							<div class="sorting">
								<div class="sort-tabs">
									<button class="-acrive">인기순</button>
									|
									<button>최신순</button>
								</div>
							</div>
						</div>
							<div class="content" id="answer-complete" style =" display: block;">
								질문을 등록해주세요.
								
						</div>
						<div class="content" id ="answer-waiting" style ="display: none;">
								
							
					<!--  -->	
						<c:forEach var="userWrite" items="${catagoryOne}">
								<div class="a-card-question-list">
								<aside class="a-card-aside-card">
									<div class="a-wrapper">
										<div class="badge">
										<button class="btn-like">👍</button>
										 <div id="likeSpot" class="number">조회수:${userWrite.getReadCount()}</div>
											<!-- <button id="like" type ="button" value="좋아요"  onclick="iike()">
											<img style="width: 21px;" src="http://rgo4.com/files/attach/images/2681740/530/423/028/872b2e6252060b8106541411529ba773.png">
										</button>	-->
											 
										</div>
									</div>
								</aside>
								<div class="a-card-main">
									<header class="a-card-header"> 
									<%--  --%>
									<a href="${pageContext.request.contextPath}/userWrite/UserTotalDetailOk.uw?userWriteNum=${userWrite.getUserWriteNum()}">${userWrite.getTitle()}</a>
											<h1 class="a-card-header-title">
												${userWrite.getTitle()}
											</h1>
											<span class="a-card-headerInfo">${userWrite.getWriteDate()}</span>
										</a>
										
									</header>
									<div class="a-card-cotent">
										<span class="viewCount">
										분야 : 
											<i class="number">${userWrite.getField()}</i>
										</span>
										<span class="answer">답변대기</span>
									</div>
								</div>
							</div>
						</c:forEach>	
						</div>
					</div>
				</div>
			</main>
		</section>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<script >
	function tabOpen(evt, contentName){
			var i, tabcontent, tab_btn;
			
			tabcontent = document.getElementsByClassName("content");
			for(i = 0; i<tabcontent.length; i++){ //내용을 나열
				tabcontent[i].style.display = "none";
			}
			
			tab_btn = document.getElementsByClassName("tabs");
			for(i = 0; i<tab_btn.length; i++){ // 탭 버튼 나열
				
				//탭 버튼을 눌렀을 때 기존 탭 class 삭제
				tab_btn[i].className = tab_btn[i].className.replace(" active",""); 
				
				
			}
				//탭을 눌렀을 때 해당 id의 내용을 출력
				document.getElementById(contentName).style.display = "block";
				//class 생성 이벤트 발생
				evt.currentTarget.className += " active"; 
		}
	

$(".btn-like").click(function() {
	$(this).toggleClass("done");
	
	})
</script>
</html>
