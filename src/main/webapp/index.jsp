<%@ page contentType="text/html; charset=UTF-8" %>
<%
// String loginId = (String)session.getAttribute("loginId");

// 쿠키 쓸 경우
String loginId = null;
String saveId = "";
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie : cookies){
		System.out.println(cookie.getName() + ": " + cookie.getValue());
		if(cookie.getName().equalsIgnoreCase("loginId")){
			loginId = cookie.getValue();
		}
		if(cookie.getName().equalsIgnoreCase("saveId")){
			saveId = cookie.getValue();
		}
	}
}
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>float를 이용한 홈페이지 레이아웃</title>
<link rel="stylesheet" href="<%=application.getContextPath()%>/css/main.css">
</head>


<body>
	<div id="container">
	
		<header>
			<h2>머리글부분</h2>
			<%
			if(loginId == null){ //로그인 하지 않은 상태
			%>
			<form action="<%=application.getContextPath()%>/member/login.jsp" style="text-align: right;" method="post">
				<label>아이디 : <input type="text" name="id" value="<%=saveId%>"></label> 
				<label>비밀번호 : <input type="password" name="password"></label>
				<label>아이디저장 <input type="checkbox" name="saveid" value="save"></label>
				
				<input type="submit" value="로그인">
			</form>
			<% 	
			} else{
			%>
			<p style="color: blue; text-align: right;"><strong><%=loginId %></strong>님이 로그인 중 
			<a href="<%=application.getContextPath()%>/member/logout.jsp">로그아웃</a></p>
			<%	
			}
			%>
			
		</header>

		<nav>
			<ul>
				<li>메뉴1</li>
				<li>메뉴2</li>
				<li>메뉴3</li>
			</ul>
		</nav>
		
		
		<section>
			<article>내용</article>
		</section>
		<aside>좌우메누</aside>
		<footer>바닥글</footer>
	</div>
</body>
</html>
