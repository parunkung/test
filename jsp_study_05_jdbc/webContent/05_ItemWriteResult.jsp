<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	String sql = "insert into itemTBL values(?,?,?)";

%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String discription = request.getParameter("discription");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,uid,pass);
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setInt(2, Integer.parseInt(price));
		pstmt.setString(3, discription);
		
		pstmt.executeUpdate();
			
	}catch(Exception e){
		e.printStackTrace();
		
	}finally{
		try{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}


%>
 
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품정보 입력</title>
</head>
<body>
	<h3>상품정보 입력 성공</h3>
	<a href = "05_ItemWrite.jsp">상품 전체 목록 보기</a>
</body>
</html>