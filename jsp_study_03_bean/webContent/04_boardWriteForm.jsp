<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 입력정보폼</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@ include file="04_headerout.jsp" %>
	
	<section>
		<h2>▶ 게시글 정보를 위한 자바 빈 작성하기</h2>
		<form method="post" action="04_boardWrite.jsp" class="formWrap">
			<table>
	            <tr>
	               <th><label for="username">작성자</label></th>
	               <td><input type="text" name="name" id="username" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="pass">비밀번호</label></th>
	               <td><input type="password" name="pass" id="pass"></td>
	            </tr>
	               
	            <tr>
	               <th><label for="useremail">이메일</label></th>
	               <td><input type="text" name="email" id="useremail" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="title">글 제목</label></th>
	               <td><input type="text" name="title" id="title" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="content">글 내용</label></th>
	               <td><textarea name="content" id="content" rows="15" cols="80"></textarea></td>
	            </tr>
	            
         </table>
         
         <p class="btnWrap">
         	<input type="submit" value="전송">
         	<input type="reset" value="취소"></p>
            
		</form>
	
	</section>
	
	<%@ include file="04_footer.jsp" %> 
</body>
</html>