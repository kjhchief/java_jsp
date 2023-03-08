<%@page import="ezen.member.entity.Member"%>
<%@page import="java.util.List"%>
<%@page import="ezen.member.repository.JdbcMemberRepository"%>
<%@page import="ezen.member.repository.MemberRepository"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%
// MemberRepository를 이용한 DB연동
MemberRepository repository = new JdbcMemberRepository();
List<Member> list = repository.findAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원 목록</title>
</head>
<body>
<h2>우리 사이트에 가입된 회원 목록</h2>
<table border='1'>
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>이메일</th>
		<th>나이</th>
		<th>가입일자</th>
	</tr>
	
	<%
	for(Member member : list){
	%>
	<tr>
		<td><%=member.getId() %></td>
		<td><%=member.getName() %></td>
		<td><%=member.getEmail() %></td>
		<td><%=member.getAge() %></td>
		<td><%=member.getRegdate() %></td>
	</tr>		
	<%
	}
	%>

</table>

</body>
</html>