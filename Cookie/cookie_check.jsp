<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//클라이언트에 저장된 쿠키를 가져오는 방법.
    	Cookie[] cookies = request.getCookies(); // 클라이언트에 저장된 쿠키는 쿠키 배열 타입이다.
    	
    	boolean flag = false;
    	
    	for(Cookie c : cookies) {
    		String cookieName = c.getName(); //쿠키 이름을 얻어오는 메서드.
    		if(cookieName.equals("apple_cookie")) {
    			out.print("<h3>사과쿠키가 존재합니다!</h3>");
    			String value = c.getValue(); //쿠키 내부의 값을 얻어오는 메서드.
    			out.print("쿠키의 값: " + value + "<br>");
    			flag = true;
    			break;
    		}
    	}
    	if(!flag) { //flag가 true가 아니면,
    		out.print("<h3>사과쿠키가 사라졌어요!</h3>");
    	}

    %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie_check_all.jsp">모든 쿠키 확인하기</a>

</body>
</html>