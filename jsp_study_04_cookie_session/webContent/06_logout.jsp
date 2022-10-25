<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<% 
		session.invalidate();	//해당 세션을 없애고, 세션에 속해 있는 값들도 모두 지운다.
		
	%>
	
	<script>
		alert("로그 아웃 되었습니다.");
		location.href="06_loginForm.jsp"
	
	</script>

</body>
</html>