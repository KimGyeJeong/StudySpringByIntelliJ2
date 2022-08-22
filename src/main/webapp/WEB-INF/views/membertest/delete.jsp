<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-22
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<h1 class="deletePage">delete Page</h1>

<div>
    id : ${sessionScope.memId}
</div>

<div>
    <form action="/membertest/delete" method="post">
        <table>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="pwck" id="pwck"></td>
                <td><p id="pwckp"></p></td>
            </tr>
        </table>
    </form>
</div>

<script !src="">
    $(document).ready(function(){
        $("#pwck").change(function(){
            let pwVal = $("#pwck").val();

            $.ajax({
                type : "post",
                url : "/membertest/pwckForDeleteMember",
                data : {pw : pwVal},

                success : function (result){
                    $("#pwckp").text(result);   //p는 text 태그
                    //console.log(typeof($("pwckp").val()));    //undefined
                    console.log("DELETE : ",typeof("Delete"));  //string
                    console.log(typeof($("pwckp").text()));     //string
                    console.log($("#pwckp").val());             //
                    console.log($("#pwckp").text());            //Delete

                    let temp = $("#pwckp").text();
                    console.log("temp : " , temp);
                    console.log("typeof(temp) : " , typeof(temp));

                    if(temp === 'Delete') {
                        $("#pwckp").append("<input type='submit' value='delete' >")
                    }
                },
                error : function(e){
                    console.log(e);
                    console.log("ERROR ajax")
                }
            })
        })
    })
</script>

</body>
</html>
