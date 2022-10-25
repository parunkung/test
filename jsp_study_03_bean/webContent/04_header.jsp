<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
	<h1><a href="04_main.jsp">자바빈을 활용한 입력폼 만들어 출력결과 확인하기</a></h1>
</header>

<nav>
	<ul>
		<li><a href="sub01.jsp">회원정보입력</a></li>
		<li><a href="04_boardWriteForm.jsp">게시글정보입력</a></li>
		<li><a href="04_itemWriteForm.jsp">상품정보입력</a></li>
		<li><a href="04_movieWriteForm.jsp">영화정보입력</a></li>
		<li>
			<% if(session.getAttribute("userLogin") == null){%>
				<a href="04_loginform.jsp">로그인</a>
				<%}else{%>
				<form method="post" action="04_logOut.jsp">
					<input type="submit" value="로그아웃">
				
				</form>		
			<%	}
			
			%>
		
		
		</li>

	</ul>


</nav>