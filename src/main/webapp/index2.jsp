<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>float를 이용한 홈페이지 레이아웃</title>
<link rel="stylesheet" href="./css/main.css">
</head>

<body>
	<div id="container">
		<%@ include file="/include/header.jsp"%>

		<section>
			<article>내용</article>
		</section>
		<%@ include file="/include/aside.jsp" %>
		<%@ include file="/include/footer.jsp" %>


		
	</div>
</body>
</html>
