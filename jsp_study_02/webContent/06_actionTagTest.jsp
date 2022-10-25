<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String userID = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String loginCheck = request.getParameter("loginCheck");
		
		if(loginCheck.equals("user")){
			//사용자 접속	
%>
%>
	

		<jsp:forward page = "06_userMain.jsp">
			<jsp:param  name="userName" value='<%= URLEncoder.encode("모든사용자","utf-8")%>'/>
		</jsp:forward>
				
<%
	} else{	
		//관리자 접속%>
		<jsp:forward page = "06_managerMain.jsp">
			<jsp:param  name="userName" value='<%= URLEncoder.encode("관리자","utf-8")%>'/>
		</jsp:forward>
		
<%
	}

%>