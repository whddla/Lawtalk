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
			<th>번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이메일</th>
			<th>사무실이름</th>
			<th>사무실번호</th>
			<th>출신시험</th>
			<th>출생년도</th>
		</tr>
		<c:forEach var="Lawyer" items="${lawyerList}">
			<tr>
				<td><c:out value="${Lawyer.getLawyerNum()}"/></td>
				<td><c:out value="${Lawyer.getLawyerName()}"/></td>
				<td><c:out value="${Lawyer.getLawyerId()}"/></td>
				<td><c:out value="${Lawyer.getLawyerPw()}"/></td>
				<td><c:out value="${Lawyer.getLawyerEmail()}"/></td>
				<td><c:out value="${Lawyer.getLawyerOffice()}"/></td>
				<td><c:out value="${Lawyer.getLawyerOfficeNum()}"/></td>
				<td><c:out value="${Lawyer.getLawyerGraduateTest()}"/></td>
				<td><c:out value="${Lawyer.getLawyerBirth()}"/></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>