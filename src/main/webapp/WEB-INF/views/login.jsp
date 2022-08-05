<%--
  Created by IntelliJ IDEA.
  User: ehgns
  Date: 2022-07-26
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
  <link rel="stylesheet" href="css/crud.css">
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <title>로그인</title>
</head>
<body>
<%--헤더위치--%>
<div id="header">
</div>
<%--블록으로 넣어서 회원가입할 수 있게 로그인도 마찬가지로--%>
<div class="container" id="loginBox">
  <form>
    <fieldset id="loginField">
      <br>
      <legend>어서 공부하러 가요!</legend>

      <div class="form-group">
        <label for="loginId" class="form-label mt-4">아이디를 입력해요.</label>
        <input type="email" class="form-control" id="loginId" aria-describedby="emailHelp" placeholder="아이디">
      </div>
      <div class="form-group">
        <label for="loginPw" class="form-label mt-4" >비밀번호를 입력해요.</label>
        <input type="password" class="form-control" id="loginPw" placeholder="비밀번호">
      </div><br><br>
      <input type="button" class="btn btn-secondary my-2 my-sm-0" value="로그인!" onclick="login()">
      <button class="btn btn-secondary my-2 my-sm-0" id="joinPageBt"><a class="nav-link active" href="/join">가입하기!<span class="visually-hidden">(current)</span>
      </a></button>
    </fieldset>
  </form>

</div>
<%--자바(캐릭터)가 있는 곳--%>
<div class="java" data-bs-toggle="collapse" href="#collapseExample" style="position: relative; z-index: 5; width: 15vw; height: 140px; top:20%"><img src="img/lion640.jpg" class="img-fluid" alt="..."><span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="clickBatge">
    ↙ Click !!!
    <span class="visually-hidden">unread messages</span>
  </span></div>
<%--콜랩스 자바가 문제를 알려주는 영역--%>
<div class="collapse" id="collapseExample">
  <div class="card card-body" id="loginComment">
    안뇽
  </div>
</div>





<%--푸터--%>
<div id="footer">
</div>
<%--푸터--%>
<script src="script/crud.js"></script>

</body>
</html>
