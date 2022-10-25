<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>application 내장객체</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1>application 내장객체</h1>
	</header>
	
	<section>
		<h2>▶ application 내장객체와 같이 사용하는 메소드</h2>
		<p style="margin-bottom:10px;">* 웹 서버의 애플리케이션 처리와 관련된 정보를 참조하려고 할 때 사용</p>
		
		<table>
			<tr>
				<th>메소드</th>
				<th>설 명</th>
			</tr>
			
			<tr>
				<td>getServerInfo( )</td>
				<td>컨테이너의 이름과 버전을 반환</td>
			</tr>
			
			<tr>
				<td>getContextPath( )</td>
				<td>웹 애플리케이션의 URL 경로 중 컨텍스트 경로 반환</td>
			</tr>
			
			<tr>
				<td>getRealPath( )</td>
				<td>jsp의 실제 경로를 반환</td>
			</tr>
		
		</table>
	</section>
	
	<section>
		<h2>▶ application 내장객체 실습 예</h2>
		<%
			String serverInfo = application.getServerInfo();
			String appPath = application.getContextPath();
			String filePath = application.getRealPath("05_application.jsp");
						
		%>
	
		<ul style="padding-left:30px;">
			<li> 컨테이너의 이름과 버전 반환<br/>
				<b><%= serverInfo %></b>
			</li>
			
			<li> 웹 애플리케이션의 컨텍스트 패스명<br/>
				<b><%= appPath %></b>
			</li>
			
			<li> 웹 애플리케이션의 파일 경로명<br/>
				<b><%=filePath %></b>
			</li>
			
		</ul>
	</section>
</body>
</html>