<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="ezen.common.factory.DaoFactory"%>
<%@page import="ezen.member.entity.Member"%>
<%@page import="java.util.List"%>
<%@page import="ezen.member.repository.JdbcMemberRepository"%>
<%@page import="ezen.member.repository.MemberRepository"%>
<%-- <jsp:useBean id="member" class="ezen.member.entity.Member" scope="request" /> --%>
<%-- <jsp:setProperty property="*" name="member" /> --%>
<%
MemberRepository repository = DaoFactory.getInstance().getMemberRepository();
String idd = request.getParameter("id");
Member member = repository.getMember(idd);

String memberId = member.getId();
String memberName = member.getName();
String memberEmail = member.getEmail();
Date memberRegdate = member.getRegdate();

System.out.println(member);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원 상세</title>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
  crossorigin="anonymous" />
<style>
@media ( min-width : 1200px) {
	.container {
		max-width: 970px;
	}
}
</style>
</head>

<body>
  <div class="container">
    <div class="py-5 text-center">
      <h2>회원 상세</h2>
    </div>
    <div>
      <label for="id">아이디</label> <input type="text" id="id"
        name="id" class="form-control" value='<%=memberId%>' readonly>
        
    </div>
    <div>
      <label for="name">이름</label> <input type="text" id="name"
        name="name" class="form-control" value='<%=memberName %>' readonly>
    </div>
    <div>
      <label for="email">이메일</label> <input type="text" id="email"
        name="email" class="form-control" value='<%=memberEmail %>' readonly>
    </div>
    <div>
      <label for="regdate">가입일자</label> <input type="text" id="regdate"
        name="regdate" class="form-control" value='<%=memberRegdate %>' readonly>
    </div>
    <hr class="my-4">
    <div class="row">
      <div class="col">
        <button class="w-100 btn btn-primary btn-lg"
          onclick="#" type="button">회원정보 수정</button>
      </div>
      <div class="col">
        <button class="w-100 btn btn-secondary btn-lg"
          onclick="" type="button">회원 목록</button>
      </div>
    </div>
  </div>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>
</html>