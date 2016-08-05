<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<%
	HashMap<String,Object> mapData = new HashMap<String,Object>();
	mapData.put("name", "최홍만");
	mapData.put("today", new java.util.Date());
%>
	<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>"/>
	<c:set var="map" value="<%= mapData %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach.jsp</title>
</head>
<body>

<h1>1부터 100까지 홀수의 합</h1>
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum+i}"/>	
	</c:forEach>
	결과 = ${sum}
	
<h1>구구단: 4단</h1>
	<c:forEach var="i" begin="1" end="9">
		<li>4*${i} = ${4*i}
	</c:forEach>

<h1>int형 배열</h1>
	<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
		${status.index} - ${status.count} - [${i}] <br/>
	</c:forEach>

<h1>Map</h1>	
	<c:forEach var="i" items="${map}">
		${i.key} = ${i.value} <br>
	</c:forEach>
</body>
</html>