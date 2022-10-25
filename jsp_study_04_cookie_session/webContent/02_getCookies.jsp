<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cookies</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
	<header>
		<h1>setCookie에 의해 설정된 모든 쿠키 얻어와 출력하기</h1>
	</header>

	<section>
		<h2>▶ 클라이언트로부터 얻어온 Cookie</h2>
		<div class="contentWrap">
			<%
				Cookie[] cookies = request.getCookies();
			
				for(Cookie c : cookies){
					out.println(c.getName()+ " : " + c.getValue() + "<br/>" );
				}
			%>
		
		</div>
		
		
	</section>
	
</body>
</html>