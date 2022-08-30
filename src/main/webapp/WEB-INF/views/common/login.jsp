<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-29
  Time: 오후 8:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h1>login Page</h1>

<form action="/login" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="username" id=""></td>
        </tr>
        <tr>
            <td>PW</td>
            <td><input type="password" name="password" id=""></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="remember-me" id="">Remember me</td>
        </tr>
        <tr>
            <td><input type="submit" value="SignIn"><input type="button" value="SignUp" onclick="window.location='/common/signup'"><input
                    type="button" value="GoMain" onclick="window.location='/common/main"></td>
        </tr>
    </table>

</form>

</body>
</html>
