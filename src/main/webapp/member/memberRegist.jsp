<%@page import="ezen.member.repository.JdbcMemberRepository"%>
<%@page import="ezen.member.repository.MemberRepository"%>
<%@ page contentType="text/html; charset=utf-8" %>

<% request.setCharacterEncoding("utf-8"); %>

<!-- 위의 작업을 액션 태그 활용하여 -->
<jsp:useBean id="member" class="ezen.member.entity.Member" scope="request"/>
<jsp:setProperty property="*" name="member"/>

<%
// 회원 테이블에 등록
MemberRepository repository = new JdbcMemberRepository();
repository.create(member);
%>

<!-- 자바 코드를 사용하지 않고 웹 컨테이너가 지원하는 액션태그 사용 -->
<jsp:forward page="/member/memberResult.jsp"/>