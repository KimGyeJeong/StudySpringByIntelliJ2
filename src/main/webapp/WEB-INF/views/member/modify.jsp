<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-30
  Time: 오후 7:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>modify</title>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<h1>modify Page</h1>

<div>
    <form action="/member/modify" method="post">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}">
        <table>
            <tr>
                <td>id</td>
                <td>${member.id}</td>
            </tr>
            <tr>
                <td>현재 비밀번호</td>
                <td><input type="text" name="pw" id="" value="${member.pw}"></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="pwck" id=""></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" id="" value="${member.name}"></td>
            </tr>
            <tr>
                <td>이메일주소</td>
                <td><input type="email" name="email" id="" value="${member.email}"></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <c:if test="${member.gender=='male'}">남자</c:if>
                    <c:if test="${member.gender=='female'}">여자</c:if>
                </td>
            </tr>
            <tr>
                <td>가입날짜</td>
                <td>${member.reg}</td>
            </tr>
            <tr>
                <td>권한</td>
                <td>${member.authList}</td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="수정하기">
                    <input type="reset" value="초기화">
                    <input type="button" value="메인으로 돌아가기" class="goMain">
                </td>
            </tr>
        </table>
    </form>
</div>

<script !src="">
    $(document).ready(function () {
        $(".goMain").click(function () {
            alert("메인으로 돌아갑니다");
            window.location = '/common/main';
        })
    })
</script>
</body>
</html>
