<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestParam.jsp</title>
</head>
<body>
<%= request.getParameter("name")%>
<%= request.getParameterValues("name")[0]%>
<%= request.getParameterValues("name")[1]%>
<hr>
${param.name}
${paramValues.name[0]}
${paramValues.name[1]}
</body>
</html>