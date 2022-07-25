<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.demo2.demo2.domain.UserVO" %>
<%@ page import="com.demo2.demo2.domain.UserVO" %><%--
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
    <link rel="stylesheet" href="css/index.css">
    <title>인덱스</title>
</head>
<body>
    <form>
        <input type="text" id="loginId" placeholder="id">
        <input type="password" id="loginPw" placeholder="pw">
        <input type="button" id="loginBn" value="로그인">
        <input type="button" id="logoutBt" value="로그아웃">
        <input type="button" id="login_" value="n로그인" onclick="location.href='/nlogin'">
        <input type="button" id="join" value="회원가입" onclick="location.href='/join'">
        <input type="button" id="join_" value="n회원가입" onclick="location.href='/njoin'">
        <input type="button" id="leave_" value="n회원탈퇴">
        <input type="button" id="updateUserBn" value="회원정보수정">
    </form>


<%

%>
    <c:choose>
        <c:when  test="${false}">
            <c:url var="main" value="/main"/>
            <c:redirect url="${main}"/>
        </c:when>
        <c:otherwise>

        </c:otherwise>
    </c:choose>

<script src="script/login.js"></script>
<script src="script/njoin.js"></script>
</body>
</html>
