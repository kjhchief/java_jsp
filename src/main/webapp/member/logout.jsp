<%@ page contentType="text/html; charset=utf-8" %>
<%
// 세션 삭제 후
//session.invalidate();
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equalsIgnoreCase("loginId")){
			cookie.setMaxAge(0);
			cookie.setPath("/");
			response.addCookie(cookie);
			break;
		}
	}
}

// index.jsp 자동 요청 처리
response.sendRedirect(application.getContextPath()+"/index.jsp");
%>