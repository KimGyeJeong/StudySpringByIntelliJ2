<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-19
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signup</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>Signup Page</h1>

<div>
    <form action="/membertest/signuppro" method="post">
        <table>
            <tr>
                <td>ID :</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>비밀번호 :</td>
                <td><input type="password" name="pw" id="pw"></td>
            </tr>
            <tr>
                <td>비밀번호 확인 :</td>
                <td><input type="password" name="pwck" id="pwck"></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    남 <input type="radio" name="gender" value="male" id="" checked>
                    여 <input type="radio" name="gender" value="feale" id="">
                </td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="email" name="email" id=""></td>
            </tr>
            <tr>
                <td colspan="2" class="hereInputTagSubmit"><input type="reset" value="재작성"><input type="button"
                                                                                                  value="취소"
                                                                                                  onclick="window.location='/membertest/main'">
                </td>
            </tr>
        </table>

    </form>
</div>

<script !src="">
    $(document).ready(function () {
        $("#pwck").change(function () {
            let pwVal_signup = $("#pw").val();
            let pwVal_signuptext = $("#pw").text();
            let pwckVal_signup = $("#pwck").val();

            console.log(typeof (pwVal_signup));     //string
            console.log(typeof (pwVal_signuptext)); //string
            console.log(typeof (pwckVal_signup));   //string

            console.log(pwVal_signup);              //1234
            console.log(pwVal_signuptext);          //
            console.log(pwckVal_signup);            //2345

            if (pwVal_signup === pwckVal_signup)
                $(".hereInputTagSubmit").before("<input type='submit' value='회원가입'>");
        })
    })
</script>

</body>
</html>
