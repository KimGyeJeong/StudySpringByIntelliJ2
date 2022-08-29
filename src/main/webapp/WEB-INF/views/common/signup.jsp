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
    <title>signup</title>
  <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>signupPage</h1>

<div id="signupHere">
  <form action="/common/signup" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <table>
      <tr>
        <td>권한</td>
        <td>
          <input type="radio" name="au" value="member" checked="checked"/>일반회원
          <input type="radio" name="au" value="admin" />관리자
        </td>
      </tr>
      <tr>
        <td>아이디 *</td>
        <td><input type="text" name="id" id="id" /></td>
      </tr>
      <tr>
        <td>아이디 사용가능 여부</td>
        <td><input type="text" id="checkResult" disabled="disabled" /></td>
      </tr>
      <tr>
        <td>비밀번호 *</td>
        <td><input type="password" name="pw" /></td>
      </tr>
      <tr>
        <td>비밀번호 확인 *</td>
        <td><input type="password" name="pwch" /></td>
      </tr>
      <tr>
        <td>이름 *</td>
        <td><input type="text" name="name" /></td>
      </tr>
      <tr>
        <td>성별</td>
        <td>남 <input type="radio" name="gender" value="male" checked />
          여 <input type="radio" name="gender" value="female" />
        </td>
      </tr>
      <tr>
        <td>email</td>
        <td><input type="text" name="email" /></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="회원 가입" /> <input
                type="reset" value="재작성" /> <input type="button" value="취소"
                                                   onclick="window.location='/common/main'" /></td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>
