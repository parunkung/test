<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	String sql = "insert into employee values(?,?,?)";
	
%>  

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String ssn = request.getParameter("ssn");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,uid,pass);
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, address);
		pstmt.setString(3, ssn);
		
		pstmt.executeUpdate();
		
	}catch (Exception e){
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
<title>내용 입력</title>
</head>
<body>
	<h3>회원정보 입력 성공</h3>
	<a href = "04_employee.jsp">회원 전체 목록보기</a>
	
</body>
</html>