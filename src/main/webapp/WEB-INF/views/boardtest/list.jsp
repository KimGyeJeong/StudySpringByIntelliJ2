<%--
  Created by IntelliJ IDEA.
  User: pmwkd
  Date: 2022-08-23
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>board List</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<h1>BoardList</h1>

<div>
    <table>
        <tr>
            <td>번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>작성시간</td>
        </tr>
        <c:forEach var="board" items="${board}">
        <tr>
            <td>${board.bno}</td>
            <td><a class="move" href="${board.bno}" target="_blank">${board.title}</a></td>
            <td>${board.writer}</td>
            <td><fmt:formatDate value="${board.reg}" pattern="YY-MM-dd HH:mm"/> </td>
        </tr>
        </c:forEach>
        <button id="writeBtn">글 작성</button>
    </table>
    <form action="/boardtest/read" method="get">
        <input type="hidden" name="pageNum" value="">
        <input type="hidden" name="listQty" value="">

    </form>
</div>
<!-- 버튼 추가 -->
<div>
    <c:if test="${pager.prev}">
        <a href="${pager.startPage-1}">Previous</a>
    </c:if>

    <c:forEach var="num" begin="${pager.startPage}" end="${pager.endPage}" step="1">
        <a  href="${num}">${num}</a>
    </c:forEach>

    <c:if test="${pager.next}">
        <a href="${pager.endPage+1}">Next</a>
    </c:if>

    <form id="pagingForm" action="/boardtest/list">
        <input type="hidden" name="pageNum" value="${pager.cri.pageNum}">
        <input type="hidden" name="listQty" value="${pager.cri.listQty}">
    </form>

</div>

<div>
    여기는요! ${pager}<br>
    ${pager.next} ${pager.prev} ${pager.startPage} ${pager.endPage}
</div>

<script !src="">
    $(document).ready(function (){

        //작성하기 버튼 누르면 이동
        $("#writeBtn").click(function (){
            self.location="/boardtest/write";
        });

        //글 누르면 이동시키기
        let pagingForm = $("#pagingForm");

        $(".move").click(function(e){
            e.preventDefault();

            pagingForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'/>");
            pagingForm.attr("action","/boardtest/read");

            pagingForm.submit();
        })
    })

</script>

</body>
</html>
