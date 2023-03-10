<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <c:set var="score" value="99" scope="page"/> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<c:if test="${not empty param.score }">
		<c:choose>
			<c:when test="${param.score >= 90 }">
		수 입니다.
	</c:when>
			<c:when test="${param.score >= 80 }">
		우 입니다.
	</c:when>
			<c:when test="${param.score >= 70 }">
		미 입니다.
	</c:when>
			<c:when test="${param.score >= 60 }">
		양 입니다.
	</c:when>
			<c:otherwise>
		가 입니다. 가라가라가~~
	</c:otherwise>

		</c:choose>
	</c:if>
	
	<c:if test="${empty param.score }">
	파라미터 score가 없습니다.
	</c:if>

</body>
</html>