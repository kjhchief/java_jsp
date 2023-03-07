<%@ page contentType="text/html; charset=utf-8" %>

<%
// 입력데이터 수신
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");
String[] hobbys= request.getParameterValues("hobby");

// 수신한 데이터 DB회원 테이블에 입력 후
// 가입 결과를 보여주는 페이지로 이동(위임)
// ServletContext application = request.getServletContext(); 이렇게 만들어져 있음.
request.setAttribute("id", id);
request.setAttribute("name", name);
RequestDispatcher rd = application.getRequestDispatcher("/member/memberResult.jsp"); // 디스패쳐는 상대경로 못 씀.
rd.forward(request, response); //여기의 request 안에 위에 셋어트리뷰트에서 넣은 id랑 name이 들어있다.


%>
<%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

아이디: <%= id %><br>
비밀번호: <%= passwd %><br>
이름: <%=name %><br>
취미: 
<%
if (hobbys != null) {
	for (String hobby : hobbys) {
%>
	<%= hobby %>
<%	
	}
}
%>




</body>
</html>
--%>