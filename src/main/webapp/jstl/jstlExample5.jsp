<%@page import="ezen.member.entity.Member"%>
<%@page import="java.util.List"%>
<%@page import="ezen.member.repository.MemberRepository"%>
<%@page import="ezen.common.factory.DaoFactory"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:set var="score" value="99" scope="page"/> --%>

<%
MemberRepository repository = DaoFactory.getInstance().getMemberRepository();
List<Member> list = repository.findAll();
pageContext.setAttribute("list", list);
%>
<%-- <c:set var="list" value="${list }"/> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<style>
@media ( min-width : 1200px) {
	.container {
		max-width: 970px;
	}
}
</style>
</head>
<body>
	<h1>JSTL을 이용하여 구구단 출력</h1>
	<table border="1" style="background-color: orange">
		<c:forEach var="i" begin="2" end="9" step="2">
			<tr>
				<c:forEach var="j" begin="1" end="9">
					<td>${i}*${j} = ${i*j}</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>

	<div class="container">
		<div class="py-5 text-center">
			<h2>회원 목록</h2>
		</div>
		<div class="row">
			<div class="col">
				<a href="" class="btn btn-primary float-end">회원 등록</a>
			</div>
		</div>
		<hr class="my-4">
		<div>
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>이메일</th>
						<th>나이</th>
						<th>가입일자</th>
					</tr>
				</thead>
				<tbody>
				<c:url var="view" value="/jstl/jstlView.jsp">
					<c:param name="name" value="김재훈"/>
					<c:param name="id" value="bangry"/>
				</c:url>
				
					<c:forEach var="member" items="${list }" varStatus="loopInfo">
						<tr>
							<td>${loopInfo.count}</td>
							<td><a href="${view}">${member.id }</a></td>
							<td>${member.name }</td>
							<td><a href="mailto:${member.email }">${member.email }</a></td>
							<td>${member.age }</td>
							<td>${member.regdate }</td>
						</tr>
					</c:forEach>




				</tbody>
			</table>
		</div>
	</div>

</body>
</html>