<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shopping Mall</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@ include file="03_headerout.jsp" %>
	
	<section>
		<%= request.getParameter("name") %>님 안녕하세요!<br/>
		저희 홈페이지에 방문해 주셔서 감사합니다.<br/>
		즐거운 시간 되세요.<br/>
	</section>
	

	<%@ include file="03_footer.jsp" %>
</body>
</html>