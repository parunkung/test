<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% request.setCharacterEncoding("utf-8"); %>

<%-- 자바빈 객체 생성하기 (MemberBean클래스) --%>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean" />
<jsp:setProperty name="member" property="*" />
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 입력결과</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style>
		th{background:pink; width:150px;}
	</style>
</head>
<body>

	<section>
		<h2>▶ 게시글 입력 결과</h2>
		<form method="post" action="" class="formWrap">
			<table>
	            <tr>
	               <th>작성자 이름</th>
	               <td><jsp:getProperty property="name" name="member"/></td>
	            </tr>
	            
	            <tr>
	               <th>게시글 삭제와 수정을 위한 비밀번호</th>
	               <td><jsp:getProperty property="pass" name="member"/></td>
	            </tr>
	            
	            <tr>
	               <th>작성자 이메일</th>
	               <td><jsp:getProperty property="email" name="member"/></td>
	            </tr>
	            
	            <tr>
	               <th>게시글 제목</th>
	               <td><jsp:getProperty property="title" name="member"/></td>
	            </tr>
	               
	            <tr>
	               <th>게시글 내용</th>
	               <td><jsp:getProperty property="content" name="member"/></td>
	            </tr>
	           
         </table>
        
		</form>
	
	</section>

</body>
</html>