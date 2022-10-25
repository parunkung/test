<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String uid="sqldb";
	String pass="1234";
	String sql="select * from buytbl";
	
%>
	    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매테이블</title>
</head>

<body>
	<header>
		<h1>구매테이블</h1>
	</header>
	
	<nav>
		<ul>
			<li><a href="">메뉴1</a></li>
			<li><a href="">메뉴2</a></li>
			<li><a href="">메뉴3</a></li>
			<li><a href="">메뉴4</a></li>
			<li><a href="">메뉴5</a></li>		
		</ul>
	</nav>
	
	<section>
		<table width='800' border='1'>
			<tr>
				<th>순번</th>
				<th>아이디</th>
				<th>제품명</th>
				<th>제품분류</th>
				<th>가격</th>
				<th>수량</th>	
			</tr>
				
			<%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn=DriverManager.getConnection(url,uid,pass);
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				
				while(rs.next()){
					out.println("<tr>");
					out.println("<td>"+rs.getInt("idnum")+"</td>");
					out.println("<td>"+rs.getString("userid")+"</td>");
					out.println("<td>"+rs.getString("prodname")+"</td>");
					out.println("<td>"+rs.getString("groupname")+"</td>");
					out.println("<td>"+rs.getInt("price")+"</td>");
					out.println("<td>"+rs.getInt("amount")+"</td>");
								
				}
				
			}catch(Exception e){
				e.printStackTrace();
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
	</section>

	<footer>
		<address>서울시 강동구 천호동 국제컴퓨터학원</address>
	</footer>


</body>
</html>