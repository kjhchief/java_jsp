<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>회원가입을 축하합니다. 당신이 가입하신 정보는 아래와 같습니다.</h2>
이름: <%=pageContext.findAttribute("name") %><br>
아이디: <%=pageContext.findAttribute("id") %>

</body>
</html>