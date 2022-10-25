<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자바빈 객체 생성하기</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1>자바빈 클래스 만든 후 자바빈 객체 생성(jsp:useBean)</h1>
	</header>
	
	<%--자바빈 객체 생성하기 --%>
	<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>

	<section>
		<h2>자바 빈 클래스 만들기</h2>
		<table>
			<tr>
				<th>구성요소</th>
				<td>의미</td>
			</tr>
			
			<tr>
				<td>필드</td>
				<td>빈이 가진 속성을 의미합니다. 멤버변수 형태로 제공</td>
			</tr>
			
			<tr>
				<td>메소드</td>
				<td>빈을 외부에서 조작할 수 있도록 하는 방식들을 제공, 멤버변수 형태로 제공</td>
			</tr>
		</table>
		
		<div style="margin-top:50px;">
			<ol style="padding-left:50px">
				<li><b>자바빈 클래스 정의하기 : </b>b>단순히 데이터를 저장할 목적으로 사용</li>
				<li><b>패키지 선언하기 : </b>package 패키지이름;<br/>
					여기서 패키지이름은 자유롭게 만들어 사용가능하다.<br/>
					중복을 피하기 위해서 "도메인이름.폴더이름.클래스이름" 규칙에 따라 지정한다.<br/>
					
					<pre style="font-size:20px">예) <ins>com.saeyan</ins>.<ins>javabeans</ins>.<ins>MemberBean</ins> </pre>
 					<pre>	 <ins>도메인이름 + 폴더이름</ins>  클래스이름</pre>
      				<pre>			패키지이름</pre> 
            					
				</li>
				<li><b>필드 선언하기 : </b>클래스의 구성원이 되는 변수를 private으로 선언한다</li>
				<li><b>자바 빈 프로퍼티 만들기 : </b>자바 빈 private필드를 외부에서 접근하기 위해	공개형 접근제한자인 
					public으로 메소드를 정의해 놓고 간접적으로 필드에 접근해 사용할 수 있는 방식을 프로퍼티라고 한다.
				</li>
			</ol>
		</div>
	
		<div style="background:#ffc; padding:10px; margin-top:30px;">
			<h3>☞ 자바빈 클래스 만드는 방법</h3>
			
			<ol>
				<li>프로젝트 위치하고 바로가기 메뉴에서 new/class 클릭</li>
				<li>package명과, Name명(클래스명) 입력 후 확인</li>
				<li>private으로 필드 선언하기</li>
				<li>필드 선언영역 다음줄에 커서 위치하고 자바빈 프로퍼티 만들기 : <br/>
					source메뉴/Generate Getters and setters 클릭하면 필드 생성된 모든 내용에 대한 메서드 자동 생성됨
				</li>		
			</ol>
		</div>
	
	</section>
	
	<section>
		<h2>▶ 자바빈 객체 생성 후 저장된 정보 출력하기.</h2>
		
		<table>
			<tr style="color:red; font-weight:bold;">
				<td colspan="2">자바빈 객체 생성하기</td>
				<td colspan="2">&lt;jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/&gt; 
				</td>
			</tr>
			
			<tr>		
				<th>필드</th>
				<th>출력문법</th>
				<th>설명</th>
				<th>출력결과</th>
			</tr>
		
			<tr>
				<td>이름</td>
				<td>&lt;%=member.getName() %&gt;</td>
				<td>여기서 member객체는 useBean액션태그의 id값이고, getName()은 자바 빈에서 생성한 메소드 호출 사용함</td>
				<td><%=member.getName() %></td>
			</tr>
		
			<tr>
				<td>아이디</td>
				<td>&lt;%=member.getUserid() %&gt;</td>
				<td>여기서 member객체는 useBean액션태그의 id값이고, getUserid()은 자바 빈에서 생성한 메소드 호출 사용함 </td>
				<td><%=member.getUserid() %></td>
			</tr>
		
		</table>
	</section>

	<section>
		<h2>▶ 정보 변경한 후 변경된 정보 출력하기</h2>
		<%
			member.setName("이상기");
			member.setUserid("parunkung");
		%>
		<table>
			<tr>
				<th>필드</th>
				<th>set 형식방식</th>
				<th>get 형식</th>
				<th>출력결과</th>
			</tr>
			
			<tr>
				<td>이름</td>
				<td>&lt;% member.setName("이상기") %&gt;</td>
				<td>&lt;% member.getName() %&gt;</td>
				<td><%=member.getName() %></td>
			</tr>
			
			<tr>
				<td>아이디</td>
				<td>&lt;% member.setUserid("parunkung") %&gt;</td>
				<td>&lt;% member.getUserid() % &gt;</td>
				<td><%=member.getUserid() %></td>
			</tr>
		</table>
		
		
	</section>






</body>
</html>