<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>네이버 회원가입</title>
	<link rel="stylesheet" type="text/css" href="css/naverStyle.css">
	
</head>

<body>
	<header>
		<h1><a href="http://www.naver.com">
			<img src="img/logo.png" alt="네이버메인 페이지로 이동"
			class="logo"></a></h1>
	</header>

	<section>
		<h2 class="hidden">네이버 회원가입절차</h2>
		<form action="" method="get">
		
			<ul>
			
				<!-- id -->
				<li>
					<h3><label for=""id>아이디</label></h3>
					<div class="box">
						<input type="text" id="id" name="userid"
							   maxlength="20" class="inL" required>
					<span class="step_url inR">@naver.com</span>				
					</div>
					<span class="error_next_box"></span>
				</li>
				
				<!-- pw1 -->
				<li>
					<h3><label for="pw1">비밀번호</label></h3>
					<div class="box int_pass">
						<input type="password" id="pw1" name="userpw1" 
							   maxlength="20" class="inL" required>
						<span id="alertTxt">사용불가</span>
						<img src="img/icon_pass.png" alt="" class="inR pwImg" id="pwImg1">
								
					</div>
					<span class="error_next_box"></span>
				</li>
				
				<!-- pw2 -->
				<li>
					<h3><label for="pw2">비밀번호 재확인</label></h3>
					<div class="box">
						<input type="password" id="pw2" name="userpw2" 
							   maxlength="20" class="inL" required>
							   
						<img src="img/icon_check_disable.png" alt="" class="inR pwImg" id="pwImg2">
					</div>
					<span class="error_next_box"></span>
				
				</li>	
				
				<!‐‐ name ‐‐>
				<li>
					<h3><label for="name">이름</label></h3>
					<div class="box">
						<input type="text" id="name" name="name" maxlength="20" class="inL" required >
					</div>	
					<span class="error_next_box"></span>
				</li>
				
				<!‐‐ birth ‐‐>
				<li>
					<h3><label for="yy">생년월일</label></h3>

					<div  class="birthWrap">
						<!‐‐birth yy ‐‐>
						<span class="box">
							<input type="text" id="yy" name="yy" maxlength="4" placeholder="년(4자)" >
						</span>
						
						<!‐‐birth mm ‐‐>
						<span class="box">
							<select name="mm" id="mm">
								<option>월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
						</span>

						<!‐‐birth dd ‐‐>
						<span class="box">
							<input type="text" id="dd" name="dd" maxlength="2" placeholder="일" >
						</span>

					</div>

					<span class="error_next_box"></span>
				</li>


				<!‐‐ gender ‐‐>
				<li>
					<h3><label for="gender">성별</label></h3>
					<div class="box">
						<select id="gender" class="inL">
                             <option>성별</option>
                             <option value="M">남자</option>
                             <option value="F">여자</option>
                         </select>
					
					</div>
					<span class="error_next_box">필수정보입니다.</span>
				</li>

				<!‐‐ email ‐‐>
				<li>
					<h3><label for="email">본인확인 이메일(선택)</label></h3>
					<div class="box">
						<input type="email" id="email"
							maxlength="50" class="inL" placeholder="선택입력" >
					</div>
 					<span class="error_next_box">이메일주소를 다시 확인해주세요.</span>
 				</li>

				 <!‐‐ mobile ‐‐>
				
				<li>
					<h3><label for="phoneNo">휴대전화</label></h3>
					<div class="box">
 						<input type="tel" id="phoneNo"
							maxlength="16" placeholder="전화번호 입력" class="inL" >
 					</div>
 					<span class="error_next_box"></span>
 				</li>

 				<!‐‐join btn ‐‐>
 				<li>
 					<input type="submit" value="가입하기" class="joinBtn">

 				</li>			
	
			</ul>
		</form>
	</section>
	<script src="js/script.js"></script>


</body>
</html>