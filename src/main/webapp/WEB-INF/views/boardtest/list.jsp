<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-23
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>board List</title>
</head>
<body>

<h1>BoardList</h1>

<div>
    <table>
        <tr>
            <td>번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>작성시간</td>
        </tr>
        <c:forEach var="board" items="${board}">
        <tr>
            <td>${board.bno}</td>
            <td><a href="/boardtest/read?bno=${board.bno}" target="_blank">${board.title}</a></td>
            <td>${board.writer}</td>
            <td><fmt:formatDate value="${board.reg}" pattern="YY-MM-dd HH:mm"/> </td>
        </tr>
        </c:forEach>
        <button onclick="location.href='/boardtest/write'">글 작성</button>
    </table>
</div>

</body>
</html>
