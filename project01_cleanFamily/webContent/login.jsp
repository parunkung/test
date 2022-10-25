<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>로그인페이지</title>
   <link rel="stylesheet" type="text/css" href="css/loginformstyle.css">

</head>
<body>
      
   <section>
      <h2>▶ 아이디와 비밀번호를 입력해주세요.</h2>
      <form method="post" action="" class="formWrap">
         <table>
            <tr>
               <th><label for="userid">아이디</label></th>
               <td><input type="text" name="id" id="userid" ></td>
            </tr>
            
            
            <tr>
               <th><label for="userpw">비밀번호</label></th>
               <td><input type="password" name="pwd" id="userpw"></td>
            </tr>
            <tr>
            	<td class="btnWrap" colspan="2">
					<input type="submit" value="로그인" onclick="return loginCheck()" />&nbsp;&nbsp;
					<input type="reset" value="취소" />&nbsp;&nbsp;
					<input type="button" value="회원가입" onclick="location.href='join.do'" />
				</td>
            
            </tr>   
         </table>
                     
      </form>
   </section>
</body>
</html>