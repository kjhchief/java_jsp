<%@ page contentType="text/html; charset=utf-8"%>
<header>
	<h2>머리글부분</h2>
	<form action="<%=application.getContextPath()%>/member/login.jsp" style="text-align: right;" method="post">
		<label>아이디 : <input type="text" name="id"></label> <label>비밀번호
			: <input type="password" name="password">
		</label> <input type="submit" value="로그인">
	</form>
</header>

<nav>
	<ul>
		<li><a href="board.jsp">게시판</a></li>
		<li>메뉴2</li>
		<li>메뉴3</li>
	</ul>
</nav>