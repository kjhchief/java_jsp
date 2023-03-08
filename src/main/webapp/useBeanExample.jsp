<%@page import="member.bean.Member"%>
<%@ page contentType="text/html; charset=utf-8" %>

<%
//Member member = new Member();
// 저장하는 코드들
//pageContext.setAttribute("member", member);
//request.setAttribute("member", member);
//session.setAttribute("member", member);
//application.setAttribute("member", member);
/* member.setId("bangry");
member.setPassword("1111");
member.setName("김재훈");
member.setEmail("bangry@gmail.com"); */
%>
<!-- 위와 같음 -->
<jsp:useBean id="member" class="member.bean.Member" scope="request"/> <!-- scope에 page, request, session, application -->

<!-- useBean 동작 원리 -->
<%-- <%
Member member = (Member)request.getAttribute("member");
if(member == null){
	member = new Member();
	request.setAttribute("member", member);
}
%> --%>

<jsp:setProperty property="id" value="bangry" name="member"/>
<jsp:setProperty property="password" value="1111" name="member"/>
<jsp:setProperty property="name" value="김기정" name="member"/>
<jsp:setProperty property="email" value="bangry@gmail.com" name="member"/>

<jsp:forward page="useBeanExample2.jsp"/>

<%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>회원 정보</h2>
아이디 : <%=member.getId() %> <br>
아이디 : <jsp:getProperty property="id" name="member"/> <br>
이름 : <%=member.getName() %> <br>
이름 : <jsp:getProperty property="name" name="member"/> <br>
이메일 : <%=member.getEmail() %> <br>
이메일 : <jsp:getProperty property="email" name="member"/> <br>

</body>
</html> 
--%>