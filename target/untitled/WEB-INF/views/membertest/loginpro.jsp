<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-19
  Time: 오후 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loginpro</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>loginpro</h1>

<div>
    id : ${member.id} <br>
    pw : ${member.pw } <br>
    <br>
    result : ${result} <br>
    <br>

</div>

<button id="clickButtonforloginAgain">다시 로그인하기</button>

<script>
    $(document).ready(function(){
        $("#clickButtonforloginAgain").click(function(){
           if( confirm("다시 로그인하시겠습니까?")){
               //yes
               window.location="/membertest/login";
           }else{
               //no
               window.location.reload();
           }

        })
    })
</script>
</body>
</html>
