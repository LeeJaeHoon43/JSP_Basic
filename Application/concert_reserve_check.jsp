<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%   
    	// 예매가 확정된  좌석 정보를 저장할 리스트 생성.
    	List<String> list = new ArrayList<>();
    
    	if(application.getAttribute("complete_list") != null){
    		list = (List<String>) application.getAttribute("complete_list");
    	}
    	
    	// 사용자가 체크박스를 눌러 선택한 좌석 정보를 저장할 배열.
    	String[] seat = request.getParameterValues("seat");
    	
    	// 1. 예약 확정 전에 임시로 좌석 정보를 저장할 리스트를 하나 선언한다.
    	// 2. 사용자가 예매를 희망하는 좌석과 이미 예약이 완료된 리스트를 비교하여 좌석이 존재할 때마다 일치하는 숫자를 카운팅한다.
    	// 3. 일치하는 좌석이 하나라도 존재한다면 list에 추가하면 안된다.
    	// 4. 하나도 일치하지 않았을 경우 확정 list에 좌석을 추가한다.
    	// 5. addAll()메서드는 리스트 내부에 리스트 객체들을 전부 추가하는 메서드이다. 
    
   		// 예약 확정 전에 임시로 좌석 정보를 저장할 리스트.
    	List<String> temp = new ArrayList<>();

    	// 몇 자리를 예약할 수 있는지의 여부를 체크할 변수.
   		int count = 0;
    	for(String s : seat){
    		if(list.contains(s)) break;
    		else {
    			temp.add(s);
    			count++;
    		}
    	}
    	if(count == seat.length){ // 예매 희망 좌석이 확정 좌석과 한 번도 겹치지 않은 경우.
    		list.addAll(temp);
    	}

    	application.setAttribute("complete_list", list);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>좌석 예매 결과</h2>
		<p>
			선택한 좌석 <br>
			<% 
				for(String s : seat){
					out.print("<b>[" + s + "]</b>");
				}
			%>
			<br>
			예매 완료되었습니다.
		</p>
		<p>
			예매 신청 결과 : <%= (count == seat.length) ? "성공" : "실패" %>
			<br>
			<% if(count != seat.length) {%>
				선택하신 좌석이 이미 선점되었습니다.
			<% } %>
			<br>
			<a href="concert_reserve.jsp">추가 예매하기</a>
		</p>
	</div>
</body>
</html>
