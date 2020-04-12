<%@page import="kr.co.jsp.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		request.setCharacterEncoding("utf-8");
		
		/*
		1. 첫 번째 방법.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		UserBean user = new UserBean();
		user.setId(id);
		user.setPw(pw);
		user.setName(name);
		user.setEmail(email);
		*/
		
		/*
		2. 2번째 방법.
		UserBean user = new UserBean(id, pw, name, email);
		/*
		
		/*
		3. 세 번째 방법.
		UserBean user = new UserBean(
				request.getParameter("id"),
				request.getParameter("pw"),
				request.getParameter("name"),
				request.getParameter("email")
				);
		*/
	%>
	<%-- 
		id : jsp페이지에서 자바빈 객체에 접근할 때 사용할 이름을 지정. (객체의 이름을 지정.)
		class : 자바 빈 클래스 존재 경로를 완전한 경로로 입력.
		scope : 자바 빈 객체를 저장할 영역을 지정해 준다.
	 --%>
	
	<%-- user라는 객체가 생성. --%>
	<jsp:useBean id="user" class="kr.co.jsp.user.UserBean" scope="request"/>
	
	<%--
		- useBean 태그로 객체의 이름과 경로,범위를 지정한다.
		- setter 역할을 하는 setProperty속성과 getter역할을 하는 getProperty 속성을 이용하여 객체에 데이터를 저장하고 참조한다.
		- <jsp:setProperty name="자바 빈 객체id" property="멤버 변수명" value="실제 저장될 값" />
	 --%>
	 
	 <%-- 
	- 파라미터 변수명과 자바 빈 클래스의 멤버 변수 명이 일치한다면,
	- setProperty의 속성 property의 값을 *로 지정하면 자동으로 파라미터 값을 읽어서 자바 빈 클래스 변수에 저장한다.
	<jsp:setProperty name="user" property="id" value="<%= id %>" />
	<jsp:setProperty name="user" property="pw" value="<%= pw %>" />
	<jsp:setProperty name="user" property="name" value="<%= name %>" />
	<jsp:setProperty name="user" property="email" value="<%= email %>" />
	--%>
	 <jsp:setProperty name="user" property="*"/>
	
	<jsp:forward page="bean_use.jsp" />
