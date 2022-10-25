<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>설문조사</title>
	<link rel="stylesheet" type="text/css" href="css/reserchFormStyle.css">
</head>
<body>
	<header>
		<h1>입력양식 post방식으로 jsp파일과 연결</h1>
	</header>
	
	<section>
		<h2>▶ 설문 조사</h2>
		
		<form method="post" action="02_reserch.jsp" 
			  class="formWrap" >
					
			<table>
		
				<tr>
					<th><label for="userName">이름</label></th>
					<td><input type="text" name="name" id="userName"></td>
				</tr>
				
				<tr>
					<th><label>성별</label></th>
					<td><input type="radio" name="gender" value="male"> 남자 &nbsp;
						<input type="radio" name="gender" value="female"> 여자
					</td>
				</tr>
		
				<tr>
				<th><label>좋아하는 계절</label></th>
				<td><input type="checkbox" name="season" value="1"> 봄 &nbsp;
					<input type="checkbox" name="season" value="2"> 여름 &nbsp;
					<input type="checkbox" name="season" value="3"> 가을 &nbsp;
					<input type="checkbox" name="season" value="4"> 겨울 &nbsp;
				</td>
				</tr>
			</table>
			
			  <p class="subBtn"><input type="submit" value="전 송">
                  				<input type="reset" value="취 소"></p>
		</form>
	
	</section>
	
	

</body>
</html>