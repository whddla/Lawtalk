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
        	background-color: #ffd180;
        }
        #page-wrapper > :last-child{
        background-color: #ffd180;
            height: 500px;
        }
        input[type="button"].primary{
        background-color: #ffd180;
    color: #ffffff !important;
        }
         input[type="button"].primary:hover{
         	   background-color: #ffd180;
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
      </style>
   </head>
   <body class="is-preload">
   		<c:set var="userWrite" value="${userWrite}"/>
   		<c:set var="files" value="${files}"/>
   		<c:set var="page" value="${page}"/>
      <!-- Page Wrapper -->
         <div id="page-wrapper">

            <%-- <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">
                     <jsp:include page="/app/fix/header.jsp"/>
                  </div>
               </div> --%>
		
			


            <!-- Wrapper -->
               <div class="wrapper">
               <div class="logo-title">
			                  		<a style="cursor: poniner; color:#ff6d37; font-size:40px; text-transform: uppercase;" class="logo-title-font"><strong style="color: white;font-weight: bold;">lawknow</strong></a>
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
                           <p style="text-align:left; margin-bottom:1%">질문분야 : ${userWrite.getField()}</p>
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




















