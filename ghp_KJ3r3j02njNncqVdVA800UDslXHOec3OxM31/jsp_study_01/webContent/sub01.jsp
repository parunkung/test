
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jsp 기본태그 - 지시자</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>
<body>
	<%@ include file="03_header.jsp" %>
	
	<section>
		<div class="galleryWrap">
			<h2>갤러리 - 서브1 페이지입니다.</h2>
			<div class="imgWrap">
				<img src="https://via.placeholder.com/300x150.png?text=800x150" alt="" width="100%">
			</div>
		
		</div>
	
	</section>
	<%@ include file="03_footer.jsp" %> 
	<%--footer 파일 가져오는 것. --%>
	
</body>
</html>