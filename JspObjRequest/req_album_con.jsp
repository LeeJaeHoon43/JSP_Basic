<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String title = request.getParameter("title");
    
    	if(title.equals("messi")) {
    		response.sendRedirect("messi.jsp");
    	} else if(title.equals("kevin")){
    		response.sendRedirect("kevin.jsp");
    	}
    %>