<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<!-- 
	Altitude by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<!-- userWriteList != null and fn:length(userWriteList) > 0 -->
<html>
	<head>
		<title>게시글 목록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">
		<style>
		
		@import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Noto+Sans+KR:wght@500&family=Roboto:ital,wght@0,300;0,400;1,300;1,400&display=swap');



*{
 font-family: 'Noto Sans KR', sans-serif;
}

body{
    background-color: #e6e6e6;
    top: 0px;
    height: 100%;
    width: 100%;
    overflow-x: hidden
}

.faq{
    width: 720px;
    background-color: #e6e6e6;
    line-height: 1;
    margin: auto;
    height: 1768px;
}
.header-nav{
    background: #372e2c;
    height: 48px;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 100;
    display: block;
}
.left{
    color: #aa999d;
    font-size: 25px;
    height: 48px;
    left: 0;
    line-height: 48px;
    position: absolute;
    text-align: center;
    top: 0;
    width: 46px;
    text-decoration: none!important;
    cursor: pointer;
    
}
.lefthwa{
    background-color: white;
    width: 54%;
   

}
.title{
    color: #aa999d;
font-size: 18px;
height: 48px;
line-height: 48px;
text-align: center;
width: 100%;
font-weight: 700;
margin-top: 0px;
}
.maintitles{
    color: inherit;
    text-decoration: none!important;
    cursor: pointer;
    width: auto;
    height: auto;
   
}

.mycounsel{
    background: white;
    height: 48px;
    left: 0;
    position: relative;
top: 42px;
left: -7px;
    width: 1706px;
    z-index: 100;
    display: block;
    
}

.qna-page-title{
    padding: 0 4px;
    width: 940px;
    color: #555;
    font-size: 16px;
    font-weight: 400;
    line-height: 50px;
    margin: 0 auto;
}
.big-box{
    margin: 0 auto;
    width: 940px;
    box-sizing: border-box;
    height: 681px;
    background: white;
    position: relative;
    top: 117px;

}
.sort{
    margin-bottom: 0;
    padding: 15px 0;
    background-color: #fff;
    color: #8c8c8c;
    font-size: 14px;
    text-align: left;
    width: 100%;
    box-sizing: border-box;
    height: 60px;
    display: flex;
    line-height: 34px;
    font-weight: 800;
   

}
.sort-box{
    width: 81px;
    height: 60px;
    color: #8c8c8c;
}
.qna-list-contents{
    border: 1px solid #e6e6e6;
display: table;
width: 100%;
position: relative;
    height: 635px;
}

.historybox{
    width: 100%;
    height: 400px;
    border-bottom: 1px solid #e6e6e6;
}
.qna-list-empty-title{
/*     color: #c9c9c9;
font-size: 22px;
line-height: 51px;
margin-bottom: 3px;
font-weight: 700;
width: 100%;
height: 45px; */
/* margin: auto; */
/* text-align: center;
padding: 176px 0; */
color: #c9c9c9;
    font-size: 22px;
    line-height: 51px;
    margin-bottom: 3px;
    font-weight: 700;
    width: 100%;
    height: 279px;
    /* margin: auto; */
    text-align: center;
    padding: 57px 0;
    line-height: 224px;
}
.bottombox{
    height: 142px;
width: 100%;

padding: 29px 0!important;
}

.onebox{
flex: 1;
}
.oneinner{
width: 100%;
height: 100px;

}
.oneinnertwo{
height: 100px;
}



.twobox{
flex: 1;
}
.pencil{
width: 10%;
position: relative;
top: 27px;
left: 75px;
}
.pencilwrtie{
position: relative;
top: 11px;
left: 80px;

}
.lt-counsel{
font-size: 20px;
margin-bottom: 19px;
margin-top: 0px;
color: #333;
width: 100%;
height: 54px;
text-align: center;
}

.thth{
width: 80%;
height: 73px;
margin: 0 auto;
text-align: center;
position: relative;
top: -11px;
}
.phone-advice{
display: inline-block;
vertical-align: middle; 
width: 292px;
height: 73px;
font-size: 15px;
line-height: 22px;
margin-bottom: 8px;
line-height: 27px;
}
.slash{
height: 71px;
margin-right: 22px;
width: 71px;
display: inline-block;
vertical-align: middle;
}
.linkline{
color: #ff4e00;
text-decoration: none;
/* border-bottom: 2px solid #ff4e00; */
cursor: pointer;
font-weight: bold;
}
.fkfk{
font-size: 15px;

color: #777;
}


.big-footer{
    width: 100%;
    height: 484px;
    background-color: white;
    position: relative;
    bottom: -175px;
    margin: 0 auto;
}
.sort-box a{
    color: #8c8c8c;
    text-decoration: none;
}


