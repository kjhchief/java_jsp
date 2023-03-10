<%@ page contentType="text/html; charset=utf-8" %>
<!-- 현재 페이지에서 jstl 태그를 사용하기 위해 jstl 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
request.setAttribute("message", "<h1>이것은 과연</h1>");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<%= request.getAttribute("message") %> <br>
${message}<br><br>
<c:out value="${message }" default="디폴트 문자열" escapeXml="false" /><br>
<c:out value="${aaaa }">디폴트 문자열2</c:out>

</body>
</html>