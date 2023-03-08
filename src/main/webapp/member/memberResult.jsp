<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="member" class="ezen.member.entity.Member" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>회원가입을 축하합니다. 당신이 가입하신 정보는 아래와 같습니다.</h2>
이름: <jsp:getProperty property="name" name="member"/><br>
아이디: <jsp:getProperty property="id" name="member"/><br>
비밀번호: <jsp:getProperty property="password" name="member"/><br>
나이: <jsp:getProperty property="age" name="member"/><br>
이메일: <jsp:getProperty property="email" name="member"/>

</body>
</html>