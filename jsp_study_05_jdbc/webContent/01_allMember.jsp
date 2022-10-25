<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from membership";
%>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>membership테이블 출력</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<header>
		<h1>데이터베이스와 jdbc</h1>
	</header>
	
	<section>
		<h2>구축된 db의 membership테이블의 내용 출력하기</h2>
		<div class="contentWrap">
			<table>
				<tr>
					<th>이름</th>
					<th>아이디</th>
					<th>암호</th>
					<th>이메일</th>
					<th>전화번호</th>
					<th>권한(1:관리자, 0:일반회원)</th>
				</tr>
				
				<%
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");	// jdbc드라이버 로드
					conn = DriverManager.getConnection(url,uid,pass);	// 데이터베이스와 연결
					stmt = conn.createStatement();						// sql문 실행
					rs = stmt.executeQuery(sql);						// sql 조회
					
					while(rs.next()){
						out.println("<tr>");
						out.println("<td>"+rs.getString("name")+"</td>");
						out.println("<td>"+rs.getString("userid")+"</td>");
						out.println("<td>"+rs.getString("pwd")+"</td>");
						out.println("<td>"+rs.getString("email")+"</td>");
						out.println("<td>"+rs.getString("phone")+"</td>");
						out.println("<td>"+rs.getInt("admin")+"</td>");
						out.println("</tr>");
					}
					
				}catch(Exception e){
					e.printStackTrace();
				}finally{
					try{
						if(rs != null)	rs.close();
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

</body>
</html>


