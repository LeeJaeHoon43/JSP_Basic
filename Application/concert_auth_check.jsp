<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       /*
       1. 사용자가 입력한 인증코드와 랜덤으로 생성한(UUID객체로 생성한)인증 코드를 서로 비교한다.
       2. 코드가 일치한다면 세션을 하나 생성 후 "concert_reserve.jsp"로 이동시켜 주세요.세션 이름은 auth_pass,값은 논리상수 true를 넣어주세요.     
       3. 코드가 일치하지 않는다면 "인증코드가 일치하지 않습니다.다시 입력해 주세요." 라는 경고창 출력 후, 뒤로가기를 실행해 주세요.
       */
       
       //사용자가 입력한 인증번호.
       String code = request.getParameter("code");
    
       //랜덤으로 생성된 인증번호.
       String aCode = (String) session.getAttribute("auth_code");
       
       if(code.equals(aCode)) {
          session.setAttribute("auth_pass", true);
          response.sendRedirect("concert_reserve.jsp");
       } else { %>
		<script>
			alert("인증코드가 일치하지 않습니다. 다시 인증해 주세요.");
			location.href="concert_auth.jsp";
		</script>
	<% } %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>