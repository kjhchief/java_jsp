<%@page import="ezen.common.factory.DaoFactory"%>
<%@page import="ezen.member.repository.JdbcMemberRepository"%>
<%@page import="ezen.member.repository.MemberRepository"%>
<%@ page contentType="text/html; charset=utf-8" %>

<% request.setCharacterEncoding("utf-8"); %>

<!-- 위의 작업을 액션 태그 활용하여 -->
<!-- 리퀘스트 객체 안에 멤버 객체가 저장된 상태. request에 대한 이해... 서블릿에서 나온건데. -->
<jsp:useBean id="member" class="ezen.member.entity.Member" scope="request"/> 
<jsp:setProperty property="*" name="member"/>

<%
// 회원 테이블에 등록
// MemberRepository repository = new JdbcMemberRepository();
// 인터페이스 통해 insert
MemberRepository repository = DaoFactory.getInstance().getMemberRepository();
repository.create(member);
%>

<!-- 자바 코드를 사용하지 않고 웹 컨테이너가 지원하는 액션태그 사용 -->
<jsp:forward page="/member/memberResult.jsp"/>
<%-- <jsp:forward page="/member/memberDetail.jsp"/> --%>