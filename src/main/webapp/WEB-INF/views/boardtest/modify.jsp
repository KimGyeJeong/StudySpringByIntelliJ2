<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-23
  Time: 오후 7:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>modify</title>
</head>
<body>

<h1>Modify Page</h1>

<div>
    <form action="/boardtest/modify" method="post">
        <table>
            <tr><input type="hidden" name="bno" value="${board.bno}">
                <td>작성자</td>
                <td>${board.writer}</td>
                <input type="hidden" name="writer" value="${board.writer}">
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text" name="title" id="" value="${board.title}"></td>
            </tr>
            <tr>
                <td>글 내용</td>
                <td><textarea name="content" id="" cols="30" rows="10">${board.content}</textarea></td>
            </tr>
            <tr>
                <td>작성시간</td>
                <td><fmt:formatDate value="${board.reg}" pattern="YY-MM-dd HH:mm"/></td>
                <td><fmt:formatDate value="${board.reg}" pattern="YY/MM/dd HH:mm"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="수정하기"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
