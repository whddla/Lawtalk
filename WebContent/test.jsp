<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
	<c:set var ="randomId" scope = "/kovengerss/src/com/lawknow/userRegister/UserRandomIdOk.java"/>
	<c:out value = "randomId"/>
</body>
</html>