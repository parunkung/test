<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보입력</title>
	<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>
	<header>
		<h1>회원정보 입력하기</h1>
	</header>	
	<section>
		<h2>▶ membership 정보 입력 폼</h2>
		
		<div class="contentWrap">
			<form method="post" action="03_addMember.jsp" class="formWrap">
				<table>
					<tr>
						<th><label>이름</label></th>
						<td><input type="text" name="name"/></td>
					</tr>
					
					<tr>
						<th><label>아이디</label></th>
						<td><input type="text" name="userid"/></td>
					</tr>
					
					<tr>
						<th><label>암호</label></th>
						<td><input type="password" name="pwd"/></td>
					</tr>
					
					<tr>
						<th><label>이메일</label></th>
						<td><input type="text" name="email"/></td>
					</tr>
				
					<tr>
						<th><label>전화번호</label></th>
						<td><input type="text" name="phone"/></td>
					</tr>
				
					<tr>
						<th><label>등급</label></th>
						<td><input type="radio" name="admin" value="1"/> 관리자 &nbsp;
							<input type="radio" name="admin" value="0" checked="checked"/> 일반회원 &nbsp;
						</td>
					</tr>
				
				</table>
				
				<div class="btnWrap">
         			<input type="submit" value="전송">
         			<input type="reset" value="취소">
         		</div>
			</form>
		</div>
	
	</section>

</body>
</html>