<%@page import="com.hybrid.domain.Dept"%>
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
<title>set2.jsp</title>
</head>
<body>

<%-- 	<c:set var="dept" value="<%=new Dept() %>"/> --%>
<%-- 	1번 <c:set target="${pageScope.dept}" property="deptno" value="65"/> --%>
<%-- 	2번 <c:set target="${pageScope.dept}" property="dname" value="총무부"/> --%>
<%-- 	3번 <c:set target="${pageScope.dept}" property="loc" value="서울"/> --%>

<%

	pageContext.setAttribute("dept", new Dept());
	//1번
	((Dept)(pageContext.getAttribute("dept"))).setDeptno(65);
	//2번
	((Dept)(pageContext.getAttribute("dept"))).setDname("개발부");
	//3번
	((Dept)(pageContext.getAttribute("dept"))).setLoc("부산");

%>		

<!-- to String에 의해서 나옴 -->
pageScope.dept = ${pageScope.dept} <br> 
<!-- EL변수에서 찾아서 함 -->
dept           = ${dept} <br>
dept.deptno    = ${dept.deptno} <br>
dept.dname     = ${dept.dname} <br>
dept.loc       = ${dept.loc}
	
</body>
</html>