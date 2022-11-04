<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%@ include file="header.jsp" %>
		<form>
			<table align="center" width="550">
				<tr>
					<td colspan="2">
						<h3>사원 정보</h3>
						<p style="color:red;">${message}</p> 
					</td>
				</tr>
				
				<tr>
					<td>아이디</td>				
					<td>${member.id}</td>
				</tr>
				
				<tr>
					<td>비밀번호</td>				
					<td>${member.pass}</td>
				</tr>
				
				<tr>
					<td>이름</td>				
					<td>${member.name}</td>
				</tr>
				
				<tr>
					<td>권한</td>
					<td>	
						<c:choose>
							<c:when test="${member.lev=='A'}">운영자</c:when>
							
							<c:otherwise>일반회원</c:otherwise>
						</c:choose>
					</td>
				</tr>
				
				<tr>
					<td>성별</td>
					<td>
						<c:choose>
							<c:when test="${member.gender=='1'}">남자</c:when>
							
							<c:otherwise>여자</c:otherwise>
						</c:choose>
					</td>
				</tr>
				
				<tr>
					<td>전화번호</td>				
					<td>${member.phone}</td>
				</tr>
				
				<tr>			
					<td colspan="2">
						<input type="button" value="메인페이지로 이동" onclick="location.href='main.jsp'" />
					</td>
				</tr>
				
			</table>
		</form>
	</body>
</html>
