<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-19
  Time: 오후 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>

<h1>login Page</h1>

<div>
    <form action="/membertest/login" method="post">
        <table>
            <tr>
                <td>ID : </td>
                <td><input type="text" name="id" id=""> </td>
            </tr>
            <tr>
                <td>PW : </td>
                <td><input type="password" name="pw" id=""></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="log in"><input type="button" value="go main" onclick="window.location='/membertest/main"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
