<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-23
  Time: 오후 5:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>write</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h1>WritePage</h1>

<div>
  <form id="boardWriteForm" action="/boardtest/write" method="post">
      <table>
          <tr>
              <td>작성자</td>
              <td><input type="text" name="writer" id="writer"></td>
          </tr>
          <tr>
              <td>제목</td>
              <td><input type="text" name="title" id="title"></td>
          </tr>
          <tr>
              <td>내용</td>
              <td><textarea name="content" id="content" cols="30" rows="10"></textarea></td>
          </tr>
          <tr>
              <td><button type="submit" data-where="write">작성하기</button></td>
              <td><button type="submit" data-where="list">글 목록보기</button></td>
              <td><button type="submit" data-where="main">메인으로가기</button></td>
          </tr>
      </table>


  </form>
</div>

<script !src="">
    $(document).ready(function(){
        let formObject = $("#boardWriteForm");

        // $("button").on("click",function (e){
        //     e.preventDefault()
        // })
        $("button").click(function(e){
            //정상 작동 코드
            e.preventDefault();
            console.log("Success");

            let where_data = $(this).data("where");
            console.log(where_data);

            if(where_data == 'list'){
                formObject.attr("action","/boardtest/list");
                formObject.attr("method","get");
            }else if(where_data =='main'){
                formObject.attr("action","/membertest/main");
                formObject.attr("method","get");
            }
            formObject.submit();
        });
    })
</script>

</body>
</html>
