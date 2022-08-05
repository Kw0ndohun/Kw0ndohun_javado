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
  <script src="https://kit.fontawesome.com/571f4c4aeb.js" crossorigin="anonymous"></script>
  <title>마이페이지</title>
</head>
<body>
<%--헤더위치--%>
<div id="header">
</div>

<table class="table table-hover">
  <thead>
  <tr>
    <th scope="col">문제번호</th>
    <th scope="col">코멘트</th>
    <th scope="col">클리어!</th>
  </tr>
  </thead>
  <tbody id="clearList">
  </tbody>
</table>



<%--푸터--%>
<div id="footer">
</div>
<%--푸터--%>
<script src="script/crud.js"></script>

</body>
</html>
