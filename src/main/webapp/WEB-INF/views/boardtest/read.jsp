<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-23
  Time: 오후 6:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>read</title>
</head>
<body>

<h1>Read Page</h1>

<div>
    <form action="/boardtest/modify" method="get">
        <input type="hidden" name="bno" value="${board.bno}">
        <table>
            <tr>
                <td>작성자</td>
                <td>${board.writer}</td>
            </tr>
            <tr>
                <td>제목</td>
                <td>${board.title}</td>
            </tr>
            <tr>
                <td>글 내용</td>
                <td><textarea name="" id="" cols="30" rows="10">${board.content}</textarea></td>
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

<div>
    ${board.bno} :정상출력
</div>

</body>
</html>
