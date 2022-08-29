<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-29
  Time: 오후 7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>main</title>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<h1>main page</h1>

<div>
    <%-- 시큐어리이 태그 사용하여 로그인, 로그아웃 확인 --%>
    <sec:authorize access="isAnonymous()">
        <table>
            <tr>
                <td><button onclick="window.location='/common/login'">로그인</button></td>
            </tr>
            <tr>
                <td><button onclick="window.location='/common/signup'">회원가입</button></td>
            </tr>
            <tr>
                <td><button onclick="window.location='/boardtest/list'">게시판</button></td>
            </tr>
        </table>
    </sec:authorize>

    <%-- 시큐어리티 태그 사용. 로그인 상태 --%>
    <sec:authorize access="isAuthenticated()">
        <table>
            <tr>
                <td><button onclick="window.location='/member/logout'">로그아웃</button></td>
            </tr>
            <tr>
                <td><button onclick="window.location='/member/mypage'">마이페이지</button></td>
            </tr>
            <tr>
                <td><button onclick="window.location='/board/list'">게시판</button></td>
            </tr>
        </table>
    </sec:authorize>
    <br /> <br />
    <div align="center">
        <img src="/resources/img/고양이.jpg" width="600" />
    </div>
    <br /> <br />

</div>

</body>
</html>
