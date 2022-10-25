<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>설문조사 결과</title>
	<link rel="stylesheet" type="text/css" href="css/reserchFormStyle.css">
</head>
<body>
	<section>
		<div class="contentWrap">
			<h2>▶ 설문조사 결과</h2>
			
			<%
				request.setCharacterEncoding("utf-8");
			
				String name = request.getParameter("name");
				String gender = request.getParameter("gender");
				String seasonArr[] = request.getParameterValues("season");
				
				out.println("이름 : <b>" + name + "</b><br/>");
				
				out.println("성별 :  ");
				
				if(gender.equals("male")){
					out.println("<b>남자</b><br/>");
				} else{
					out.println("<b>남자</b><br/>");
				}
				
				out.println("당신이 좋아하는 계절은 :  ");
				
				for(String i : seasonArr){
					
					int n = Integer.parseInt(i);
					
					switch(n){
						case 1 : out.println("<b> 봄 </b>");
							break;
						case 2 : out.println("<b> 여름 </b>");
							break;
						case 3 : out.println("<b> 가을 </b>");
							break;
						case 4 : out.println("<b> 겨울 </b>");
							break;
					}
				}
				out.println(" 입니다.");
		
			%>
			
		</div>
	</section>
	<hr/>
	<b><a href="javascript.history.go(-1)">다시</a></b>
</body>
</html>