<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Date date = new Date(); // import는 자동완성 기능 제공.
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일"); // 자바  표준 api에서 확인 가능.
    	String dayInfo = sdf.format(date);
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= date %> <br>
	오늘은 <%= dayInfo %>입니다.

</body>
</html>