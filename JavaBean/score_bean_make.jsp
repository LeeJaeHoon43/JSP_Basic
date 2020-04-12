<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	- 액션태그를 사용하여 ScoreBean의 객체를 request범위로 생성하고, setProperty를 사용하여 객체 내부 데이터에 파라미터 데이터를 셋팅한 뒤,
    	- 파라미터 데이터 3개와 총점, 평균을 구하여 5개를 모두 객체에 담아서 score_bean_use.jsp로 전송(forward)하세요.
    	- 총점과 평균은 변수를 선언하셔서 각각 총점과 평균을 구한 뒤 setProperty를 사용해서 추가해 주시면 됩니다.
    --%>
    <jsp:useBean id="score" class="kr.co.jsp.score.ScoreBean" scope="request"/>
    
    <jsp:setProperty name="score" property="*"/> <%--사용자가 입력한 값은 자동으로 읽어서 들어간다. --%>
    
    <%
    	int total = score.getKor() + score.getEng() + score.getMath();
    	double avg = (double)total / 3;
    	avg = Math.round(avg * 100) / 100.0; // 반올림.
    	
    	// score.setTotal();
    	// score.setAvg();
    %>
    <jsp:setProperty property="total" name="score" value="<%= total %>"/>
    <jsp:setProperty property="avg" name="score" value="<%= avg %>"/>
    <jsp:forward page="score_bean_use.jsp" />
    