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
    <!-- favicon image -->
    <link rel="shortcut icon" href="img/favicon.png">

    <meta property="og:title" content="JAVADO!">
    <meta property="og:description" content="어린이 자바 학습 사이트입니다. 블록을 이용해서 쉽고 간단하게 자바를 익힐 수 있습니다.">
    <meta property="og:image" content="img/mainimage.png">
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
                    <a class="nav-link" href="main?step=1">Training</a>
                </li>

            </ul>
            <form class="d-flex">

            </form>
        </div>
    </div>
</nav>
<div class="java" style="position: absolute; z-index: 5; width: 15vw; height: 140px;"><img src="img/lion640.jpg" class="img-fluid" alt="..."></div>
<%--    버튼목록 --%>
<div class="container" id="btContainer">
<div class="buttonContainer">
    <div class="buttons">
        <button type="button" class="btn btn-outline-primary" draggable="true" value="int" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">int</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="String" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling2" aria-controls="offcanvasScrolling">String</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="double" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling3" aria-controls="offcanvasScrolling">double</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="short" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling4" aria-controls="offcanvasScrolling">short</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="char" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling5" aria-controls="offcanvasScrolling">char</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="byte" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling6" aria-controls="offcanvasScrolling">byte</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="long" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling7" aria-controls="offcanvasScrolling">long</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="float" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling8" aria-controls="offcanvasScrolling">float</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="Boolean" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling9" aria-controls="offcanvasScrolling">Boolean</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="while" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling10" aria-controls="offcanvasScrolling">while</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="for" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling11" aria-controls="offcanvasScrolling">for</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="do while" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling12" aria-controls="offcanvasScrolling">do while</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="if" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling13" aria-controls="offcanvasScrolling">if</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="else" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling14" aria-controls="offcanvasScrolling">else</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="else if" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling15" aria-controls="offcanvasScrolling">else if</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="break" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling16" aria-controls="offcanvasScrolling">break</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="continue" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling17" aria-controls="offcanvasScrolling">continue</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="return" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling18" aria-controls="offcanvasScrolling">return</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="interface" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling19" aria-controls="offcanvasScrolling">interface</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="class" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling20" aria-controls="offcanvasScrolling">class</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="Object" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling21" aria-controls="offcanvasScrolling">Object</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="abstract" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling22" aria-controls="offcanvasScrolling">abstract</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="Array" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling23" aria-controls="offcanvasScrolling">Array</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="ArrayList" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling24" aria-controls="offcanvasScrolling">ArrayList</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="Thread" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling25" aria-controls="offcanvasScrolling">Thread</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="try" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling26" aria-controls="offcanvasScrolling">try</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="catch" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling27" aria-controls="offcanvasScrolling">catch</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="finally" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling28" aria-controls="offcanvasScrolling">finally</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="equals" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling29" aria-controls="offcanvasScrolling">equals</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="toString" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling30" aria-controls="offcanvasScrolling">toString</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="split" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling31" aria-controls="offcanvasScrolling">split</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="subString" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling32" aria-controls="offcanvasScrolling">subString</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="Math" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling33" aria-controls="offcanvasScrolling">Math</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="Set" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling34" aria-controls="offcanvasScrolling">Set</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="Map" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling35" aria-controls="offcanvasScrolling">Map</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="Generics" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling36" aria-controls="offcanvasScrolling">Generics</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="+" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling37" aria-controls="offcanvasScrolling">+</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="-" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling38" aria-controls="offcanvasScrolling">-</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="*" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling39" aria-controls="offcanvasScrolling">*</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="/" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling40" aria-controls="offcanvasScrolling">/</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="%" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling41" aria-controls="offcanvasScrolling">%</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value="++" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling42" aria-controls="offcanvasScrolling">++</button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="--" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling43" aria-controls="offcanvasScrolling">--</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value="=" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling44" aria-controls="offcanvasScrolling">=</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="+=" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling45" aria-controls="offcanvasScrolling">+=</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="-=" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling46" aria-controls="offcanvasScrolling">-=</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="&&" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling47" aria-controls="offcanvasScrolling">&&</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="||" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling48" aria-controls="offcanvasScrolling">||</button>
        <button type="button" class="btn btn-outline-primary" draggable="true" value=">" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling49" aria-controls="offcanvasScrolling">></button>
        <button type="button" class="btn btn-outline-secondary" draggable="true" value="<" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling50" aria-controls="offcanvasScrolling"><</button>
        <button type="button" class="btn btn-outline-success" draggable="true" value=">=" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling51" aria-controls="offcanvasScrolling">>=</button>
        <button type="button" class="btn btn-outline-danger" draggable="true" value="<=" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling52" aria-controls="offcanvasScrolling"><=</button>
        <button type="button" class="btn btn-outline-warning" draggable="true" value="!" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling53" aria-controls="offcanvasScrolling">!</button>
        <button type="button" class="btn btn-outline-info" draggable="true" value="&" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling54" aria-controls="offcanvasScrolling">&</button>
        <button type="button" class="btn btn-outline-dark" draggable="true" value="|" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling55" aria-controls="offcanvasScrolling">|</button>
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

