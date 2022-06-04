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
		<style>
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
    background-color: #ffd180;
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
		</style>
	</head>
	<body class="is-preload">
	
		<c:set var="userWriteList" value="${userWriteList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>
	
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
					<div class="logo-title">
			                  		<a style="cursor: poniner; color:#ff6d37; font-size:40px; text-transform: uppercase;" class="logo-title-font"><strong style="color: white;font-weight: bold;">lawknow</strong></a>
					</div>	
						<div class="inner">

							<!-- Main -->
								<section class="main">
									<a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/boardMain.png" alt="" /></a>
									<header class="major">
									<a href="LawKnowMainPage.jsp" style="position: relative;top: -151px;left: -462px;font-weight: bold;">< LawKnow메인페이지</a>
										<h1>MY LAWKNOW 지식인</h1>
										<p></p>
									</header>

									<div class="table-wrapper">
										<div style="display:flex; justify-content:space-between;">
											<span>글 개수 : ${total}개</span>
											<button style="border-radius:0;" onclick="location.href = '${pageContext.request.contextPath}/UserWrite.uw'">글 쓰기</button>
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
															<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
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
																<a href="${pageContext.request.contextPath}/userWrite/UserWriteListsOk.uw?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
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