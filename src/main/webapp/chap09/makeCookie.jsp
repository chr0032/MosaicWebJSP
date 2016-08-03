<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("최범균","utf-8"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body>
<%
	
	Cookie c = new Cookie("id","hong");
	c.setPath("/chap09");
	
	response.addCookie(c);
	
%>
<h1>쿠키 생성</h1>
</body>
</html>