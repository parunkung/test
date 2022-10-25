<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- jsp페이지에서 에러가 발생하면 보여줄 페이지(error.jsp)를 설정 --%>
<%@ page errorPage="error.jsp"%>
 
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jsp 기본태그 - 지시자</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>
<body>
	<header>
		<h1>지시자의 모든 것</h1>
	</header>
	
	<section>
		
		<div class="contentWrap">
			<h2>▶ 지시자란?</h2>
			<ul>
				<li>jsp파일의 속성을 기술하는 jsp문법</li>
				<li>jsp 컨테이너에게 해당페이지를 어떻게 처리해야 하는지 전달하기 위한 내용을 담고 있다.</li>
			</ul>
		</div>
		
		<div class="contentWrap">
			<h2>▶ 지시자의 종류</h2>
			<table>
				<tr>
					<th>종류</th>
					<th>사용용도</th>
				</tr>
				
				<tr>
					<td>page</td>
					<td>해당 jsp페이지 전반적으로 환경을 설정할 내용을 지정</td>
				</tr>
				
				<tr>
					<td>include</td>
					<td>현재 페이지에 다른 파일의 내용을 삽입할때 사용</td>
				</tr>
				
				<tr>
					<td>tablib</td>
					<td>테그라이브러리에서 태그를 꺼내와 사용할 수 있는 기능을 제공한다.</td>
				</tr>
							
			</table>
		</div>
		
	</section>
	
	<section>
		<h2>▶ page 지시자 - import 속성</h2>
		
		<%
			Calendar date=Calendar.getInstance();	//calendar 객체를 리턴
			SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
			SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
		%>
		
		오늘은 <b><%= today.format(date.getTime()) %></b>입니다. <br/>
		지금 시각은 <b><%= now.format(date.getTime()) %></b>입니다. <br/>
		
	</section>
	
	<section>
		<h2>▶ page 지시어 - errorPage 속성 isErrorPage 속성</h2>
			
	</section>
	
	<section>
		<div class="contentWrap">
			<h2>▶  => <span style="color:red"> </span></h2>
			<ul>
				<li><b>errorPage</b> : 에러가 발생하였을 때 보여줄 에러 페이지 설정합니다.</li>
				<li><b>isErrorPage</b> : 현재의 페이지가 에러 페이지인지 아닌지 설정하기 위한 속성입니다.<br/>
										 에러페이지이면 값으로 "true"이고, 아니면 "false"이다.
				</li>
			</ul>
		</div>
		
		<div class="exampleWrap">
			0으로 나누는 것은 불가능합니다. 
		
			<%-- 강제로 예외를 발생시킴 --%>
			< %= 2/0 %>	<!-- 강제 에러 발생 jsp표현식으로 수정해서 확인할 것 -->
		</div>
	</section>
	
	<section>
		
		<div class="contentWrap">
			<h2>▶ include 지시어 - file 속성</h2></h2>
			<ul>
				<li>현재 jsp파일에 다른 html이나 jsp 문서를 포함하기 위한 기능을 제공</li>
				<li>file 속성이 include 지시어의 유일한 속성이다.</li>
			</ul>
		</div>
	</section>
	
		
	
</body>
</html>