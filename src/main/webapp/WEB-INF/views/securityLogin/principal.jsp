<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
principal : <br>
${principal }<br><br>
${principal.getName }
<sec:authentication property="principal.username" var="username"/>
principal : <br>
${username }
</body>
</html>