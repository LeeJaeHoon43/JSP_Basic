<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% for(int i=0; i<5; i++) { %>
	<h2>이클립스 내부에서 jsp 파일 작성하기!</h2>
	<p> <!-- p태그는 문단을 구성하는 태그입니다. -->
		안녕하세요. 오늘은 2020년 1월 16일입니다. <br>
		지금은 스크립틀릿 연습중이에요~
	</p>
	<% } %>
	
	<hr> <h2>구구단 2단</h2> <hr>
	<% 
		for(int hang=1; hang<=9; hang++) {
		//out.print메서드는 브라우저에 바로 출력을 실행하는 메서드입니다.
		out.print("2 x " + hang + " = " + (2*hang) + "<br>");
		}
	%>
	
	<!-- 반복문, 조건문을 이용하여 구구단을 짝수단(2,4,6,8)만 출력해 보세요 -->
	<%
		for(int dan=2; dan<=9; dan++) {
			if(dan % 2 == 0) { %>
				<hr> <h2>구구단 <%=dan %> 단</h2> <hr>
				<%for(int hang=1; hang<=9; hang++) { %>
					<%=dan %> x <%= hang %> = <%=dan*hang %> <br>
				<% }
			}
	 } %>
	 
	 <%
		for(int dan = 2; dan <= 9; dan++){
			out.print("<hr><h2>구구단 "+dan+"단</h2><hr>");
			for(int hang = 1; hang <= 9; hang++){
				out.print(dan + " x " + hang + " = " + dan*hang + "<br>");
			}
			
		}
	 %>
	 <!-- 반복문, 조건문을 이용하여 구구단을 홀수단(1,3,5,7,9)만 출력해 보세요 -->
	 <%
	 	for(int dan=1;dan<=9;dan++){
	 		if(dan % 2 == 1){ %>
	 		<hr> <h2>구구단 <%=dan %> 단</h2><hr> 
	 		<%for(int hang=1;hang<=9;hang++){ %>
	 			<%=dan %> X <%= hang %> = <%= dan*hang %> <br>
	 		<% }	
	 		}
	 	}
	 %>
	 
</body>
</html>