.rowtalklogo {
    color: #ff6d37;
    font-size: 40px;
    text-transform: uppercase;
    POSITION: RELATIVE;

    TOP: 66PX;
    left: 127px;
}
.lt-footer a{
    cursor: pointer;
    color: #000;
    text-decoration: none;
}
.lt-footer a:hover{
    color: #000;
}

.lt-footer{
    border-top: 1px solid #e0e0e0;
    margin-top: 100px;
    background-color: #fff;
    margin: auto;
    position: relative;
    display: block;
    width: 100%;
    height: 189px;
    display: flex;
    max-width: 1080px;
    min-width: 600px;
}

.inner-footer{
    max-width: 1080px;
    width: 100%;
    margin: auto;
    position: relative;
    height: 300px;
    display: flex;
}

.firstbox{
    box-sizing: border-box;
    border: 0 solid #e3e3e3;
    font-size: .75rem;
    width: 30%;
    height: 300px;

}

.secondbox{
    box-sizing: border-box;
    border: 0 solid #e3e3e3;
    font-size: .75rem;
    width: 70%;
    height: 300px;
    margin-left: 109px
    
}

.firstbox div strong{
    font-size: 30px;
}


.footer__menu{
    display: flex;
    flex-wrap: wrap;
    list-style-type: none;
    font-size: .875rem;
    max-width: 520px;
    margin-top: 0;
    height: 25px;
    POSITION: relative;
    TOP: 15PX;
}

.lists{
    margin-right: 0.75rem;
    box-sizing: border-box;
    border: 0 solid #e3e3e3;
    display: list-item;
    color: #757575;
}

.informationfooter{
    display: flex;
    position: relative;
    left: 38px;
}


.smallones{
    font-size: 1px;
}
.footera{
    cursor: pointer;
    color: #000;
    text-decoration: none;
}

.secondfootertitle{
    padding-left: 35px;
   
    max-width: 520px;
    font-size: 17px;
    font-weight: 600;
}

.mypagebox{
    width: 260px;
    height: 96px;
    
}

.mypageboxtwo{
    position: relative;
    left: -111px;
}
.mypageboxtitle{
    width: 100%;
    height: 20px;
    font-size: 15px;
    margin-bottom: 12px;
    margin-top: 19px;
    font-size: 13px;
    height: 20px;
    line-height: 15px;
    font-weight: 900;

}

.mypageboxex{
    width: 100%;
    height: 24px;
}

.smallcharacter{
    color: #757575;
    font-size: 12px;
    line-height: 18px;
}

.lastfooter{
    border: 0;
    height: 292PX;
}

.lastfooter div{
    width: 100%;
}

.footera:hover {
    color: #000;
}







.btn-action-question{
    position: fixed;
    display: flex;
    right: 28px;
    bottom: calc(1.65rem + -3px);
    z-index: 900;
    width: 60px;
    height: 60px;
    box-sizing: border-box;
    background-color: #ff6d37;
    color: #fff;
    overflow: visible;
    font-size: 30px;
    padding-left: 3px;
    line-height: 1.3;
    align-items: center;
    justify-content: center;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    box-shadow: 0 3px 5px -1px rgb(0 0 0 / 20%), 0 6px 10px 0 rgb(0 0 0 / 14%), 0 1px 18px 0 rgb(0 0 0 / 12%);
    border: none;
    border-radius: 50%;
    fill: currentColor;
    cursor: pointer;
    user-select: none;
    -webkit-appearance: none;
    
}

.buttoninbox{
    bottom: calc(100% - 50px);
    border: 2px solid #ff6d37;
    background-color: white;
    position: absolute;
    left: 50%;
    z-index: 100;
    transform: translate(-50%,-130%);
    border-radius: 5px;
    padding: 9px;
    line-height: 1;
    font-size: 12px;
    color: #333;
    animation: bounce-little 2s infinite;
    box-sizing: border-box;
    width: 87px;
    height: 40px;
    TEXT-ALIGN: center;
    FONT-WEIGHT: 900;
    line-height: 11px;
}

.buttoninbox a{
    position: relative;
    top: 0px;
    left: -1px;
}
.pencilatag{
    left: 2px;
    position: relative;
    top: 6px;
}

.arrow-down{
	width: 0;
	height: 0;
	border-top: 11px solid #ff6d37;/* 화살표 */
	border-left: 11px solid transparent;
	border-right: 11px solid transparent;
    position: relative;
    top: 2px;
    left: 21px;
}

.btn{
    outline: none;
}


