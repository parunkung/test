<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>접속 가능 여부</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1>성년만 입장 가능한 사이트 만들기</h1>
	</header>

	<section>
		<h2>▶ 입장하려면 나이를 입력하세요.</h2>
		<form action="04_forwardTest.jsp">
			<input type="text" name="age">
			<input type="submit" value="입장">
		</form>
	</section>
	<%@ include file="03_footer.jsp" %>
</body>
</html>