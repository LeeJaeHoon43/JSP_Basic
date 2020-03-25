<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
		* 사용자의 입력값을 서버로 전송하는 방법.
		1. 사용자의 입력 데이터를 서버로 전송하려면 HTML의 form태그를 사용한다.
		2. form태그의 action 속성에 데이터를 전달받을 페이지의 URL주소를 작성한다.
		3. input태그의 name 속성으로 요청 파라미터의 이름을 지정할 수 있다.
	 --%>
	<h2>회원 가입 양식</h2>
	<hr>

	<form action="req_user_info.jsp">
	
		# 이름 : <input type="text" name="name"> <br>
		# ID : <input type="text" name="id" /> <br>
		# PW : <input type="password" name="pw" /> <br>

		# 성별<br>
		<input type="radio" name="gender" value="남" /> 남자 &nbsp;&nbsp;  
		<input type="radio" name="gender" value="여" /> 여자 <br>
		
		# 취미 <br>
		<input type="checkbox" name="hobby" value="독서"/> 독서 &nbsp;
		<input type="checkbox" name="hobby" value="영화"/> 영화 &nbsp;		
		<input type="checkbox" name="hobby" value="축구"/> 축구 &nbsp;
		<input type="checkbox" name="hobby" value="드라마"/> 드라마 <br>
 
		# 지역 <br>
		<select name="region">
			<option>서울</option>
			<option>인천</option>
			<option>대전</option>
			<option>대구</option>
			<option>울산</option>
			<option>부산</option>
			<option>광주</option>
		</select> <br>

		# 자기소개 <br>
		<textarea name="introduce" cols="40" rows="10"></textarea>
		<input type="submit" value="확인"> &nbsp;
		<input type="reset" value="초기화"> 
	</form>
</body>
</html>