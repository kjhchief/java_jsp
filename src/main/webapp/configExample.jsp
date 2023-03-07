<%@ page contentType="text/html; charset=utf-8" %>

<%
String message = config.getInitParameter("message");
String uploadPath = application.getInitParameter("uploadPath");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
web.xml에서 읽어들인 초기 파라미터 값 : <%=message %> <br>
업로드 패스 : <%=uploadPath %> <br>
<%=page %>, <%=this %>


</body>
</html>