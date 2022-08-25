<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-25
  Time: 오후 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UploadForm</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div>UploadForm Page</div>

<div>
    <form id="uploadForm" action="uploadPro" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>메세지 : </td>
                <td><input type="text" name="msg" id=""></td>
            </tr>
            <tr>
                <td>파일 업로드 : </td>
                <td><input type="file" name="img" id=""></td>
            </tr>
            <tr>
                <td>
                    <button>제출</button></td>
            </tr>
        </table>

    </form>
</div>

<script !src="">
    $(document).ready(function(){
        let uploadForm = $("#uploadForm");

        $("#uploadForm button").click(function(){
            console.log("click!");
            uploadForm.submit();
        })
    })
</script>

</body>
</html>
