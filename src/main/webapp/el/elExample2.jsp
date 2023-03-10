<%@page import="ezen.member.entity.Member"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%
pageContext.setAttribute("id", "bangry");
request.setAttribute("name", "김재훈");
session.setAttribute("age", 30);
application.setAttribute("company", "이젠 컴퓨터 아카데미"); //범위 가장 넓은
%>

<%=pageContext.getAttribute("id") %><br>
<%=request.getAttribute("name") %><br>
<%=session.getAttribute("age") %><br>
<%=application.getAttribute("company") %><br>

<%=pageContext.getAttribute("company", PageContext.APPLICATION_SCOPE) %> <br>
<%=pageContext.findAttribute("name") %><br>

<%
	Member member = new Member();
	member.setId("looney");
	member.setName("김루니");
	member.setAge(7);
	member.setEmail("looney@gmail.com");
	
	request.setAttribute("member2", member);
	
%>

브라우저 요청 방식 : <%= request.getMethod() %> <br>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>EL이 제공하는 11개의 디폴트 객체</h2>
${param.id}, ${param["id"] }<br> <!-- 파라미터 이름에 특수기호 들어가면 대괄호로만 쓸 수 있다. -->
${paramValues.hobby[0]}, ${paramValues.hobby[1] }<br>
${header["user-agent"] }<br>
${headerValues.Cookie[0]}<br>
${cookie.saveId.value }<br>
${pageScope.id }<br>
${requestScope.name }<br>
${sessionScope.age }<br>
${applicationScope.company }<br>

${id }<br>
${name }<br>
${age }<br>
${company }<br>

${requestScope.member2.name } <br>
${member2.name } <br>
${member2.getName() } <br> <!-- EL안에서 자바 메소드도 호출 가능. 비권장. 굳이? 스크립트릿에 쓰면 되지. -->
브라우저 요청 방식: ${pageContext.request.method } <br>
<%-- <%=application.getContextPath() %> <br> 아래와 같음 --%> 
웹애플리케이션이름(Context Path) : ${pageContext.servletContext.contextPath }

</body>
</html>