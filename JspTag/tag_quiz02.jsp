<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	List<String> party = new ArrayList<>(); // 직업명을 담을 리스트.
	List<Integer> jobNumber = new ArrayList<>(); // 해당 직업에 맞는 번호를 담을 리스트.
%>   
    <%
    	/*
    		- 직업 갯수만큼의 정수 난수를 발생시켜 주세요 (0~4)
    		- 발생된 난수의 번호대로 party라는 리스트에 직업을 추가해 주세요.
    		- party라는 list에 현재 선택된 직업이 몇 개 존재하는지 확인하는 작업을 한다.
    		- 반복문으로 list를 순회해서, 현재 선택된 직업의 문자열과 party라는 리스트에 들어있는 문자열 중에 
    		- 같은 문자열이 발견될 때마다 숫자를 세서 나와  같은 직업을 가진 파티원이 몇 명인지 세야 한다.
    	*/
    	String[] jobs = {"전사", "도적", "궁수", "마법사", "사제"};
    
    	// 직업 개수 만큼의 정수 난수를 발생시킨다.
    	int r = (int)(Math.random() * jobs.length); // 배열 jobs의 길이만큼의 난수를 생성.
    	String job = jobs[r]; // 생성된 번호를 jobs배열의 인덱스 번호로 삼아서 해당 인덱스의 직업을 job변수에 할당.
    	party.add(job); // party리스트에 직업명이 들어있는 job변수를 추가한다.
    	jobNumber.add(r); // jobNumber리스트에 난수로 생성된 번호(해당 직업의 번호)를 추가한다.
    	
    	// party라는 list에 현재 선택된 직업이 몇 개 존재하는지 확인하는 작업이 필요하다.
    	int cnt = 0;
    	
    	// 반복문으로  리스트를 순회해서 현재 선택된 직업의 문자열과 리스트 내부에 들어있는 문자열 중에서 같은 문자열이 반복될 때마다 숫자를 세준다.
    	for(String player : party){
    		if(job.equals(player)) cnt++;
    	}
	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		<img>태그를 사용하여 각 직업에 맞는 사진을 띄어 주기
		당신의 직업 -> 가로 40px, 세로 40px

		파티원을 표시하는 사진 -> 가로, 세로  20px
		
		현재 파티 구성에는 list를 반복문으로 순회하여 해당 직업 jobs의 인덱스 번호를 따로 부여한 후 
		
		그 직업 인덱스 번호에 맞추어서 사진을 img태그로 넣으면 된다.
		
		그리고, 파티원이 10명이 되었을 경우 리스트를 비우면 된다.
	--%>
	<h2>당신의 역할</h2>
	<p>
		<img src="img/<%= r %>.png" width="40px" height="40px">
		당신에게 부여된 역할은 <strong>[<%= job %>]</strong>입니다. <br>
		현재 파티에 당신과 같은 역할을 가진 플레이어는 <%= cnt %>명 입니다.
	</p>
	
	<p>
		현재 파티 구성 <br>
		<% for(int idx : jobNumber) { %>
			<img src= "img/<%= idx %>.png" width="20px" height="20px">
		<% } %>
		(<%= party.size() %>명 참가 중)	 
	</p>
	<%
		if(party.size() == 10){
			party.clear();
			jobNumber.clear();
		}
	%>
</body>
</html>