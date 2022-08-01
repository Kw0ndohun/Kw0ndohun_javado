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
          <a class="nav-link active" href="#">Training</a>
      </ul>
      <form class="d-flex">
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
        <button class="btn btn-primary my-2 my-sm-0" id="login">login</button>
      </form>
    </div>
  </div>
</nav>
<%--학습 진행도 게이지--%>
<div class="progress">
  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100" style="width: 21%;"></div>
</div>
<%--자바(캐릭터)가 있는 곳--%>
<div class="java" data-bs-toggle="collapse" href="#collapseExample" style="position: absolute; z-index: 5; width: 140px; height: 140px; top:240px"><img src="img/lion640.jpg" class="img-fluid" alt="..."><span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="clickBatge">
    ↙ Click !!!
    <span class="visually-hidden">unread messages</span>
  </span></div>
<%--콜랩스 자바가 문제를 알려주는 영역--%>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    1이는 키가 조금 컸습니다. 하지만 소수점 단위밖에 크질 못해서 보이지 않고 있어요. 1이를 소수점을 나타낼 수 있는 소속으로 바꿔주세요.
  </div>
</div>

<%--    버튼목록 --%>
<div class="buttonContainer">
  <div class="buttons">
    <button type="button" class="btn btn-outline-primary" draggable="true" value="int" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="숫자 모임" data-bs-trigger="hover">int</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true" value="String" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="문자열 모임" data-bs-trigger="hover">String</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="double" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="실수 모임" data-bs-trigger="hover">double</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="short" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="작은 숫자 모임" data-bs-trigger="hover">short</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="char" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="한 글자 모임" data-bs-trigger="hover">char</button>
    <button type="button" class="btn btn-outline-primary" draggable="true" value="byte" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="아주 작은 숫자 모임" data-bs-trigger="hover">byte</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true" value="long" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="아주 큰 숫자 모임" data-bs-trigger="hover">long</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="float" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="f가 붙는 실수 모임" data-bs-trigger="hover">float</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="Boolean" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="진실 혹은 거짓" data-bs-trigger="hover">Boolean</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="while" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="반복" data-bs-trigger="hover">while</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="for" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="조건에 따른 반복" data-bs-trigger="hover">for</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="do while" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="한번은 하는 반복" data-bs-trigger="hover">do while</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="if" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="거짓말 탐지기" data-bs-trigger="hover">if</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="else" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="거짓말 탐지기들이 다 거짓이면 실행" data-bs-trigger="hover">else</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="else if" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="다음 거짓말 탐지기" data-bs-trigger="hover">else if</button>
    <button type="button" class="btn btn-outline-primary" draggable="true" value="break" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="나가기" data-bs-trigger="hover">break</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true" value="continue" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="다시하기" data-bs-trigger="hover">continue</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="return" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="값 주기" data-bs-trigger="hover">return</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="interface" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="설계도 가이드 라인" data-bs-trigger="hover">interface</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="class" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="설계도" data-bs-trigger="hover">class</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="Object" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="모든 모임의 아빠" data-bs-trigger="hover">Object</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="abstract" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="누가 네임펜으로 써둔 설계도" data-bs-trigger="hover">abstract</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="Array" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="모임에 가입한 친구들을 모와두는 곳" data-bs-trigger="hover">Array</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="ArrayList" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="친구들을 모와두는데 더 자유로운 곳" data-bs-trigger="hover">ArrayList</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="Thread" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="실행되는 곳" data-bs-trigger="hover">Thread</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="try" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="오류 탐지기" data-bs-trigger="hover">try</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="catch" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="오류 탐지기가 탐지하면 일하는 곳" data-bs-trigger="hover">catch</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="finally" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="오류 탐지가 전부 끝나면 일하는 곳" data-bs-trigger="hover">finally</button>
    <button type="button" class="btn btn-outline-primary" draggable="true" value="equals" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="친구들이 같은지 확인" data-bs-trigger="hover">equals</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true" value="toString" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="친구의 자기소개서" data-bs-trigger="hover">toString</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="split" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="기준 정해서 분리시키기" data-bs-trigger="hover">split</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="subString" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="친구의 일부분만 잘라내기" data-bs-trigger="hover">subString</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="Math" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="수학 선생" data-bs-trigger="hover">Math</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="Set" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="중복과 순서없이 친구들을 모와둔 곳" data-bs-trigger="hover">Set</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="Map" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="방문을 걸어둔 친구들을 모와둔 곳" data-bs-trigger="hover">Map</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="Generics" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="무엇이든 될 수 있는 친구" data-bs-trigger="hover">Generics</button>
    <button type="button" class="btn btn-outline-primary" draggable="true" value="+" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="더하기" data-bs-trigger="hover">+</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="-" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="빼기" data-bs-trigger="hover">-</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="*" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="곱하기" data-bs-trigger="hover">*</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="/" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="나누기" data-bs-trigger="hover">/</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="%" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="나머지" data-bs-trigger="hover">%</button>
    <button type="button" class="btn btn-outline-primary" draggable="true" value="++" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="친구에게 1더하기" data-bs-trigger="hover">++</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true" value="--" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="친구에게 1빼기" data-bs-trigger="hover">--</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value="=" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="부등호" data-bs-trigger="hover">=</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="+=" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="1더하기" data-bs-trigger="hover">+=</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="-=" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="1빼기" data-bs-trigger="hover">-=</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="&&" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="그리고" data-bs-trigger="hover">&&</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="||" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="또는" data-bs-trigger="hover">||</button>
    <button type="button" class="btn btn-outline-primary" draggable="true" value=">" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="왼쪽이 크다" data-bs-trigger="hover">></button>
    <button type="button" class="btn btn-outline-secondary" draggable="true" value="<" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="오른쪽이 크다" data-bs-trigger="hover"><</button>
    <button type="button" class="btn btn-outline-success" draggable="true" value=">=" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="왼쪽이 크거나 같다" data-bs-trigger="hover">>=</button>
    <button type="button" class="btn btn-outline-danger" draggable="true" value="<=" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="오른쪽이 크거나 같다" data-bs-trigger="hover"><=</button>
    <button type="button" class="btn btn-outline-warning" draggable="true" value="!" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="반대로" data-bs-trigger="hover">!</button>
    <button type="button" class="btn btn-outline-info" draggable="true" value="&" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="&& 보다 빡빡하게 검사하는 곳" data-bs-trigger="hover">&</button>
    <button type="button" class="btn btn-outline-dark" draggable="true" value="|" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content="|| 보다 빡빡하게 검사하는 곳" data-bs-trigger="hover">|</button>
  </div>

</div>

<%-- 사용할 버튼 드래그로 넣는 곳--%>
<%--    임시--%>
<div class="container" id="answerCon">
  <div class="column" id="inButton">
    <div class="list-group-item" draggable="true"><h1>무엇이 들어갈까요</h1>
      <div class="answerDiv" id="step5answerDiv"></div>
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
  <strong>좋아요!</strong> 이제 Step 5예요. 이번 문제도 잘 풀어보아요.
</div>

<button type="button" class="btn btn-primary disabled" id="nextStep" onclick="nextClick()">Next</button>


<script src="script/dragStep.js"></script>

</body>
</html>
