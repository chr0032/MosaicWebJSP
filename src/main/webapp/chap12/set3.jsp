<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set3.jsp</title>
</head>
<body>
<%
	Date x = null;
%>
<c:set var="current" value="<%= new Date() %>" scope="session"/>

<c:set target="${current}" property="year" value="116"/>
<c:set target="${current}" property="month" value="7"/>
<c:set target="${current}" property="date" value="25"/>

current = ${current} <br>
current.year = ${current.year + 1900}<br>
current.month = ${current.month + 1}<br>
current.date = ${current.date}<br>

</body>
</html>