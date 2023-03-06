<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>float를 이용한 홈페이지 레이아웃</title>
<link rel="stylesheet" href="./css/main.css">
</head>

<body>
	<div id="container">
		<header>
			<!-- <h2>머리글부분</h2>-->
			<form action="login" style="text-align: right;" method="post">
				<label>아이디 : <input type="text" name="id"></label> <label>비밀번호
					: <input type="password" name="password">
				</label> <input type="submit" value="로그인">
			</form>
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
			<%
			String requestMethod = request.getMethod();
			%>
			<%-- <h2>요청 방식: <%=requestMethod %> </h2> --%> 
			<h2>요청 방식: <%="글자만 딱 찍기도 하고" %> </h2>
			<h2>요청 방식: <%= 10*50 %> </h2>
			
			<%!
			String name;
			public String getMessage(){
				return "안녕하세요";
			}
			%>
			
			<%= getMessage() %>
			
			<%-- <%
			int age = 10;
			out.println(age);
			%> --%>
			
		</section>
		<aside>좌우메누</aside>
		<footer>바닥글</footer>
	</div>
</body>
</html>
