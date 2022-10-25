<%@page import="org.apache.catalina.util.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% request.setCharacterEncoding("utf-8"); %>

<%-- 자바빈 객체 생성하기 (BoardBean클래스) --%>
<jsp:useBean id="board" class="com.mission.javabeans.BoardBean" />
<jsp:setProperty name="board" property="*" />

    
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
		<h2>▶ 게시글 출력 결과</h2>
		<form method="post" action="04_boardWriteForm" class="formWrap">
			<table>
	            <tr>
	               <th>작성자</th>
	               <td><jsp:getProperty property="name" name="board"/></td>
	            </tr>
	            
	            <tr>
	               <th>비밀번호</th>
	               <td><jsp:getProperty property="pass" name="board"/></td>
	            </tr>
	            
	            <tr>
	               <th>이메일</th>
	               <td><jsp:getProperty property="email" name="board"/></td>
	            </tr>
	            
	            <tr>
	               <th>글 제목</th>
	               <td><jsp:getProperty property="title" name="board"/></td>
	            </tr>
	               
	            <tr>
	               <th>글 내용</th>
	               <td><jsp:getProperty property="content" name="board"/></td>
	            </tr>
	           
         </table>
         
		 <p class="btnWrap">
         	<input type="submit" value="등록">
         	<input type="reset" value="다시작성"></p>
            
		
		        
		</form>
	
	</section>

</body>
</html>