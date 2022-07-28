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
  <link rel="stylesheet" href="css/main.css">
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <title>메인</title>
</head>
<body>
<%--상단 헤더부분--%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">JAVADO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="/">Learning
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="">Training</a>
      </ul>
      <form class="d-flex">
<%--        스텝 드롭다운 부분--%>
        <ul id="floor">
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Step</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="main?step=1">step1</a>
              <a class="dropdown-item" href="main2?step=2">step2</a>
              <a class="dropdown-item" href="main3?step=3">step3</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">link</a>
            </div>
          </li>
        </ul>
<%-- 우측 로그인부분--%>
        <button class="btn btn-primary my-2 my-sm-0" id="login">login</button>
      </form>
    </div>
  </div>
</nav>
<%--학습 진행도 게이지--%>
<div class="progress">
  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="3" aria-valuemax="100" style="width: 3%;"></div>
</div>

<%--    버튼목록 --%>
<div class="buttonContainer">
  <div class="buttons">
    <button type="button" class="btn btn-outline-primary" draggable="true" value="int">Int</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true">String</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="while">while</button>
    <button type="button" class="btn btn-outline-danger" draggable="true">for</button>
    <button type="button" class="btn btn-outline-warning" draggable="true">dd</button>
    <button type="button" class="btn btn-outline-info" draggable="true">Info</button>
    <button type="button" class="btn btn-outline-light" draggable="true">Light</button>
    <button type="button" class="btn btn-outline-dark" draggable="true">Dark</button>
  </div>

</div>

<%-- 사용할 버튼 드래그로 넣는 곳--%>
<%--    임시--%>
<div class="container" id="answerCon">
  <div class="column" id="inButton">
    <div class="list-group-item" draggable="true"><h1>무엇이 들어갈까요</h1>
      <div class="answerDiv"></div>
    </div>

  </div>
</div>
<%--    임시--%>
<div class="container" id="conScreen">
  <div class="screenContainer" >

  </div>
</div>




<%--어랏트--%>
<div class="alert alert-dismissible alert-primary">
  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
  <strong>좋아요!</strong> 이제 Step 2예요. <a href="#" class="alert-link">this important alert message</a>.
</div>

<button type="button" class="btn btn-primary disabled" id="nextStep" onclick="location.href='/main2'">Next</button>


<script src="script/dragStep.js"></script>

</body>
</html>
