<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화정보 입력하기</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@ include file="04_headerout.jsp" %>
	
	<section>
		<h2>▶ 영화정보 입력폼</h2>
		<form method="post" action="04_movieWrite.jsp" class="formWrap">
			<table>
	            <tr>
	               <th><label for="title">영화제목</label></th>
	               <td><input type="text" name="title" id="title" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="price">가 격</label></th>
	               <td><input type="text" name="price" id="price"></td>
	            </tr>
	               
	            <tr>
	               <th><label for="director">감 독</label></th>
	               <td><input type="text" name="director" id="director" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="actor">출연배우</label></th>
	               <td><input type="text" name="actor" id="actor" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="synopsis">시놉시스</label></th>
	               <td><textarea name="synopsis" id="synopsis" rows="15" cols="80"></textarea></td>
	            </tr>
	            
	            <tr>
	               <th><label for="genre">장 르</label></th>
	               <td><input type="text" name="genre" id="genre" ></td>
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