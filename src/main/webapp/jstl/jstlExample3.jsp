<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="score" value="55" scope="page"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<c:if test="${score >= 60}"> <!-- 내부적으로 parseInt도 해줌. 다만 else가 없음 -->
합격데스.
</c:if>
<c:if test="${score<60 }">불합격 입니다.</c:if>
<br>
<c:if test="${empty param.id }">
당신은 id를 전달하지 않았소.
</c:if>
<c:if test="${not empty param.id }">
${param.id }
</c:if>

</body>
</html>