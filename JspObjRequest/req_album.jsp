<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<%-- <form action="req_album_result.jsp"> --%>
		<table border=1 width="700">
			<tr align="center">
				<%-- <th></th> --%>
				<th>선수</th>
				<th>이름</th>
				<th>국적</th>
				<th>소속 클럽</th>	
			</tr>		
			<tr>
				<%-- 
				<td>
					<input type="radio" name="title" value="messi">
				</td>
				--%>
				<td><img src="messi.jpg" width="300px" height="150px"></td>
				<td><a href="req_album_con.jsp?title=messi">리오넬 메시</a></td>
				<td>아르헨티나</td>
				<td>FC 바르셀로나</td>		
			</tr>
			<tr>
				<%--
				<td>
					<input type="radio" name="title" value="kevin">
				</td>
				--%>
				<td><img src="kevin.jpg" width="300px" height="150px"></td>
				<td><a href="req_album_con.jsp?title=kevin">케빈 데 브라위너</a></td>
				<td>벨기에</td>
				<td>멘체스터 시티</td>	
			</tr>
			<%--
			<tr align="center">
				<td colspan="5">
					<input type="submit" value="확인">
				</td>
			</tr>
			--%>
		</table>
		<%--  </form> --%>
	</div>
</body>
</html>