<%--캔버스--%>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel">int</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>소수 없이 숫자로 이루어진 약 21억까지의 숫자에 붙여줄 수 있는 자료형태예요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Integer.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling2" aria-labelledby="offcanvasScrollingLabel2">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel2">String</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>한 글자나 여러 글자로 이루어진 글자에 붙여줄 수 있는 자료형태예요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/String.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling3" aria-labelledby="offcanvasScrollingLabel3">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel3">double</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>소수점을 가질 수 있는 숫자에 붙여줄 수 있는 자료형태예요. 소수점이 없어도 붙여줄 수 있어요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/lang/Double.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling4" aria-labelledby="offcanvasScrollingLabel4">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel4">Short</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p> 소수점 없이 -32767~32767까지의 숫자에 붙여줄 수 있는 자료형태예요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/lang/Short.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling5" aria-labelledby="offcanvasScrollingLabel5">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel5">char</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>한 글자에 붙여줄 수 있는 자료형태예요. 각 글자들은 숫자코드를 가지고 있어요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/lang/Character.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling6" aria-labelledby="offcanvasScrollingLabel6">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel6">Byte</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>-128~127까지의 숫자에 붙여줄 수 있는 자료형태예요. 아주 작은 단위의 숫자들에게 붙여줄 수 있어요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/lang/Byte.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling7" aria-labelledby="offcanvasScrollingLabel7">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel7">long</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>9에 0이 18개 붙은 수까지의 숫자에 붙여줄 수 있는 자료형태예요. 이걸 쓰면 넘치는 일은 없어요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Long.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling8" aria-labelledby="offcanvasScrollingLabel8">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel8">float</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>소수점을 가진 숫자까지 붙여줄 수 있는 자료형태예요. double과 다른 점은 들어갈 수 있는 숫자의 크기가 작아요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Float.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling9" aria-labelledby="offcanvasScrollingLabel9">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel9">boolean</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>진실인지 거짓인지 true,false 값을 가진 것들에 붙여줄 수 있는 자료형이예요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Boolean.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling10" aria-labelledby="offcanvasScrollingLabel10">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel10">while</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>조건을 받아서 조건이 진실이면 가지고 있는 것들을 반복해주는 기능이예요. () 안에 조건을 받아요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling11" aria-labelledby="offcanvasScrollingLabel11">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel11">for</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>조건에 따라 반복해주는 기능이예요. while은 몇번 반복해야할지 모를 때 주로 사용하고 for은 몇번 반복해야할 지 알 때 사용하면 좋아요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/for.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling12" aria-labelledby="offcanvasScrollingLabel12">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel12">do while</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>while은 조건이 진실이여야만 실행되어 반복하지만, do while은 조건이 거짓이여도 무조건 한번은 실행되요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling13" aria-labelledby="offcanvasScrollingLabel13">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel13">if</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>조건이 진실이면 자신이 가진 것들을 실행해줘요. 거짓이면 실행하지 않아요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling14" aria-labelledby="offcanvasScrollingLabel14">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel14">else</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>if와 if에 달려 있는 else if가 전부 실행하지 못했다면 실행되요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling15" aria-labelledby="offcanvasScrollingLabel15">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel15">else if</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>if가 실행되지 않았다면 else if에 있는 조건이 진실인지 확인하게 되요. 진실이면 else if가 가진 것들을 실행해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling16" aria-labelledby="offcanvasScrollingLabel16">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel16">break</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>while과 같이 반복해주는 기능에 넣으면 반복을 멈추게 되요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/branch.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling17" aria-labelledby="offcanvasScrollingLabel17">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel17">continue</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>반복해주는 기능에 들어가면 즉시 반복의 시작점으로 돌아가요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/branch.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling18" aria-labelledby="offcanvasScrollingLabel18">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel18">return</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>return에 붙여놓은 값을 반환해줘요. break처럼 반복하다가 return을 만나면 그 즉시 반복을 멈춰요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/branch.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling19" aria-labelledby="offcanvasScrollingLabel19">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel19">interface</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>설계도를 만들 때 설계도에 무조건 넣어야할 것을 알려주는 기능을 해요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/IandI/createinterface.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling20" aria-labelledby="offcanvasScrollingLabel20">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel20">class</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>무언가를 만들기 위한 설계도예요.
            <br><a href="https://docs.oracle.com/javase/tutorial/reflect/class/index.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling21" aria-labelledby="offcanvasScrollingLabel21">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel21">Object</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>모든 자료형태의 부모가 되는 자료형태예요. 모든 자료형태는 여기에 속해요. 모든 숫자나 글자는 이 자료형이 될 수 있어요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling22" aria-labelledby="offcanvasScrollingLabel22">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel22">abstract</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>누가 설계도에 네임팬으로 써두고 간 부분이예요. abstract가 붙은 부분은 설계도를 만들 때 반드시 완성을 시켜야해요.ㅣ
            <br><a href="https://docs.oracle.com/javase/tutorial/java/IandI/abstract.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling23" aria-labelledby="offcanvasScrollingLabel23">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel23">Array</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>같은 자료형태의 값들을 모와뒀다가 불러올 수 있게 해줘요. 옷을 보관해뒀다가 꺼내는 장롱과 비슷해요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/util/Arrays.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling24" aria-labelledby="offcanvasScrollingLabel24">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel24">ArrayList</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>Array와 같아요. 하지만 Arraylist는 순서없이 막 넣어져 있어요. 그래서 넣을 때 정리하지 않아도 되서 간편해요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/util/ArrayList.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling25" aria-labelledby="offcanvasScrollingLabel25">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel25">Thread</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>프로그램을 실행하면 생성되는 거예요. 인터넷 창을 한개 키면 1개 생성되고 2개 키면 2개가 생성되는 거예요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Thread.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling26" aria-labelledby="offcanvasScrollingLabel26">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel26">try</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>오류가 있는지 체크해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/essential/exceptions/try.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling27" aria-labelledby="offcanvasScrollingLabel27">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel27">catch</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>try에서 오류가 있으면 잡아내줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/essential/exceptions/catch.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling28" aria-labelledby="offcanvasScrollingLabel28">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel28">finally</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>try와 catch가 실행되고 나면 마지막에 실행되요.
            <br><a href="https://docs.oracle.com/javase/tutorial/essential/exceptions/finally.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling29" aria-labelledby="offcanvasScrollingLabel29">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel29">equals</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>두 개의 값이 서로 같은지 확인해줘요. =과 달리 글자도 체크해줘요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling30" aria-labelledby="offcanvasScrollingLabel30">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel30">toString</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>자료가 가진 정보를 알려줘요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling31" aria-labelledby="offcanvasScrollingLabel31">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel31">split</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>선택한 문자를 기준으로 문자를 잘라줘요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/String.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling32" aria-labelledby="offcanvasScrollingLabel32">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel32">subString</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>선택한 영역의 문자들을 잘라내줘요. 원하는 문자를 꺼낼 수 있어요.
            <br><a href="https://docs.oracle.com/javase/7/docs/api/java/lang/String.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling33" aria-labelledby="offcanvasScrollingLabel33">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel33">Math</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>수학적인 기능들을 할 때 사용되요. 우리 대신 수학을 풀어줘요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/lang/Math.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling34" aria-labelledby="offcanvasScrollingLabel34">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel34">Set</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>Array와 비슷해요. 하지만 set은 중복 값을 넣을 수 없어요. 그리고 순서도 없어요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/util/Set.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling35" aria-labelledby="offcanvasScrollingLabel35">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel35">Map</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>Set이랑 비슷해요. 자료들을 모와두고 꺼낼 수 있어요. 하지만 꺼낼 때 각 자료들이 들어간 방의 키를 알아야 해요.
            <br><a href="https://docs.oracle.com/javase/8/docs/api/java/util/Map.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling36" aria-labelledby="offcanvasScrollingLabel36">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel36">Generics</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>물처럼 어떤 자료 형태로도 변할 수 있게 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/generics/index.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling37" aria-labelledby="offcanvasScrollingLabel37">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel37">+</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>더하기 기능을 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling38" aria-labelledby="offcanvasScrollingLabel38">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel38">-</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>빼기 기능을 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling39" aria-labelledby="offcanvasScrollingLabel39">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel39">*</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>곱하기 기능을 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling40" aria-labelledby="offcanvasScrollingLabel40">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel40">*</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>나누기 기능을 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling41" aria-labelledby="offcanvasScrollingLabel41">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel41">%</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>나누고 난 나머지를 구해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling42" aria-labelledby="offcanvasScrollingLabel42">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel42">++</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>코드를 읽고나면 1을 더해줘요. 앞에 붙이면 뒤에 있는 값이 즉시 +1되요. 뒤에 붙이면 원래 값이 먼저 읽히고나서 값이 +1되요. 숫자 자료형태에만 붙일 수 있어요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling43" aria-labelledby="offcanvasScrollingLabel43">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel43">--</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>코드를 읽고나면 1을 빼줘요. 앞에 붙이면 뒤에 있는 값이 즉시 -1되요. 뒤에 붙이면 원래 값이 먼저 읽히고나서 값이 -1되요. 숫자 자료형태에만 붙일 수 있어요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling44" aria-labelledby="offcanvasScrollingLabel44">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel44">=</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>왼쪽에 있는 것은 = 오른쪽에 있는 것이다. 라고 명령하는 거예요. '김 = 1'이라고 하면 김은 이제부터 1의 값을 가지는 거예요.  숫자의 부등호와는 달라요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling45" aria-labelledby="offcanvasScrollingLabel45">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel45">+=</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>오른쪽에 있는 값을 왼쪽에 더해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling46" aria-labelledby="offcanvasScrollingLabel46">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel46">-=</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>오른쪽에 있는 값을 왼쪽에 빼줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling47" aria-labelledby="offcanvasScrollingLabel47">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel47">&&</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>그리고를 뜻해요. 조건을 달아줄 때 사용되요. 여러개의 조건이 진실일 때 실행되게 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling48" aria-labelledby="offcanvasScrollingLabel48">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel48">||</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>또는을 뜻해요. 여러개의 조건 중 한개만 진실이여도 실행되게 해줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling49" aria-labelledby="offcanvasScrollingLabel49">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel49">> </h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>왼쪽이 오른쪽보다 더 큰지 확인해서 더 크면 진실이라고 알려줘요. 작으면 거짓이라고 알려줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling50" aria-labelledby="offcanvasScrollingLabel50">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel50">< </h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>오른쪽이 왼쪽보다 더 큰지 확인해서 더 크면 진실이라고 알려줘요. 작으면 거짓이라고 알려줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling51" aria-labelledby="offcanvasScrollingLabel51">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel51">>= </h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>왼쪽이 오른쪽보다 더 크거나 같은지 확인해서 더 크거나 같으면 진실이라고 알려줘요. 작으면 거짓이라고 알려줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling52" aria-labelledby="offcanvasScrollingLabel52">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel52"><= </h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>오른쪽이 왼쪽보다 더 크거나 같은지 확인해서 더 크거나 같으면 진실이라고 알려줘요. 작으면 거짓이라고 알려줘요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling53" aria-labelledby="offcanvasScrollingLabel53">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel53">!</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>이걸 조건에 붙여주면 조건이 진실일 때 거짓이라고 해요. 거짓이면 진실이라고 해요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling54" aria-labelledby="offcanvasScrollingLabel54">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel54">&</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>앞에 있는 조건이 거짓이더라도 뒤에 조건들을 검사해요. &&보다 더 빡빡하게 검사해요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling55" aria-labelledby="offcanvasScrollingLabel55">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasScrollingLabel55">|</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <p>앞에 있는 조건이 거짓이더라도 뒤에 있는 조건을 검사해요. ||보다 더 빡빡하게 검사해요.
            <br><a href="https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html">상세보기</a></p>
    </div>
    <div style="position: absolute; z-index: 5; width: 300px; height: 300px;" class="bear"><img src="img/bear640.png" class="img-fluid" alt="..."></div>
</div>

<%--캔버스--%>

<%--어랏트--%>
<div class="alert alert-dismissible alert-secondary">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <strong>안녕하세요!</strong> 잘 왔어요! 함께 JAVA를 배워봐요.
</div>

<%--푸터--%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary navbar-fixed-bottom" id="footerIndex">
    <div class="container-fluid">
        <a class="navbar-brand" href="/" style="color: cadetblue;">JAVADO</a>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <br>
            <span class="footerText">JAVADO |만든 이: 권도훈 |e-mail: ehgns0125@naver.com</span>
        </div>
    </div>
</nav>
<%--푸터--%>


<script src="script/drag.js"></script>

</body>
</html>
