<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  	<%
  		// post방식을 통해 전송된 데이터의 한글 처리는 메서드를 사용하여 처리해야 한다.
  		request.setCharacterEncoding("utf-8");
  		String id = request.getParameter("id");
  		String pw = request.getParameter("pw");
  		String name = request.getParameter("name");
  	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		# ID : <%= id %> <br>
		# PW : <%= pw %> <br>
		# 이름 : <%= name %> <br>
	</p>
</body>
</html>