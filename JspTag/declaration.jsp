<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
# 선언(Declaration)
- JSP 페이지 내에서 사용되는 변수 또는 메서드를 선언할 때 사용합니다.
- 여기 선언된 변수 및 메서드는 전역의 의미(멤버변수)로 사용됩니다.
--%>
    
<%!
	public int i; 
	public String name; 
	
	public int add(int n1, int n2) {
		return n1 + n2;
	}
%>    

<%
	int result = add(4, 7);
	int j = 0;
	i++;
	j++;
	double d = Math.random();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="directive02_header.jsp" %>
	
	i의 값: <%= i %> <br>
	j의 값: <%= j %> <br>
	result의 값: <%= result %> <br>
	d의 값: <%= d %> <br>

	<%@ include file="directive02_footer.jsp" %>
</body>
</html>













