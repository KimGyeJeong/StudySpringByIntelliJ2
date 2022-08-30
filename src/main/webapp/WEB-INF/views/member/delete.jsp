<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-30
  Time: 오후 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">

</head>
<body>
<h1>delete Page</h1>

<div>
  <form action="/member/delete" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}">
    <table>
      <tr>
        <td>탈퇴를 원하시면 비밀번호를 입력하세요 <br /> <input type="password"
                                               name="pw" />
        </td>
      </tr>
      <tr>
        <td><input type="submit" value="탈퇴" /> <input type="button"
                                                      value="취소" onclick="window.location='/member/mypage'" /></td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>
