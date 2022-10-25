<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쿠키 삭제</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
	<header>
		<h1>필요없는 쿠키정보 삭제하기</h1>
	</header>

	<section>
		<h2>▶ id 쿠키 삭제하기</h2>
		<div class="contentWrap">
			<%
				Cookie cookie = new Cookie("id", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			%>
			<h3>id 쿠키를 삭제되었습니다.</h3>
			<a href="02_getCookies.jsp">쿠키 삭제를 확인하려면 클릭하세요.</a>
		</div>
		
		
	</section>
	
</body>
</html>