<%@page import="org.apache.catalina.util.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% request.setCharacterEncoding("utf-8"); %>

<%-- 자바빈 객체 생성하기 (BoardBean클래스) --%>
<jsp:useBean id="movie" class="com.mission.javabeans.MovieBean" />
<jsp:setProperty name="movie" property="*" />

    
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
		<h2>▶ 영화정보 출력 결과</h2>
		<form method="post" action="04_itemWriteForm" class="formWrap">
			<table>
	            <tr>
	               <th>영화제목</th>
	               <td><jsp:getProperty property="name" name="item"/></td>
	            </tr>
	            
	            <tr>
	               <th>가 격</th>
	               <td><jsp:getProperty property="price" name="item"/></td>
	            </tr>
	            
	            <tr>
	               <th>감 독</th>
	               <td><jsp:getProperty property="director" name="item"/></td>
	            </tr>
	            
	            <tr>
	               <th>출연배우</th>
	               <td><jsp:getProperty property="actor" name="item"/></td>
	            </tr>
	               
	            <tr>
	               <th>시놉시스</th>
	               <td><jsp:getProperty property="synopsis" name="item"/></td>
	            </tr>
	            
	            <tr>
	               <th>장 르</th>
	               <td><jsp:getProperty property="genre" name="item"/></td>
	            </tr>
	           
         </table>
         
		 <p class="btnWrap">
         	<input type="submit" value="등록">
         	<input type="reset" value="다시작성"></p>
            
		
		        
		</form>
	
	</section>

</body>
</html>