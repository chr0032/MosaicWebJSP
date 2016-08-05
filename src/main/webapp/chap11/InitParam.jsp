<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InitParam.jsp</title>
</head>
<body>
<%= application.getInitParameter("logEnabled")%>
<hr>
<%= application.getInitParameter("debugLevel")%>
<hr>
<%= application.getInitParameter("xxx")%>
<hr>
${initParam.logEnabled}
<hr>
${initParam.debugLevel}
<hr>
${initParam.xxx}
</body>
</html>