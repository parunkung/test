<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");
%>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>forward 결과</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background:#eee;">
	
	<section>
		<h2>forward 방식으로 이동된 페이지</h2>
		<p>나이 : <%=age %> </p>
		<p>이름 : <%=name %></p>
	</section>
	
	
</body>
</html>