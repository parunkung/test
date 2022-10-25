<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>javabean의 모든 것</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<section>
		<h2>▶ java bean이란?</h2>
		<ul style="padding-left:30px; line-height:1.8;">
			<li>프로그램에서 사용되는 정보가 여러개라면 이를 변수에 저장하고, 
				필요할때마다 개별적으로 접근해서 사용하기보다는 자바빈을 사용하면 필요한 정보를 객체를 구성하는 멤버로 기술해 두고 한꺼번에 데이터에 접근해서 사용</li>
			<li>즉, 회원 벙보를 하나의 묶음으로 관리하기 위해 나온 매카니즘이다.</li>
			<li>데이터를 저장하기 위한 필드와 데이터를 컨트롤하는 getter/setter 메소드를 하나의 쌍으로 가지고 있는 클래스이다.</li>
		
		</ul>
	</section>
	
	<section>
		<h2>▶ java bean 설계규약</h2>
		<ul style="padding-left:30px; line-height:1.8;">
			<li>멤버변수보다 별도의 get/set 메소드는 존재해야 한다.</li>
			<li>get 메소드는 매개변수가 존재하지 않아야 한다.</li>
			<li>set 메소드는 반드시 하나 이상의 매개변수가 존재해야 한다.</li>
			<li>생성자는 매개변수가 존재하지 않아야 한다.</li>
			<li>멤버변수의 접근제어자는 private이고, 각 get/set 메소드의 접근제어자는 public, 클래스의 접근제어자는 public으로 정의한다.</li>
		</ul>
	</section>
	
	<section>
		<h2>▶ java bean 사용하기</h2>
		<p style="line-height:1.8;"><b>1. &lt;javauseBean&gt; 태그</b></p>
		<p style="line-height:1.8;">자바빈 객체를 생성하기 위한 코드이고 태그 속성은<br/>
		   &lt;javauseBean id="빈이름" class="자바빈 클래스 명" [scope="사용범위"]&gt; /<br/>
		   scope 값으로,	
		</p>
		<ul style="padding-left:30px; line-height:1.8;">
			<li>page : 자바 빈은 생성된 페이지 내에서만 접근</li>
			<li>request : 자바 빈이 생성된 요청을 수행하는 페이지들에서 사용</li>
			<li>session :  자바 빈이 생성된 세션에서 요청을 처리하는 페이지들에서 사용</li>
			<li>application : 자바 빈이 생성된 응용 프로그램에 포함된 모든 페이지들에서 사용</li>		
		</ul>
		
		<p style="line-height:1.8;"><b>2. &lt;javasetProperty&gt; 태그</b></p>
		<p style="line-height:1.8;">자바빈 클래스의 속성 값을 설정하기 위한 태그이고, 속성은 <br/>
		   &lt;javasetProperty name="빈 이름" property="속성명" value="설정할 값"&gt; /<br/>
		   &lt;javasetProperty name="빈 이름" property="속성명" value="파라미터명"&gt; /<br/>
		   	
		</p>
	</section>
	
</body>
</html>