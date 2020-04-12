<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	// 변수 선언 및 초기화는 html코드 밖에서 먼저 선언해준다.
	String name = "이재훈";
	String address = "서울특별시";
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- 실제 웹사이트에서 보여줄 정보는 body태그 안에서 작성한다. -->

	<% 
	   out.print("이름 : " + name + "<br>");
	   out.print("주소 : " + address + "<br>");
	%>
	
	이름 : <%= name %> <br>
	주소 : <%= address %> <br>
	무작위 값: <%= Math.random() %>
</body>
</html>