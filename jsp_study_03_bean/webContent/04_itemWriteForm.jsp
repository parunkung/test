<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품정보 입력하기</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@ include file="04_headerout.jsp" %>
	
	<section>
		<h2>▶ 상품정보 입력하기</h2>
		<form method="post" action="04_itemWrite.jsp" class="formWrap">
			<table>
	            <tr>
	               <th><label for="name">상품제목</label></th>
	               <td><input type="text" name="name" id="name" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="price">상품가격</label></th>
	               <td><input type="text" name="price" id="price"></td>
	            </tr>
	               
	            <tr>
	               <th><label for="discription">상품설명</label></th>
	               <td><textarea name="discription" id="discription" rows="15" cols="80"></textarea> " ></td>
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