<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-07-22
  Time: 오전 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <title>인덱스</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">JAVADO</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Learning
                        <span class="visually-hidden">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Training</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                </li>
            </ul>
            <form class="d-flex">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">login</button>
            </form>
        </div>
    </div>
</nav>
    <form>
        <input type="button" id="logoutBt" value="로그아웃">
        <input type="button" id="login_" value="n로그인" onclick="location.href='/nlogin'">
        <input type="button" id="join_" value="n회원가입" onclick="location.href='/njoin'">
        <input type="button" id="Training" value="Training" onclick="location.href='/main'">
        <input type="button" id="updateUserBn" value="회원정보수정">
    </form>
<%--    버튼목록 --%>

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
        <div class="column">
            <div class="list-group-item" draggable="true"><h1>이게 뭐야?</h1></div>

        </div>
        <div class="column">
            <h1>2</h1>
        </div>
        <div class="column">
            <h1>3</h1>
        </div>
    </div>
<%--    임시--%>



<script src="script/login.js"></script>
<script src="script/drag.js"></script>
<script src="script/njoin.js"></script>
</body>
</html>
