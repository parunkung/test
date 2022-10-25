<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //선언부는 첫 방문자에 의해서 단 한번 수행되는 곳.

	Connection conn=null;	//DB와 연결하겠다는 의미(연결객체 변수)
	Statement stmt=null;	//생성 객체 변수
	ResultSet rs=null;		//결과를 기억시키기 위한 변수(결과 객체 변수)
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String uid="sqldb";
	String pass="1234";
	String sql="select * from usertbl";
		
%>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보테이블</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
	<div class="wrapper">
		
		<header>
			<div class="maxwidth">
			<h1>회원정보테이블</h1>
			</div>
		</header>
		
		<nav>
			<div class="maxwidth">
				<ul>
					<li><a href="">메뉴1</a></li>
					<li><a href="">메뉴2</a></li>
					<li><a href="">메뉴3</a></li>
					<li><a href="">메뉴4</a></li>
					<li><a href="">메뉴5</a></li>
				</ul>
			</div>
		</nav>
		
		<section>
			<div class="maxwidth">
				<table>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>생년월일</th>
						<th>주소</th>
						<th>국번</th>
						<th>전화번호</th>
						<th>키</th>
						<th>가입일자</th>			
					</tr>
					
					<%
					try{
						Class.forName("oracle.jdbc.driver.OracleDriver");	//jdbc 드라이버 연결
						conn=DriverManager.getConnection(url,uid,pass);		//내가 원하는 DB와 연결
						stmt=conn.createStatement();	//생성된 객체
						rs=stmt.executeQuery(sql);		//쿼리결과 기억
						
						while(rs.next()){
							out.println("<tr>");
							out.println("<td>"+rs.getString("userid")+"</td>");
							out.println("<td>"+rs.getString("username")+"</td>");
							out.println("<td>"+rs.getInt("birthyear")+"</td>");
							out.println("<td>"+rs.getString("addr")+"</td>");
							out.println("<td>"+rs.getString("mobile1")+"</td>");
							out.println("<td>"+rs.getString("mobile2")+"</td>");
							out.println("<td>"+rs.getInt("height")+"</td>");
							out.println("<td>"+rs.getString("mdate")+"</td>");
							out.println("</tr>");
						}
						
					}catch(Exception e){
						e.printStackTrace();	//표준 오류로 스텍 추적을 인쇄
					}finally{
						try{
							if(rs != null) rs.close();
							if(stmt != null) stmt.close();
							if(conn != null) conn.close();
						}catch(Exception e){
							e.printStackTrace();
						}
					}
					
					
					%>
					
				</table>
			</div>	
		</section>
	
	
		<footer>
			<div class="maxwidth">
				<address>서울시 강동구 천호동 국제컴퓨터학원</address>
			</div>
		</footer>

	</div>
</body>
</html>