<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    span.error{
      color: red;
    }
  </style>
</head>
<body>
  <h2>회원 가입 화면</h2>
  <form action="memberRegist.jsp" method="post" > 
  	<!-- name이 파라미터 이름 -->
    아이디 : <input type="text" name="id" id="id"> <span class="error" id="id-error"></span> <br>
    비밀번호 : <input type="password" name="password"><span class="error" id="pw-error"></span><br>
    이름 : <input type="text" name="name"><br>
    이메일 : <input type="text" name="email"><br>
    나이 : <input type="text" name="age"><br>

    <input type="submit" value="회원가입">
    <input type="reset" value="취소">

  </form>

  <script>
    document.querySelector("form").addEventListener("submit", serverSubmit);

    function serverSubmit(event){
      const form = event.target;
      
      // 서버로 입력 데이터 전송 전 데이터 유효성 검사 진행
      let userId = form.id.value; // id 는 위에 name="id" 이거임 //BOM접근(브라우저 객체가 기본 제공)
      // document.querySelector("#id").value; //DOM접근

      if(!userId){ // 값이 입력 됐으면 true, null이나 undefined면 false
        // alert("아이디를 입력하여 주세요.")
        errorMessage("#id-error","아이디를 입력하세요")
        form.id.focus();
        //서버로 전송하면 안 되기 때문에 디폴트 이벤트 실행 X
        event.preventDefault();
      }

      if(!form.passwd.value){ // 사용자 비밀번호가 입력되지 않았을 때
        // alert("아이디를 입력하여 주세요.")
        errorMessage("#pw-error","비밀번호를 입력하세요")
        form.passwd.focus();
        //서버로 전송하면 안 되기 때문에 디폴트 이벤트 실행 X
        event.preventDefault();
      }

      // checkbox에 대한 유효성 검증
      let isChecked = false;
      let hobbys= form.hobby;
      
      hobbys.forEach(hobby => {
        if(hobby.checked){
          isChecked = true;
        }
      })
      if(!isChecked){
        errorMessage("#hobby-error","취미를 선택하세요")
        event.preventDefault();
      }

    }
  
    

    function errorMessage(selector,errorMessage){
      document.querySelector(selector).innerHTML = errorMessage;
    }



  </script>


</body>
</html>