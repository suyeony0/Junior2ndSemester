<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>개인정보 수집</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <style>
      #login-form{
         width:650px;

         margin:80px auto;

         border: 5px solid gray;

         border-radius: 15px;

         padding: 15px;
       }
    </style>
  </head>

  <body class="is-preload">

    <!-- Menu Toggle -->
    <jsp:include page="header.jsp" />

    <!-- Main -->
    <section>
      <div class="inner">
        <br>
        <h2 style="color:white; text-align:center; font-size:40px ; color:orange">개인정보 수집 동의서</h2>

        <form id="login-form" action="#" method="GET"> <!--여기 action 부분에 내용을 전송받을 url을 넣어줘야 함.-->
          <!--action #에 php파일로 하면 php파일에서 #_REQUEST['user-id']라고 선언하면 user-id라는 변수로 해당 값이 넘어옴-->
          <h4>첫째</h4>
          <p>수집하는 개인정보의 항목 - 첫째, 식빵굽냥은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.</p>

            <p>회원가입 -  아이디, 비밀번호, 메일주소 </p>

            <hr />

            <h4>둘째</h4>
            <p>서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. </p>

            <p></p>
            <h2 style="text-align:center">동의 하시겠습니까?</h2>

          <span style="text-align:center">
          <a href="Register.jsp" class="button primary"
            style="background-color:transparent; border:1px solid white; border-radius:10px;
            font-size:20px; width:300px;">Agreement</a> <!--동의-->
          <a href="index.html" class="button primary"
            style="background-color:transparent; border:1px solid white; border-radius:10px;
            font-size:20px; width:300px;">메인화면</a> <!--메인 페이지로 돌아가기-->
            </span>

      </div>
    </section>

    <!-- Footer -->
      <jsp:include page="footer.jsp" />

  </div>

    <!-- Script -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
