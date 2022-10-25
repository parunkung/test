<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>로그인페이지</title>
   <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/loginformstyle.css">
</head>
<body>
   <header>
      <h1>입력양식 post방식으로 jsp파일과 연결</h1>
   </header>
   
   <section>
      <h2>▶ 아이디와 비밀번호를 입력해주세요.</h2>
      <form method="post" action="03_loginTest.jsp" class="formWrap">
         <table>
            <tr>
               <th><label for="userid">아이디</label></th>
               <td><input type="text" name="id" id="userid" ></td>
            </tr>
            
            
            <tr>
               <th><label for="userpw">비밀번호</label></th>
               <td><input type="password" name="pwd" id="userpw"></td>
            </tr>
               
            
            
         </table>
         
         <p class="btnWrap"><input type="submit" value="전송"></p>
            
      </form>
   </section>
</body>
</html>