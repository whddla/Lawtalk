<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>
	<table border="1" style="margin: 0 auto;">
		<tr>
			<th>내용</th>
		
		</tr>
		<c:forEach var="LawyerComment" items="${contentView}">
			<tr>
				<td><c:out value="${LawyerComment.getContent()}"/></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>