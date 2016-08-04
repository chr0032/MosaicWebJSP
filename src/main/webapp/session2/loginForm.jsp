<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
<h1>로귄</h1>
<form action="/session2/loginProcess.jsp" method="post">
   <div>
      <label for="id">ID : </label>
      <input id = "id" type="text" name="id"/>
   </div>
   
   <div>
      <label for="pw">PW :</label>
      <input id="pw" type="password" name="pw"/>
   </div>
   
   <input type="submit" value="login"/>

</form>
</body>
</html>