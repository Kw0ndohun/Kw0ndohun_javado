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
<% int step=Integer.parseInt(request.getParameter("step"));%>
<%--헤더위치--%>
<div id="header">

</div>
<%--학습 진행도 게이지--%>
<div class="progress">
  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100" style="width:<%=(step-1)*2%>%"></div>
</div>


<%--    버튼목록 --%>
<div class="buttonContainer">
  <div class="buttons">

  </div>

</div>

<%-- 사용할 버튼 드래그로 넣는 곳--%>
<%--    임시--%>
<div class="container" id="answerCon">
  <div class="column" id="inButton">
    <div class="list-group-item" draggable="true"><h1>무엇이 들어갈까요</h1>
      <div class="container" id="inButtonBox">
        <div class="questionDiv4" id="m14Question4">15</div>
        <div class="answerDiv" id="step<%=step%>answerDiv"></div>
        <div class="questionDiv2" id="m14Question2">하나2</div>
      </div>
    </div>

  </div>
</div>
<%--    임시--%>


<%--자바(캐릭터)가 있는 곳--%>
<div class="javaLocation"></div>

<%--실행화면--%>
<div class="container" id="conScreen">
  <div class="screenContainer" >

  </div>
</div>




<%--푸터--%>
<div id="footer">

</div>
<%--푸터--%>

<button type="button" class="btn btn-primary disabled" id="nextStep" onclick="nextClick()">Next</button>


<script src="script/dragStep.js"></script>

</body>
</html>
