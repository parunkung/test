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
		<h2> employee 정보 입력 폼</h2>
		
		<div class="contentWrap">
			<form method="post" action="04_employeejdbc.jsp" class="formWrap">
				<table>
					<tr>
						<th><label>NAME</label></th>
						<td><input type="text" name="name" /></td>
					</tr>
				
					<tr>
						<th><label>address</label></th>
						<td><input type="text" name="address" /></td>
					</tr>
					
					<tr>
						<th><label>ssn</label></th>
						<td><input type="text" name="ssn" /></td>
					</tr>
				
				</table>
				
				<div class="btnWrap">
         			<input type="submit" value="저장">
         		</div>

			</form>
		</div>

	</section>
</body>
</html>