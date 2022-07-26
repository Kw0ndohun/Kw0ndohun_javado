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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
  <link rel="stylesheet" href="css/main.css">
  <title>메인</title>
</head>
<body>
<h1>JAVADO</h1>
<%--    버튼목록 --%>
<input type="button" id="learning" value="learning" onclick="location.href='/'">
<div class="container2">
  <div class="column2">1
    <button type="button" class="btn btn-outline-primary" draggable="true">Int</button>
    <button type="button" class="btn btn-outline-secondary" draggable="true">String</button>
    <button type="button" class="btn btn-outline-success" draggable="true">while</button>
    <button type="button" class="btn btn-outline-danger" draggable="true">for</button>
    <button type="button" class="btn btn-outline-warning" draggable="true">dd</button>
    <button type="button" class="btn btn-outline-info" draggable="true">Info</button>
    <button type="button" class="btn btn-outline-light" draggable="true">Light</button>
    <button type="button" class="btn btn-outline-dark" draggable="true">Dark</button>
  </div>

</div>

<%-- 사용할 버튼 드래그로 넣는 곳--%>
<%--    임시--%>
<div class="container">
  <div class="column" id="inButton">
    <div class="list-group-item" draggable="true"><h1>이게 뭐야?</h1></div>

  </div>
</div>
<%--    임시--%>
  <div class="container" >
    <div class="column" id="screen">


    </div>
  </div>



<script src="script/drag.js"></script>

</body>
</html>
