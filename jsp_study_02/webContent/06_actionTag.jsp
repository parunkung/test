<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>액션 테그</title>
	<link rel="stylesheet" type="text/css" href="css/loginformstyle.css">
</head>
<body>
	<h1>액션 태그</h1>
	
	<section>
		<div class="contentWrap">
			<h2>▶ jsp 액션태그의 종류</h2>
			<table>
				<tr>
					<th>메소드</th>
					<th>설 명</th>
				</tr>
				
				<tr>
					<td>&lt;jsp:forward&gt;</td>
					<td>다른 사이트로 이동할 때 사용<br/>
						페이지의 흐름을 제어할 때 사용<br/>
						<p style="color:red; font-weight:bold">
						형식1 : &lt;jsp:forward page = "이동할 사이트명"/&gt;<br/>
						형식2 : &lt;jsp:forward page = "이동할 사이트명"/&gt; &lt;/jsp:forward&gt;<br/>
						</p>
					</td>
				</tr>
				
				<tr>
					<td>&lt;jsp:include&gt;</td>
					<td>정적 혹은 동적인 자원을 현재 페이지의 내용에 포함시킨다.<br/>
						페이지를 모듈화 할 때 사용<br/>
						<p style="color:red; font-weight:bold">
						형식 : &lt;jsp:include page = "이동할 사이트명"/&gt;
						</p>
				</tr>
				
				<tr>
					<td>&lt;jsp:param&gt;</td>
					<td>&lt;jsp:forward&gt;, &lt;jsp:include&gt;와 같이 사용되며, 파라미터를 추가할 때 사용<br/>
						페이지의 흐름을 제어할 때 사용<br/>
						<p style="color:red; font-weight:bold">
						형식 : &lt;jsp:param name= "파라미터" value="파라미터값"/&gt;
						</p>
					</td>
				</tr>
				
				<tr>
					<td>&lt;jsp:useBean&gt;</td>
					<td>빈을 생성하고 사용하기 위한 환경을 정의한 액션태그</td>
				</tr>
				
				<tr>
					<td>&lt;jsp:setProperty&gt;</td>
					<td>액션은 빈에서 속성 값을 할당</td>
				</tr>
	
				<tr>
					<td>&lt;jsp:getProperty&gt;</td>
					<td>액션은 빈에서 속성 값을 얻어올 때 사용</td>
				</tr>
			</table>
		</div>
	</section>
	
	<section>
		<h2>▶ 일반사용자, 관리자로 접속</h2>
		
		<form method="post" action="">
			<table>
		    	<tr>
		        	<th><label for="userID">아이디</label></th>
		            <td><input type="text" name="ID" id="userID" ></td>
		        </tr>
		                
		        <tr>
		          	<th><label for="userPwd">암 호</label></th>
		            <td><input type="password" name="userPwd" id="userPwd"></td>
		        </tr>
		               
		        <tr>
		            <th><label for="loginCheck">접속자</label></th>
		            <td><input type="radio" name="loginCheck" value="user" checked="checked"> 사용자 &nbsp;
		            	<input type="radio" name="loginCheck" value="manager"> 관리자 
		            </td>
		        </tr>
		            
		     </table>
         
        	 <p class="btnWrap"><input type="submit" value="로그인"></p>
            
      </form>

	</section>


</body>
</html>