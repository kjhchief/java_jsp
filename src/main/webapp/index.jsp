<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp</title>
</head>
<body>
<h2>오늘부터 JSP 개발입니다.</h2>
<%
Calendar today = Calendar.getInstance();
String todayString = String.format("%1$tF %1$tT", today);
out.println(todayString); // Printwriter 객체가 미리 생성 되어있다.

Date date;

%>

<h2>구구단 출력</h2>
<%
out.println("<table border ='1'>");
for(int i = 2; i<=9; i++ ){
	out.println("<tr>");
	for(int j = 1; j<=9; j++){
		out.println("<td>"+i+" * "+j+" = "+(i*j)+"</td>");
	}
	out.println("</tr>");
}
%>

</body>
</html>