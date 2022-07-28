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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <title>인덱스</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="">JAVADO</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="/">Learning
                        <span class="visually-hidden">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="main">Training</a>
                </li>

            </ul>
            <form class="d-flex">
                <button class="btn btn-secondary my-2 my-sm-0" id="login">login</button>
            </form>
        </div>
    </div>
</nav>
<div class="java" style="position: absolute; z-index: 5; width: 140px; height: 140px;"><img src="img/lion640.jpg" class="img-fluid" alt="..."></div>
<%--    버튼목록 --%>
<div class="container" id="btContainer">
<div class="buttonContainer">
    <div class="buttons">
        <button type="button" class="btn btn-outline-primary" draggable="true" value="int">int</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="String">String</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="double">double</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="short">short</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="char">char</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="byte">byte</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="long">long</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="float">float</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="Boolean">Boolean</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="while">while</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="for">for</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="do while">do while</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="if">if</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="else">else</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="else if">else if</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="break">break</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="continue">continue</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="return">return</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="interface">interface</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="class">class</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="Object">Object</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="abstract">abstract</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="Array">Array</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="ArrayList">ArrayList</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="Thread">Thread</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="try">try</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="catch">catch</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="finally">finally</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="equals">equals</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="toString">toString</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="split">split</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="subString">subString</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="Math">Math</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="Set">Set</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="Map">Map</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="Generics">Generics</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="+">+</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="-">-</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="*">*</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="/">/</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="%">%</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="++">++</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="--">--</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="=">=</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="+=">+=</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="-=">-=</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="&&">&&</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="||">||</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value=">">></button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="<"><</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value=">=">>=</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="<="><=</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="!">!</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="&">&</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="|">|</button>
    </div>

</div>
</div>
<%-- 사용할 버튼 드래그로 넣는 곳--%>
<%--    임시--%>
<%--<div class="container">--%>
<%--    <div class="column" id="inButton">--%>
<%--        <div class="list-group-item" draggable="true"><h1>무엇이 들어갈까요</h1></div>--%>

<%--    </div>--%>
<%--</div>--%>
<%--    임시--%>




<%--어랏트--%>
<div class="alert alert-dismissible alert-secondary">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <strong>안녕하세요!</strong> 잘 왔어요! 함께 JAVA를 배워봐요.
</div>




<script src="script/login.js"></script>
<script src="script/drag.js"></script>
<script src="script/njoin.js"></script>
</body>
</html>
