<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dept.jsp</title>
<style type="text/css">
   div {
      border: 1px solid black;
   }
</style>
</head>
<body>
   <h1>Dept 테스트</h1>
   
   <div><%
      Cookie[] cookies = request.getCookies();
   
      boolean loginStatus = false;
      if(cookies != null){
         for(Cookie c : cookies){
            String cname = c.getName();
            if(cname.equals("LOGIN")){
               loginStatus = true;
            }
         }
      }
      
      if(loginStatus == false){
         response.sendRedirect("/cookie/loginForm.jsp");
      }
      
      ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
      DeptMapper mapper = ctx.getBean(DeptMapper.class);
      mapper.delete(65);
      
      mapper.insert(new Dept(65, "xxx", "yyy"));
      List<Dept> depts = mapper.selectAll();
      for(Dept dept : depts){
         System.out.println(dept);
         out.println(dept + "<br>");
      }
   %></div>
   <div><%
      mapper.update(new Dept(65, "xxx1", "yyy1"));
      depts = mapper.selectAll();
      for (Dept dept : depts){
         System.out.println(dept);
         out.println(dept + "<br>");
      }
   %></div>
   <div><%
      mapper.delete(65);
      depts = mapper.selectAll();
      for(Dept dept : depts){
         System.out.println(dept);
         out.println(dept + "<br>");
      }
   %></div>

<a href="logout.jsp">로그아웃</a>

</body>
</html>