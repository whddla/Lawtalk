<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style >
.thHead{
	width:1%
}
	.tdone{
		width: 4%;
	}
	.tdtwo{
		width:12%;
	}
	.tdthree{
		width:50%;
	}
</style>
<title>Insert title here</title>
</head>
<body>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">분야</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
    </tr>
  </thead>
  <c:forEach var="userWrite" items="${UserwriteList}">
  <tbody>
    <tr>
      <th  class ="thHead"scope="row">#</th>
			<td class="tdone"><c:out value="${userWrite.getField()}"/></td>
			<td class="tdtwo"><c:out value="${userWrite. getTitle()}"/></td>
			<td class="tdthree"><c:out value="${userWrite.getContent()}"/></td>
    </tr>
  </tbody>
  </c:forEach>
</table>




<%-- <table border="1" style="margin: 0 auto;">
		<tr>
			<th>분야</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<c:forEach var="userWrite" items="${UserwriteList}">
			<tr>
				<td><c:out value="${userWrite.getField()}"/></td>
				<td><c:out value="${userWrite. getTitle()}"/></td>
				<td><c:out value="${userWrite.getContent()}"/></td>
			</tr>
		</c:forEach>
	</table> --%>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>