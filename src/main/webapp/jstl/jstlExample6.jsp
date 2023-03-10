<%@page import="java.util.StringTokenizer"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="cardNumber" value="1111-2222-3333"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>

</head>
<body>
<c:forTokens var="token" items="${cardNumber}" delims="-">
${token }
</c:forTokens>

</body>
</html>