<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-23
  Time: 오후 6:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>read</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h1>Read Page</h1>

<div>
    <form action="/boardtest/modify" method="get">
        <input type="hidden" name="bno" value="${board.bno}">
        <table>
            <tr>
                <td>작성자</td>
                <td>${board.writer}</td>
            </tr>
            <tr>
                <td>제목</td>
                <td>${board.title}</td>
            </tr>
            <tr>
                <td>글 내용</td>
                <td><textarea name="" id="" cols="30" rows="10">${board.content}</textarea></td>
            </tr>
            <tr>
                <td>작성시간</td>
                <td><fmt:formatDate value="${board.reg}" pattern="YY-MM-dd HH:mm"/></td>
                <td><fmt:formatDate value="${board.reg}" pattern="YY/MM/dd HH:mm"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="수정하기"></td>
            </tr>
        </table>
    </form>
</div>

<div>
    ${board.bno} :정상출력. 글 고유번호
</div>

<!--댓글 div 시작 -->
<div>
    <!-- 작성된 댓글 -->
    <div class="reply_container">
        <div>
            replyer :
        </div>
        <div>
            reply :
        </div>
        <div>
            reply_reg :
        </div>
    </div>
    <!-- 댓글 작성하기 -->
    <div>
        <div>
            <textarea name="reply" id="reply" placeholder="댓글작성" cols="30" rows="10"></textarea>
        </div>
        <div>
            <input type="text" name="replyer" id="replyer" placeholder="작성자">
        </div>
        <div>
            <button type="button" id="saveReplyBtn" >댓글 저장</button>
        </div>
    </div>
</div>
<!--댓글 div 끝 -->
<script !src="">
    $(document).ready(function(){
        let bnoVal = "${board.bno}";
        console.log(bnoVal);

        //댓글 가져오기
        showReplyList();

        function showReplyList(){

            console.log("Working!");

            $.ajax({
                type: "GET",
                url: "/reply/list/" + bnoVal + ".json",
                data : {bno:bnoVal},
                success : function (result){
                    console.log("success!!");
                    console.log(result);
                },
                error : function (e){
                    console.log(e);
                }
            })
        }
    })
</script>

</body>
</html>
