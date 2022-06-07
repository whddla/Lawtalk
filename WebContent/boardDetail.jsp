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
<html>
   <head>
      <title>게시글 상세보기</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <style>
      
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

      
      
      
         form textarea{
            border-radius:0; 
            resize:none;
            color:black !important;
         }
         
         form div#reply{
            display:flex;
            margin-bottom:3%;
         }
         
         input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
         
         ul.actions li {
             padding: 0 0 0 0.2em;
         }
         
         p.content{
            width:63%;
         }
         
         p.writer{
            width:20%;
            font-weight:bold;
         }
        #page-wrapper > :first-child{
        	background-color: #e6e6e6;
        }
        #page-wrapper > :last-child{
        background-color: #e6e6e6;
            height: 500px;
        }
        input[type="button"].primary{
        background-color: #e6e6e6;
    color: #ffffff !important;
        }
         input[type="button"].primary:hover{
         	   background-color: #e6e6e6;
         }
        .main{
        margin-top: 123px;
            width: 1000px;
    	margin: 0 auto;
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


/*  */



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
.bottombox{
 background-color: white;
    width: 1001px;
    position: relative;
    left: 246px;
    height: 243px;
    top: 0px;
}

      </style>
   </head>
   <body class="is-preload">
   		<c:set var="userWrite" value="${userWrite}"/>
   		<c:set var="files" value="${files}"/>
   		<c:set var="page" value="${page}"/>
      <!-- Page Wrapper -->
      
      <nav class="header-nav directive">
            <a class ="left" href="UserWriteListsOk.uw" >
                <img  class = "lefthwa"src = "${pageContext.request.contextPath}/assets/img/왼화살jpg.jpg">
            </a>
            <h3 class="title">
                <a class = "maintitles">지식인 상세보기</a>
            </h3>
        </nav>
      
      
      
         <div id="page-wrapper">

            <%-- <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">
                     <jsp:include page="/app/fix/header.jsp"/>
                  </div>
               </div> --%>
		
			


            <!-- Wrapper -->
               <div class="wrapper">
               <div class="logo-title" style="position: relative;top: 154px;">
			                  		<a style="cursor: poniner; color:#ff6d37; font-size:40px; text-transform: uppercase;" class="logo-title-font"><strong style="color: orange;font-weight: bold;">lawknow</strong></a>
			</div>	
                  <div class="inner">

                     <!-- Main -->
                     <section class="main">
                        <a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/boardView.png" alt="" /></a>
                        <div class="col-12">
                           <ul class="actions" style="display:flex; justify-content:flex-end;">
                              <li><input type="button" value="글쓰기" class="primary" onclick="location.href = '${pageContext.request.contextPath}/userWrite/UserWrite.uw?page=${page}'"/></li>
                              <li><input type="button" value="목록" class="primary" onclick="location.href = '${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${page}'"/></li>
                              <c:if test="${not empty userNum}">
	                              <li><input type="button" value="수정" onclick="location.href = '${pageContext.request.contextPath}/userWrite/UserWriteUpdate.uw?userWriteNum=${userWrite.getUserWriteNum()}&page=${page}'"/></li>
	                              <li><input type="button" value="삭제" onclick="location.href = '${pageContext.request.contextPath}/userWrite/UserWriteDeleteOk.uw?userWriteNum=${userWrite.getUserWriteNum()}'"/></li>
	                          </c:if>
                           </ul>
                        </div>
                        <header class="major">
                        
                           <h2 style="text-align:left;">${userWrite.getTitle()}</h2>
                           <p style="text-align:left; margin-bottom:1%;font-weight: bold;">질문분야 : ${userWrite.getField()}</p>
                           <%-- <p style="text-align:left; margin-bottom:1%"><c:out value="회원번호 : ${userNum}"></c:out> </p>    --%>
                        </header>
						<hr style="margin-top:0;">
                           <div>
                              첨부파일
                           </div>
                           <!-- 첨부파일 목록 -->
                           <c:choose>
                           	<c:when test="${files != null and fn:length(files) > 0}">
	                           <c:forEach var="file" items="${files}">
		                           <a href="${pageContext.request.contextPath}/userWrite/FileDownloadOk.uw?fileName=${file.getFileName()}&fileNameOriginal=${file.getFileNameOriginal()}">
		                           	<c:out value="${file.getFileNameOriginal()}"/>
		                           </a>
		                           <br>
	                           </c:forEach>
	                       	</c:when>
	                       	<c:otherwise>
	                       		<br>
	                       		첨부파일이 없습니다.
	                       	</c:otherwise>
                           </c:choose> 
                        <hr />
                        <!-- 내용 -->
                        <h3><pre>${userWrite.getContent()}</pre></h3>
                     </section>
                   <!--   <section class="main accent2" style="padding:3%">
                        <header class="major" style="text-align:left;">
                           <h2>댓글</h2>
                           <p>여러분의 소중한 댓글을 작성해주세요.</p>
                        </header>
                        <form method="post" action="#" class="combined" style="width:auto;">
                           <textarea name="content" id="content" placeholder="비속어를 사용하지 말아주세요." class="invert" rows="5" style="border-radius:0; resize:none;"></textarea>
                           <input id="register" type="button" class="primary" value="등록" onclick="insert()"/>
                        </form>
                        <form action="#" id="replies" class="combined" style="flex-direction:column; margin:0; display:contents;">
                        </form>
                     </section> -->
                  </div>
               </div>

            <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">

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
                  </div>
               </div>

         </div>

      <!-- Scripts -->
         <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script>
         	let contextPath = "${pageContext.request.contextPath}";
         	let boardNumber = "${board.getBoardNumber()}";
         	let memberNumber = "${memberNumber}";
         </script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/reply.js"></script>
   </body>
</html>




















