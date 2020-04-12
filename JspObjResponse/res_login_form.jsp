<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%--
	- 태그의 내부 스타일 시트 방식으로 디자인을 적용하려면 선택자를 이용한다.
	- 클래스 선택자 : .클래스이름
	- 아이디 선택자 : #아이디이름
	- 태그 선택자 : 태그 이름.
--%>
<style>
.login_btn{
	background-color: green;
	width: 60px;
	height: 50px;
	font-family: Times;
	padding: 2px;
}
</style>
</head>
<body>

	<%--
		* CSS (Cascade Style Sheet)
		- HTML에 디자인 요소를 적용하는 언어이다.
		- CSS를 HTML에 적용하는 방법은 3가지가 있다.
		
		1. 인라인 스타일 시트 - div태그 내부에 해당 태그에만 적용되는 스타일을 지정.
		2. 내부 스타일 시트 - 태그의 스타일을 HTML의 head태그에 따로 지정.
		3. 외부 스타일 시트 - 외부에 .css파일을 따로 만들어서 디자인 소스만 모두 지정한 뒤 나중에 HTML문서 내부에서 링크를 통해 로딩시킨다.
	
	 --%>
	<%-- div태그에 인라인 스타일 적용. --%>
	<div align="center" style="border: 2px double blue; width: 400px; padding: 30px">
		<h3>sendRedirect 연습!!</h3>
		<form action="res_login_con.jsp" method="post">
			<table border="1">
				<tr>
					<td><input type="text" name="id" size="10" placeholder="ID를 입력"></td>
					<td rowspan="2"><input class="login_btn" type="submit" value="로그인"></td>
				</tr>
				<tr>
					<td><input type="password" name="pw" size="10" placeholder="PW를 입력"></td>
				</tr>	
			</table>
		</form>
	</div>
</body>
</html>