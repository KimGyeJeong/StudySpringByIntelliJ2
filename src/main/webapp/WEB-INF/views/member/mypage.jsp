<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-30
  Time: 오후 7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mypage</title>
  <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<h1>Mypage</h1>

<div>
  <table>
    <tr>
      <td><a href="/member/modify">회원정보수정</a></td>
    </tr>
    <tr>
      <td><a href="/member/delete">회원탈퇴</a></td>
    </tr>
    <tr>
      <td>
        <button class="goMain">Go main</button></td>
    </tr>
  </table>
</div>

<script !src="">
  $(document).ready(function(){
    $(".goMain").click(function(){
      alert("click!");
      console.log("click!");
      window.location='/common/main';
    })
  })
</script>

</body>
</html>
