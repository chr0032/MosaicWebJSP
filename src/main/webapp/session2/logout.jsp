<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	session.invalidate();
	response.sendRedirect("/");
%>
<h1>로그아웃 성공! *^^*</h1>
<a href="loginForm.jsp">로귄!!!!!!!!!!</a>
<a href="dept.jsp">부사리슷흐!!!!!</a>

</body>
</html>