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
		
		response.sendRedirect("04_mainLogin.jsp?name="+URLEncoder.encode(id,"utf-8"));
		
	}else{
		response.sendRedirect("04_main.jsp");
	}
	
%>


<%--
	<%
		String id = "parunkung";
		String pwd = "1234";
		String name = "이상기";
		
		if(id.equals(request.getParameter("id")) && 
			pwd.equals(request.getParameter("pwd"))){
		
			session.setAttribute("loginUser", name);
			response.sendRedirect("06_main.jsp");
		}else{
			response.sendRedirect("06_loginForm.jsp");
	}	 
	%>

 --%>