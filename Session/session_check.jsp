<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 세션에 저장된 데이터는 브라우저 창이 종료될 때까지 혹은 세션의 유효시간이 만료되기 전까지 웹 어플리케이션의 모든 jsp 페이지에서 사용할 수 있다.
    	// 세션에 저장된 데이터를 가져오려면 session객체의 getAttribute()메서드를 사용하며, 매개값으로 가져올 데이터의 세션 이름을 적는다.
  
    	// getAttribute의 return타입은 부모 클래스인 Object타입이다.
    	// 세션은 Object타입으로 하위 자식 타입의 변수에 바로 할당할 수 없어서 캐스팅 연산자로 타입을 맟춘 후에 할당한다.
    	String nick = (String) session.getAttribute("nickname"); 
    	String[] hobbys = (String[]) session.getAttribute("hobbys");
    	
    	out.print("nickname 세션의 값 : " + nick + "<br>");
    	out.print("hobbys 세션의 값 : " + Arrays.toString(hobbys) + "<br>");
    	out.print("--------------------------------------<br>");
    	
    	// 세션의 유효시간 설정. 설정을 안하면 기본시간은 30분.
    	session.setMaxInactiveInterval(60 * 60); // 초단위 시간 설정.
    	
    	int sTime = session.getMaxInactiveInterval(); // 세션의 유효시간 확인.
    	out.print("세션의 유효시간 : " + sTime + "초<br>");
    	out.print("--------------------------------------<br>");
    	
    	// 특정 세션의 데이터를 삭제.
    	session.removeAttribute("nickname");
    	nick = (String) session.getAttribute("nickname");
    	out.print("삭제 후 nick의 값 : " + nick + "<br>");
    	out.print("--------------------------------------<br>");
    	
    	// 모든 세션 데이터 전체 삭제/
    	session.invalidate();
    	
    	// isRequestedSessionIdValid() : 유효한 세션 데이터가 해당 페이지에 존재하는지를 확인하는 메서드.
    	if(request.isRequestedSessionIdValid()){
    		out.print("유효한 세션이 존재함.");
    	}else{
    		out.print("유효한 세션이 존재하지 않음.");
    	}
    %>