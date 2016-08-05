<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dept.jsp</title>
</head>
<body>

<h1>Dept 테스트</h1>

<!-- 1번,2번,3번  세가지 다 똑같은 것-->
<%-- 1번 <c:if test="${sessionScope.LOGIN eq null}"> --%>
<%-- 2번 <c:if test="${LOGIN eq null}"> --%>
<!-- 3번 -->
<c:if test="${empty LOGIN}">
	<c:redirect url="/session/loginForm.jsp"/> 
</c:if>
<%
// 	String login  = (String)session.getAttribute("LOGIN");
		
// 	if(login == null) {
		
// 		response.sendRedirect("/session/loginForm.jsp");
// 		return;		
		
// 	}
%>

<%

ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
DeptMapper mapper = ctx.getBean(DeptMapper.class);
mapper.delete(65);

mapper.insert(new Dept(65, "xxx", "yyy"));
mapper.selectAll();
List<Dept> depts = mapper.selectAll();
for (Dept dept : depts) {
	
	System.out.println(dept); 
	out.println(dept + "<br>");

}
System.out.println("=============================");
out.println("<br>");

mapper.update(new Dept(65, "xxx1", "yyy1"));
depts = mapper.selectAll();
for (Dept dept : depts) {
	System.out.println(dept); 
	out.println(dept + "<br>");
}
System.out.println("=============================");
out.println("<br>");

mapper.delete(65);
depts = mapper.selectAll();
for (Dept dept : depts) {
	System.out.println(dept); 
	out.println(dept + "<br>");
	
}


%>


<a href="/session/logout.jsp">로그아웃!</a>

</body>
</html>