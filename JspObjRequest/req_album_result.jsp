<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String title = request.getParameter("title");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(title.equals("messi")) { %>
	<div align="center">
		<h2>선택하신 선수 정보</h2>
		<p>
			당신이 선택하신 선수는 Lionel Messi(리오넬 메시)입니다.
		</p>
		<hr>
		<h3>해당 선수 영상</h3>
		<iframe width="800" height="600" src="https://www.youtube.com/embed/-hva_SfzZmQ?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
	</div>
	<% }else if(title.equals("kevin")) { %>
	<div align="center">
		<h2>선택하신 선수 정보</h2>
		<p>
			당신이 선택하신 선수는 Kevin De Bruyne(케빈 더 브라위너)입니다.
		</p>
		<hr>
		<h3>해당 선수 영상</h3>
		<iframe width="800" height="600" src="https://www.youtube.com/embed/YOM65EXDj08?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } %>
</body>
</html>