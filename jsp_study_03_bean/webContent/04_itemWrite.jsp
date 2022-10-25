<%@page import="org.apache.catalina.util.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% request.setCharacterEncoding("utf-8"); %>

<%-- 자바빈 객체 생성하기 (BoardBean클래스) --%>
<jsp:useBean id="item" class="com.mission.javabeans.ItemBean" />
<jsp:setProperty name="item" property="*" />

    
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
		<form method="post" action="04_itemWriteForm" class="formWrap">
			<table>
	            <tr>
	               <th>상품제목</th>
	               <td><jsp:getProperty property="name" name="item"/></td>
	            </tr>
	            
	            <tr>
	               <th>상품가격</th>
	               <td><jsp:getProperty property="price" name="item"/></td>
	            </tr>
	            
	            <tr>
	               <th>상품설명</th>
	               <td><jsp:getProperty property="discription" name="item"/></td>
	            </tr>
	            
	            	           
         </table>
         
		 <p class="btnWrap">
         	<input type="submit" value="등록">
         	<input type="reset" value="다시작성"></p>
            
		
		        
		</form>
	
	</section>

</body>
</html>