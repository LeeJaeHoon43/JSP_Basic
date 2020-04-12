<%@page import="user.UserRepository"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    
		/*     	
		String id = request.getParameter("account");
    	String pw = request.getParameter("password");
    	String name = request.getParameter("name");
    	String nickName = request.getParameter("nickName");
    	
    	User user = new User(id, pw, name, nickName); 
    	*/
    	// 굳이 변수를 만들어 할당하지 않아도 된다. 객체를 만들어 바로 파라미터를 전달받는다.
    	User user = new User(
    			request.getParameter("account"),
    			request.getParameter("password"),
    			request.getParameter("name"),
    			request.getParameter("nickName")
    			);
    	
    	UserRepository.save(user); // 회원가입 데이터를 리스트에 저장하기 위한 메서드 호출.
     	UserRepository.showUsers(); // 회원가입 된 정보를 콘솔창에 출력하기 위한 메서드 호출.
    	
    	response.sendRedirect("register_result.jsp");
    %>