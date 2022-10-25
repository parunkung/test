<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>session</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
	<header>
		<h1>session 모든 것</h1>
	</header>

	<section>
		<h2>▶ session 내장객체와 같이 사용되는 메소드</h2>
		<div class="contentWrap">
			<table>
				<tr>
					<th>메소드</th>
					<th>설 명</th>					
				</tr>
				
				<tr>
					<td>Object getAttribute(String name)</td>
					<td>이름에 해당되는 객체 값을 가져온다. 없을 경우에는 null값을 반환한다.
						반환값은 Object 형이므로 반드시 형변환을 하여 사용한다.</td>
				</tr>
				
				<tr>
					<td>Enumeration getAttributeNames() </td>
					<td>세션에서 모든 객체의 이름을 Enumeration형으로 얻어준다.</td>
				</tr>
				
				<tr>
					<td>long getCreationTime()</td>
					<td>세션이 만들어진 시간을 반환 </td>
				</tr>
				
				<tr>
					<td>String getId</td>
					<td>해당 세션을 가리키는 고유 id값을 String형으로 변환</td>
				</tr>
				
				<tr>
					<td>long getLastAccessedTime()</td>
					<td>해당 세션이 클라이언트가 마지막으로 request를 보낸 시간을 long형으로 변환</td>
				</tr>
				
				<tr>
					<td>int getMaxInactiveInterval()</td>
					<td>사용자가 다음 요청을 보낼 때까지 세션을 유지하는 최대시간(초단위)을 변환</td>
				</tr>
				
				<tr>
					<td>boolean isNew()</td>
					<td>해당 세션이 처음 생성되었으면 true, 이전에 생성된 세션이면 false</td>
				</tr>
				
				<tr>
					<td>void removeAttribute(String name)</td>
					<td>지정된 이름에 해당하는 객체를 세션에서 제거</td>
				</tr>
			
				<tr>
					<td>void setAttribute(String name, Object value)</td>
					<td>세션에 지정된 이름에 객체를 추가한다.</td>
				</tr>		
			
				<tr>
					<td>void serMaxInactiveInterval(int interval)</td>
					<td>사용자는 다음 요청을 보낼 때까지 세션을 유지하고 최대시간을 설정
						이 시간을 넘기면 서블릿 컨테이너는 세션을 종료한다.</td>
				</tr>
				
				<tr>
					<td>void invalidate()</td>
					<td>해당 세션을 없애고 세션에 속해 있는 값들을 없앤다.</td>
				</tr>

			</table>
		</div>	
	</section>
	
	<section>
		<h2>▶ setAttribute()의 기본형식</h2>
		<p style="background:#ffd; padding:10px 20px;"><b>session.setAttribute(String name, Object value);</b></p>
		
	</section>
	
	<section>
		<h2>▶ 세션에 저장된 값 얻어오기 => getAttribute()</h2>
		<p style="background:#ffd; padding:10px 20px;"><b>Object getAttribute(String name);<br/>
			String id=(String) session.getAttribute("id");<br/>
			Integer age=(Integer) session.getAttribute("age");</b></p>
	</section>
	
	<section>
		<h2>▶ 세션에 값 저장하기</h2>
		<div class="contentWrap">
			<%
				session.setAttribute("id", "parunkung");
				session.setAttribute("pwd", "test1234");
				session.setAttribute("age", 25);
			%>
		
			<h3>세션 설정</h3>
		</div>
	</section>
</body>
</html>