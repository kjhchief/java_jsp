<%@page import="member.bean.Member"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%
//useBeanExample에서 유즈빈의 id
//Member member= (Member)request.getAttribute("member");


%>
<!-- 객체 생성이 아니라 읽어 올 때(받을 때)도 useBean을 똑같이 쓴다. -->
<jsp:useBean id="member" class="member.bean.Member" scope="request"/> <!-- scope에 page, request, session, application -->

 
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