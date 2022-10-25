<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>include 액션 태그</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<jsp:include page = "03_header.jsp" />
	<section>
		<h2>메인 화면입니다.</h2>
		
		<a href="07_actionTag_IncludeSub.jsp">서브페이지 이동</a>
	</section>
	<jsp:include page = "03_footer.jsp" />

</body>
</html>