<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String id = "parunkung";
	String pwd = "1234";
	String name = "이상기";

	request.setCharacterEncoding("utf-8");
	
	if(id.equals(request.getParameter("id")) && 
			pwd.equals(request.getParameter("pwd"))){
		
		response.sendRedirect("03_mainLogin.jsp?name="+URLEncoder.encode(name,"utf-8"));
		
	}else{
		response.sendRedirect("03_loginform.jsp");
	}
	


%>