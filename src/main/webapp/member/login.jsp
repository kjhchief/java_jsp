<%@page import="ezen.common.factory.DaoFactory"%>
<%@page import="ezen.member.entity.Member"%>
<%@page import="ezen.member.repository.JdbcMemberRepository"%>
<%@page import="ezen.member.repository.MemberRepository"%>
<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="member" class="ezen.member.entity.Member" scope="request" />
<jsp:setProperty property="*" name="member" />
<%
String saveId = request.getParameter("saveid");
// DB 연동
// MemberRepository repository = new JdbcMemberRepository();
MemberRepository repository = DaoFactory.getInstance().getMemberRepository();
Member loginMember = repository.isMember(member);

// 회원인 경우
if (loginMember != null) {
	// 쿠키를 이용한 로그인 처리
	Cookie loginCookie = new Cookie("loginId", member.getId());
	loginCookie.setPath("/"); // 모든 패스에서 사용가능 하도록
	response.addCookie(loginCookie);
	// 아이디 저장 쿠키
	if (saveId != null) {
		Cookie saveIdCookie = new Cookie("saveId", member.getId());
		saveIdCookie.setPath("/");
		saveIdCookie.setMaxAge(60 * 60 * 24 * 100); // 100일 동안 파일 저장 설정
		response.addCookie(saveIdCookie);
	}
	response.sendRedirect(application.getContextPath() + "/index.jsp");
} else { // 회원이 아닌 경우
		 //로그인 화면으로 이동 시킴
%>
	<p style="color: red">
	아이디 혹은 비밀번호를 잘못 입력했습니다. <br>
	입력한 내용을 다시 확인해주세요.
	</p>

<%
}
%>