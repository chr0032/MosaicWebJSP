<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼정보</title>
</head>
<body>

버퍼크기 : <%=out.getBufferSize() %>
남은크기 : <%=out.getRemaining() %>
auto flush: <%=out.isAutoFlush() %>

</body>
</html>