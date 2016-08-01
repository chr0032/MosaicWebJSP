<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>

<%
	char[] buff = new char[128];
	int len = -1;

	String filePath = "C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\MosaicWeb"+"\\message\\notice.txt";
	
	try(InputStreamReader fr = new InputStreamReader(
			new FileInputStream(filePath), "UTF-8")) {
		while ((len = fr.read(buff))!=-1) {
			
			out.print(new String(buff, 0, len));
			
		}
		
	} catch(Exception ex) {
		
		out.println("익셉션 발생  : " + ex.getMessage());
		
		
	}
	
%>


</body>
</html>