.btn:focus{
    outline: none;
  }
 .btn:checked{
    outline: none;
 }

 .aaa{
    font-weight:bold ;
}

		
		
		
		
		
		
			table tbody tr{
				background-color:rgb(245 246 246 / 48%) !important;
			}
			.web-view {
				display:table-cell;
			}
			
			.mobile-view {
				display:none;
			}
			
			@media(max-width:660px){
				.web-view {
					display:none;
				}
				
				.mobile-view {
					display:table-cell;
				}
			}
			


#page-wrapper > :first-child, #page-wrapper > :last-child {
    background-color: #e6e6e6;
}
#page-wrapper > :last-child{
    HEIGHT: 400PX;
    }
    .main{
    	    margin: auto;
    width: 1138px;
    margin-top: 108px;
    }
    
     .logo-title {
	    display: flex;
	    width: 100%;
	    text-align: center;
	    margin-top: 32px;
	    align-content: space-between;
	    justify-content: center;
	    cursor: pointer;
}
.logo-title a{
	color: white;
    font-size: 40px;
    text-transform: uppercase
}


/* *{
    font-family: 'Noto Sans KR', sans-serif;
} */

body{
    background-color: #e6e6e6;
    top: 0px;
    height: 100%;
    width: 100%;
    overflow-x: hidden
}

.faq{
    width: 720px;
    background-color: #e6e6e6;
    line-height: 1;
    margin: auto;
    height: 1768px;
}
.header-nav{
    background: #372e2c;
    height: 48px;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 100;
    display: block;
}
.left{
    color: #aa999d;
    font-size: 25px;
    height: 48px;
    left: 0;
    line-height: 48px;
    position: absolute;
    text-align: center;
    top: 0;
    width: 46px;
    text-decoration: none!important;
    cursor: pointer;
    
}
.lefthwa{
    background-color: white;
    width: 54%;
   

}
.title{
    color: #aa999d;
font-size: 18px;
height: 48px;
line-height: 48px;
text-align: center;
width: 100%;
font-weight: 700;
margin-top: 0px;
}
.maintitles{
    color: inherit;
    text-decoration: none!important;
    cursor: pointer;
    width: auto;
    height: auto;
   
}

.mycounsel{
    background: white;
    height: 48px;
    left: 0;
    position: relative;
top: 42px;
left: -7px;
    width: 1706px;
    z-index: 100;
    display: block;
    
}

.qna-page-title{
    padding: 0 4px;
    width: 940px;
    color: #555;
    font-size: 16px;
    font-weight: 400;
    line-height: 50px;
    margin: 0 auto;
}
.big-box{
    margin: 0 auto;
    width: 940px;
    box-sizing: border-box;
    height: 681px;
    background: white;
    position: relative;
    top: 117px;

}
.sort{
    margin-bottom: 0;
    padding: 15px 0;
    background-color: #fff;
    color: #8c8c8c;
    font-size: 14px;
    text-align: left;
    width: 100%;
    box-sizing: border-box;
    height: 60px;
    display: flex;
    line-height: 34px;
    font-weight: 800;
   

}
.sort-box{
    width: 81px;
    height: 60px;
    color: #8c8c8c;
}
.qna-list-contents{
    border: 1px solid #e6e6e6;
display: table;
width: 100%;
position: relative;
    height: 635px;
}

