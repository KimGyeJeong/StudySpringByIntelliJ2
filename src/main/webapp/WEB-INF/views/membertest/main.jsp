<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-19
  Time: 오후 4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>main</title>
</head>
<body>

<h1>Main Page</h1>

<div>
    MAIN PAGE ...

    <div>
    <c:if test="${sessionScope.memId != null}">
        <c:out value="memId : ${sessionScope.memId}"/>
        <div>
            <table>
                <tr>
                    <td><a href="/membertest/myinfo">내 정보보기</a></td>
                </tr>
                <tr>
                    <td><a href="/membertest/logout">로그아웃</a></td>
                </tr>
                <tr>
                    <td><a href="/membertest/delete">회원 탈퇴</a></td>
                </tr>
            </table>
        </div>
    </c:if>
    <c:if test="${sessionScope.memId == null}">
        <div>
            <table>
                <tr>
                    <td><a href="/membertest/signup">회원가입</a></td>
                </tr>
                <tr>
                    <td><a href="/membertest/login">로그인</a></td>
                </tr>
            </table>
        </div>
    </c:if>
    </div>



</div>

</body>
</html>
