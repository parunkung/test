<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>회원정보 수정</title>
   <script src="script/member.js"></script>
</head>  
<body> 
   
   <h3>회원정보 수정</h3>
   <form action="memberUpdate.do" method="post" name="frm">
      <table>
         <tr>
            <td>이름</td>
            <td><input type="text" name="name" size="20" value="${mVo.name}" readonly></td>
         </tr>
         
         <tr>
            <td>아이디</td>
            <td><input type="text" name="userid" size="20" value="${mVo.userid}" readonly></td>
         </tr>
         
         <tr>
            <td>암호</td>
            <td><input type="password" name="pwd" size="20">*</td>
         </tr>
         
         <tr>
            <td>암호확인</td>
            <td><input type="password" name="pwd_check" size="20">*</td>
         </tr>
         
         <tr>
            <td>이메일</td>
            <td><input type="text" name="email" size="20" value="${mVo.email}"></td>
         </tr>
         
         <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone" size="20" value="${mVo.phone}"></td>
         </tr>
         
         <tr>
            <td>등급</td>
            <td>
               <c:choose>
                  <c:when test="${mVo.admin == 0}">
                     <input type="radio" name="admin" value="0" checked> 일반회원 &nbsp;
                     <input type="radio" name="admin" value="1" > 관리자
                  </c:when>
                  
                  <c:otherwise>
                     <input type="radio" name="admin" value="0" > 일반회원 &nbsp;
                     <input type="radio" name="admin" value="1" checked> 관리자 
                  </c:otherwise>   
               </c:choose>
            </td>
         </tr>
         
         <tr>
            <td colspan="2">
               <input type="submit" value="확인" onclick="return joinCheck()"> &nbsp; &nbsp;
               <input type="reset" value="취소"> 
            </td>
         </tr>
         
         
      </table>
   </form>
   
</body>
</html>