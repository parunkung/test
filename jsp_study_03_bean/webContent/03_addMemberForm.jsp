<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 입력폼</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<section>
		<h2>▶ 자바빈을 이용한 회원의 정보 입력 폼</h2>
		<form method="post" action="03_addMember.jsp" class="formWrap">
			<table>
	            <tr>
	               <th><label for="username">이름</label></th>
	               <td><input type="text" name="name" id="username" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="userid">아이디</label></th>
	               <td><input type="text" name="id" id="userid" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="nickname">별명</label></th>
	               <td><input type="text" name="nickname" id="nickname" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="userpwd">비밀번호</label></th>
	               <td><input type="password" name="pwd" id="userpwd"></td>
	            </tr>
	               
	            <tr>
	               <th><label for="useremail">이메일</label></th>
	               <td><input type="text" name="email" id="useremail" ></td>
	            </tr>
	            
	            <tr>
	               <th><label for="userphone">전화번호</label></th>
	               <td><input type="text" name="phone" id="userphone" ></td>
	            </tr>
	            
         </table>
         
         <p class="btnWrap">
         	<input type="submit" value="전송">
         	<input type="reset" value="취소"></p>
            
		</form>
	
	</section>

</body>
</html>