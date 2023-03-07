<%@ page contentType="text/html; charset=utf-8" %>

<%
	String loginId = request.getParameter("id");
	String password = request.getParameter("password");
	String saveId = request.getParameter("saveid"); 
	
	// 편의상 회원이라고 가정 (DB 연동 생략)
	// HttpSession session = request.getSession(); 원래 이렇게 해야되는데, jsp는 이걸 미리 생성해놓음
	// session.setAttribute("loginId", loginId);
	
	//쿠키를 이용한 로그인 처리
	Cookie loginCookie = new Cookie("loginId", loginId);
	loginCookie.setPath("/"); // 모든 패스에서 사용가능 하도록
	response.addCookie(loginCookie);
	
	// 아이디 저장 쿠키(파일 저장)
	if(saveId != null){
		Cookie saveIdCookie = new Cookie("saveId", loginId);
		saveIdCookie.setPath("/"); 
		saveIdCookie.setMaxAge(60*60*24*100); // 100일 동안 파일 저장 설정
		response.addCookie(saveIdCookie);
	}

	response.sendRedirect(application.getContextPath()+"/index.jsp");
	
	
%>