<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="./css/main.css">
</head>
<body>
	<div id="container">
		<%@ include file="/include/header.jsp"%>

		<section>
			<article>
				<h2>게시판 글 목록</h2>
				<table border='1'>
					<tr>
						<th>번호</th>
						<th>글제목</th>
						<th>글쓴이</th>
						<th>조회수</th>

					</tr>
					<tr>
						<th>1</th>
						<th>jsp연습입니다</th>
						<th>김재훈</th>
						<th>100</th>

					</tr>

				</table>

			</article>
		</section>
		<%@ include file="/include/aside.jsp"%>
		<%@ include file="/include/footer.jsp"%>



	</div>

</body>
</html>