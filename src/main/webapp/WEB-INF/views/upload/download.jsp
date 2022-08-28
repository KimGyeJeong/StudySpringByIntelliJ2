<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-25
  Time: 오후 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>download</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<h1>download</h1>

<div>
    <form id="downloadForm" action="download" method="post">
        <button>다운로드1</button>
    </form>
</div>

<div>
    <h4>db값들 가져오기</h4>
</div>

<script !src="">
  $(document).ready(function(){
    let downloadForm = $("#downloadForm");

    $("downloadForm button").click(function(){
      console.log("downloadForm click!");
      downloadForm.submit();
    })

  })

</script>

</body>
</html>
