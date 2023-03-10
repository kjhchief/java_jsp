<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
//request.setAttribute("message", "<h1>이것은 과연</h1>");
%>
<!-- scope가 저장하는 범위? 페이지 컨텍스트 . id는 키가 된다. '멤버 객체'는 값이 된다.-->
<jsp:useBean id="member" class="ezen.member.entity.Member" scope="page"/> 
<!-- 프로퍼티가 변수 이름 -->
<%-- <jsp:setProperty name="member" property="name" value="후니"/> --%>
<!-- 4개의 스코프 객체에 속성 설정 -->
<c:set var="message" value="메세지"/><!-- var는 스코프에 저장 -->
<c:remove var="message"/>

<!-- 자바빈의 프로퍼티 설정 -->
<c:set target="${member }" property="name" value="박찬호"/>
<c:set target="${member }" property="id" value="bangry"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
${message }<br>
<c:out value="${message }" default="디폴트 문자열" escapeXml="false" /><br>
<c:out value="${aaaa }">디폴트 문자열2</c:out><br>
회원 이름 : ${member.name }, 아이디: ${member.id }


</body>
</html>