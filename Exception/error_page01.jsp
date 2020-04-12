<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error_page02.jsp" %> 
<%--
# <%@ page errorPage="에러가발생했을 때 보여줄 페이지.jsp" %>
- 에러가발생했을 때 보여줄 페이지를 지정한다. 
- 예외가 발생할 것으로 예상되는 페이지에 예외가 발생했을 때 보여줄 페이지를 지정.
- 에러가 발생하면 보여줄 JSP페이지는 페이지 지시자(directive)의 page errorPage 속성을 사용하여 지정합니다. 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getParameter("id").toLowerCase() %>
</body>
</html>