.historybox{
    width: 100%;
    height: 400px;
    border-bottom: 1px solid #e6e6e6;
}
		</style>
	</head>
	<body class="is-preload">
	
		<c:set var="userWriteList" value="${userWriteList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>
	
	
	<nav class="header-nav directive">
            <a class ="left" href="mypage.jsp">
                <img  class = "lefthwa"src = "assets/img/왼화살jpg.jpg">
            </a>
            <h3 class="title">
                <a class = "maintitles">MY LAWKNOW 지식인</a>
            </h3>
        </nav>
	
		<!-- Page Wrapper -->
			<div id="page-wrapper">
			
			 
        
				<!-- Wrapper -->
		<%-- 			<div class="wrapper">
						<div class="inner">
							<jsp:include page="/app/fix/header.jsp"/>
						</div>
					</div> --%>

				<!-- Wrapper -->
					<div class="wrapper">
					<div class="logo-title" style="position: relative;top: 118px; ">
			                  		<a style="cursor: poniner; color:#ff6d37; font-size:40px; text-transform: uppercase;" class="logo-title-font"><strong style="color: orange;font-weight: bold;">lawknow</strong></a>
					</div>	
						<div class="inner">

							<!-- Main -->
								<section class="main" style="margin-top: -31px;">
									<a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/boardMain.png" alt="" /></a>
									<header class="major">
									<a href="UserMyPageOk.ul" style="position: relative;top: -151px;left: -462px;font-weight: bold;">< LawKnow 마이페이지</a>
										<h1>MY LAWKNOW 지식인</h1>
										<p></p>
									</header>

									<div class="table-wrapper">
										<div style="display:flex; justify-content:space-between;">
											<span>글 개수 : ${total}개</span>
											<button style="border-radius:0;    border-radius: 0; position: relative;left: 209px;" onclick="location.href ='${pageContext.request.contextPath}/UserWrite.uw'">글 쓰기</button>				
												<button style="border-radius:0;background-color: #ffb74d;" onclick="location.href ='${pageContext.request.contextPath}/UserAnswerOk.uw'">LawKnow 전체 글</button>
										</div>
										<table>
											<caption style="text-align:left; margin-bottom:3%;">
												
											</caption>
											<thead>
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>카테고리</th>
													<th class="web-view">날짜</th>
													<th class="web-view">조회수</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${userWriteList != null and fn:length(userWriteList) > 0}">
														<c:forEach var="userWrite" items="${userWriteList}"> 
															<tr>
																<td><c:out value="${userWrite.getUserWriteNum()}"></c:out></td>
																<td>
																	<a href="${pageContext.request.contextPath }/userWrite/UserWriteDetailOk.uw?userWriteNum=${userWrite.getUserWriteNum()}&page=${page}">${userWrite.getTitle()}</a>
																</td>
																<td>${userWrite.getField()}</td>
																<td class="web-view">${userWrite.getWriteDate()}</td>
																<td class="web-view">${userWrite.getReadCount()}</td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="5" align="center">작성한 상담글이 없습니다.</td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
										
										<!-- 페이징 처리 -->
									 	<table style="font-size:1.3rem">
											<tr align="center" valign="middle">
												<td class="mobile-view">
													<c:if test="${page > 1}">
														<a href="${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${page - 1}">&lt;</a>
													</c:if>
												
													<c:out value="${page}"/>&nbsp;&nbsp;
													
													<c:if test="${page < realEndPage}">
														<a href="${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${page + 1}">&gt;</a>
													</c:if>
												</td> 
												<td class="web-view">
													<c:if test="${startPage > 1}">
														<a href="${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${startPage - 1}">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a  style ="color:orange"href="${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
											</tr>
										</table>
									</div>
								</section>
						</div>
					</div>

				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">
						
						
				<div class="bottombox" style="background-color: white; width: 1137px; position: relative;left: 178px;height: 229px;">
                    <h5 class="lt-counsel">
                        	상담을 시작하세요!
                    </h5>
                    <div class="thth">
                    <div class="phone-advice">
                       <span class="fkfk">ROWKNOW 지식 IN<br>
                        	당신의 고민을 여러 전문가가 답해드립니다</span><br>
                        <a class="linkline" href="write.jsp">ROWKNOW 지식 IN ></a>
                    </div>
                    <div class="slash" >

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

        




        
						
						
						
						
						

							<!-- Footer -->
								<!-- <footer id="footer">
									<section class="links">
										<div>
											<h3>Magna</h3>
											<ul class="plain">
												<li><a href="#">Aliquam tempus</a></li>
												<li><a href="#">Ultrecies nul</a></li>
												<li><a href="#">Gravida ultricies</a></li>
												<li><a href="#">Commodo etiam</a></li>
											</ul>
										</div>
										<div>
											<h3>Feugiat</h3>
											<ul class="plain">
												<li><a href="#">Morbi sem lorem</a></li>
												<li><a href="#">Praes sed dapi</a></li>
												<li><a href="#">Sed adipis nullam</a></li>
												<li><a href="#">Fus dolor lacinia</a></li>
											</ul>
										</div>
										<div>
											<h3>Tempus</h3>
											<ul class="plain">
												<li><a href="#">Donecnec etiam</a></li>
												<li><a href="#">Aapibus sedun</a></li>
												<li><a href="#">Namnulla tempus</a></li>
												<li><a href="#">Morbi set amet</a></li>
											</ul>
										</div>
										<div>
											<h3>Aliquam</h3>
											<ul class="plain">
												<li><a href="#">Lorem prasent dia</a></li>
												<li><a href="#">Nellentes ipsum</a></li>
												<li><a href="#">Diamsed arcu dolor</a></li>
												<li><a href="#">Sit amet cursus</a></li>
											</ul>
										</div>
									</section>
									<ul class="contact-icons">
										<li class="icon solid fa-home">1234 Fictional Street #5432 Nashville, TN 00000-0000</li>
										<li class="icon solid fa-phone"><a href="#">(000) 000-0000</a></li>
										<li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a></li>
									</ul>
									<p class="copyright">&copy; Untitled. All rights reserved.</p>
								</footer>
 -->
						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	</body>
	<script >
	
		console.log(userWriteList);
	</script>
</html>