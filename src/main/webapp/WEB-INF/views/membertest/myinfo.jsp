<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-20
  Time: 오후 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>myinfo</title>
</head>
<body>

<div>
    <form action="/membertest/updatemember" method="post">
        <table>
            <tr>
                <td>ID</td>
                <td>${member.id}</td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="text" name="pw" id="" value="${member.pw}"></td>
            </tr>
            <tr>
                <td>비밀번호확인</td>
                <td><input type="password" name="pwchange" id=""></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" id="" value="${member.name}"></td>
            </tr>
            <tr>
                <td>성별</td>
                <c:if test="${member.gender == 'male'}">
                    <td>남자</td>
                </c:if>
                <c:if test="${member.gender == 'female'}">
                    <td>여자</td>
                </c:if>
                <input type="hidden" name="gender" value="${member.gender}">
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="email" name="email" id="" value="${member.email}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="수정"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
