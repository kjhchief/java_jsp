<%@ page contentType="text/html; charset=utf-8" %>
<%!
private int count;

// JSP에서 init()메소드 오버라이딩
  public void jspInit() { // 언더바(_) 빼야함
	count = 0;
  }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>

<h1>당신은 <%= ++count%>번째 방문자 입니다.</h1>

</body>
</html>